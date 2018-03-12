import java.util.*;
import java.util.regex.Pattern;
import java.io.*;
import javax.xml.bind.DatatypeConverter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.*;
import java.lang.StringBuilder;
/*
 * This program has as reads a file, whose name is hardcoded in it. The file
 * is a .asm / assembly file hence, it is in text format.
 * For every block of code, it inserts jmps and verification code (if asked).
 * Also,it inserts nop instructions (which will be replaced with canaries,keyshares and macs) between
 * instructions. It uses fixed-size code blocks, so it inserts padded nops too.
 * To handle the jumps over the instructions, we add labels.
 */
/*Policy of splitting*/
/*
We try to split when the secure CPU splits.
    -3 worlds: No MACs, Ignore MACs, verify everything. Code that verifies is only inserted in the last world.
    -After labels, after calls, before jumps to registers, after function starts AND at the start of each block-> We insert verification procedure, which does nothing if the block is found in the cache.
        If it is not found, it increases the verification counter.
 */

 /*Here's the structure of a block*/
 /* <useful_bytes>  <--- in here we might have verification calls interleaved, 7 bytes for the 3 commands needed for each of them
    <jmp to next block>  (5 bytes)
    <canaries>  (typically 3 bytes)
    <number of actual bytes in the block, all counted (useful,verifications,final jmp)>    (typically 2 bytes)
    <number of padded nops>  (typically 2 bytes)
    <padded nops> (so as the number of the ACTUAL useful bytes [that is, exclude verifications] + the padded nops to be fixed size)
    <keyshares>
    <mac>
 */

public class Secure_Assembly_v2 {
	
	private static ArrayList<String> hashmap_of_assemby_sizes;
	static int address_of_code_that_denotes_next_cpu_block_change=0; //has the (relative to the first block of code) address of the actual code. Is added to a list when an (unsplit) block would change 
	static int num_of_bytes_in_blocks_as_calced_by_cpu=0;
	static ArrayList<Integer> list_of_addresses_that_denote_next_cpu_block_change=new ArrayList<Integer>();
	static int overhead_for_verif=7;
	static int size_of_jmp_command=5;
	static int world_in_which_we_are=3; //1->No MACs no verification. 2-> Ignore MACs no verification, 3-> everything calculated world . 
										//NOPs are padded in ALL worlds.
	static int num_of_actual_bytes_in_current_block=0;
	static String canary_value="0x42";
	static	int  num_of_interleaved_keys = 32;   //this should be equal to the number of keys we use in Secure_Machine_Code.java (now that we assume that 1 NOP = 1key)
	static	int  number_of_canaries=3;	//the canary bytes are after the jmp above keyshares+MACs, to know where they are in the code
	static	int  num_of_mac_bytes=16;
	static	int bytes_for_instr_len=2; //2 bytes that denote the length of the useful bytes + <size_of_jmp_command> bytes for jmp. Verification code is included. Does the same. The padded nops are not included.
	static	int bytes_for_num_of_padded_nops_len=2; //2 bytes that denote the number of padded nops that will be inserted
	static	int number_of_nops_to_denote_program_start=300;
	static	int num_of_requested_bytes_in_code_chunk=16; //number of useful bytes in code chunk. IMPORTANT: verification overhead, jmp to next block, canaries etc EXCLUDED!
	static boolean force_end_of_block=false;
	static int world=3; //=world_in_which_we_are (variable above)
	static int label_counter=0;
	
	public static void main(String[] args) throws Exception
	{
		
		//use this if executing with automate.sh in code directory
		String filename = new File("../code/main_program.s").getAbsolutePath();
		
		Scanner sc = new Scanner(new File(filename));
		ArrayList<String> list_of_lines = new ArrayList<String>();
		ArrayList<String> function_names = new ArrayList<String>();
		sc.useDelimiter("\n");
		String ulabel = "UNIQUE";
		// the num_of_grouped_orig_instr is the number of original instructions per block
		// the num_of_interleaved_nops is the number of bytes in a block (note: a NOP is 1 byte)
		// i and label_counter are just counting variables, not too important
		int num_of_grouped_orig_instr= 1;
		int i = 0;
		int line_index=0;
		int size_of_current_cmd=0;
		String ramtmp_file="";
		ArrayList<String> list_of_assembly_sizes = new ArrayList<String>();
		HashMap<String,Integer> hashmap_of_assembly_sizes =  new HashMap<String, Integer>();
		
		if (args.length==6)
		{
			num_of_interleaved_keys=Integer.parseInt(args[0]);
			number_of_canaries=Integer.parseInt(args[1]);
			num_of_mac_bytes=Integer.parseInt(args[2]);
			world_in_which_we_are=Integer.parseInt(args[3]);
			world=world_in_which_we_are;
			
			num_of_requested_bytes_in_code_chunk=Integer.parseInt(args[4]);

			ramtmp_file=args[5];
		}
		else
		{
			System.out.println("Secure_Assembly_v2:Wrong number of arguments");
			System.exit(2);
		}
		

		if ((world_in_which_we_are==3 || world_in_which_we_are==2) && num_of_mac_bytes==0)
		{
			System.out.println("Secure_Assembly_v2: Impossible configuration. Both world>1 and num_of_mac_bytes==0.");
			System.exit(-1);
		}
		
		
		//we parse the file once to find the functions
		//System.out.println("These are the function names:");
		while (sc.hasNext())
		{
			String line = sc.next();
			line = removeNewlines(line);
			
			if (removeSpaces(line).indexOf("@function")!=-1)
			{ //find name of function
				int end = removeSpaces(line).indexOf("@function") - 1;
				int start = removeSpaces(line).indexOf(".type") +5;
				String fun_name=removeSpaces(line).substring(start,end);
				function_names.add(fun_name);
				//System.out.println(fun_name);
			
			}
		}
		sc.close();
		
		//We need to know the size of each command.
		//test if the table with the sizes is present, and if yes load it into memory.
		String assembly_sizes_table_path=new File("../code/table_with_assembly_command_sizes.txt").getAbsolutePath();
		File assembly_sizes_table = new File("../code/table_with_assembly_command_sizes.txt");
		if(assembly_sizes_table.exists() && !assembly_sizes_table.isDirectory()) 
		{ 
			Scanner s = new Scanner(new File(assembly_sizes_table_path));
			ArrayList<String> list = new ArrayList<String>();
			while (s.hasNextLine()){
			    list_of_assembly_sizes.add(s.nextLine());
			}
			s.close();
            //add the sizes of each assembly command to a data structure from which we can search easily
			add_the_assembly_sizes_to_the_hashmap(list_of_assembly_sizes,hashmap_of_assembly_sizes);
		}
		
		
		// This puts the file into the ArrayList and looks for the start of the code
		// which is ".cfi_startproc". This, for every function.
		
		sc = new Scanner(new File(filename));
		sc.useDelimiter("\n");
		
		// Adding these NOPs help identify the beginning of code for the Secure_Machine_code program
		for (int cnt=0;cnt<number_of_nops_to_denote_program_start;cnt++)
		{
			list_of_lines.add("NOP");
		}
		
		line_index=-1;
		list_of_addresses_that_denote_next_cpu_block_change.add(0);
		force_end_of_block=false;
		num_of_actual_bytes_in_current_block=0;
		for (String fun:function_names)
		{	
			while (sc.hasNext())
			{
				String line = sc.next();
				line_index++;
				line = removeNewlines(line);
				//System.out.println(removeSpaces(line));
				list_of_lines.add(line);
							
				if (removeSpaces(line).indexOf(".cfi_startproc")!=-1)
				{
					//System.out.println("I found the beginning of the function");
					//add_label_for_start_of_function
					list_of_lines.add(".START_OF_FUNCTION_"+list_of_lines.get(list_of_lines.size()-3));
					
					if (world==3)
					{
						add_code_verification_lines(list_of_lines);
					}
					break;
				}			
				
			}
			
			// This inserts the verification code,jumps and NOPs in the code.
			// It breaks at the end of the code ("end")
            //rememeber: we are in a function
			while(sc.hasNext())
			{
				boolean reached_end_of_function=false;
				String line = sc.next();
				line_index++;
				line = removeNewlines(line);

				if (removeSpaces(line) == "")
				{
					//System.out.println("I see an empty line");
					continue;
				}
				
				if (reached_end_of_function)
				{
					list_of_lines.add(line);
					break;
				}
				
				//reached end of function
				if (removeSpaces(line).startsWith(".cfi_endproc"))
				{
					//IMPORTANT: We don't split blocks as in the previous version of the code splitting algorithm
					//System.out.println("I came to end of function");
					list_of_lines.add(line);
					reached_end_of_function = true;
					break;
				}

				//some random directive which we ignore
				if (line.trim().startsWith(".cfi_"))
				{
					list_of_lines.add(line);
					continue;
				}

				//if it is a Label
				//if (/*label with .L<numbers> */Pattern.compile("^[ \t]*\\.L[0123456789]+:$").matcher(line).matches())
				if (/*starts with spaces and then label*/ Pattern.compile("^[ \t]*\\..*$").matcher(line).matches() ||  /*label*/ Pattern.compile("^\\..*$").matcher(line).matches())
				{
					list_of_lines.add(line);
					//consume all following empty lines or labels
					while(  /*empty*/ sc.hasNext(Pattern.compile("^[ \t\n]*$")) ||  /*starts with spaces and then label*/ sc.hasNext(Pattern.compile("^[ \t]*\\..*$")) ||   /*label*/  sc.hasNext(Pattern.compile("^\\..*$")) || /*dunno why, does not work with dollar in the end*/sc.hasNext(Pattern.compile("\\..*")))
					{
						line = sc.next();
						line = removeNewlines(line);
						line_index++;
						list_of_lines.add(line);
					}

					if (world==3)
					{
						add_code_verification_lines(list_of_lines); //the label is suspect of being jumped on, so we add verification
					}

					continue;
				}
				
				//find size of cmd, if it is a cmd. Also, determine if the secure cpu would split
				if (removeSpaces(line).startsWith(".")==false) /*make sure it's a command*/
				{
					String line_to_check_size=line;
					if( line.trim().startsWith("j")) //pad .d32 to jmps to  calculate their proper size
					{
						String[] parts=line.trim().split("\t");
						String cmd=parts[0];
						String operands="";
						if (parts.length>1)
							operands=parts[1];
						line_to_check_size=cmd+".d32\t"+operands;
					}
					//find size of command
					size_of_current_cmd=get_size_of_assembly_command(line_to_check_size,ramtmp_file,list_of_assembly_sizes,hashmap_of_assembly_sizes);

					//if the size of the current command is bigger than we can accommodate
					if (size_of_current_cmd> num_of_requested_bytes_in_code_chunk)
					{
						int bytes_to_increase=size_of_current_cmd-num_of_requested_bytes_in_code_chunk;
						System.out.println("The size of the code block is not big enough. Increase it by at least "+ bytes_to_increase+".");
						System.exit(-2);
					}
					//see if we should add it (only if it does not exceed the size of the fixed chunk)
					if (num_of_bytes_in_blocks_as_calced_by_cpu+size_of_current_cmd>num_of_requested_bytes_in_code_chunk)
					{
						force_end_of_block=true; //force end of block because the secure CPU would
					}
				
				}


				if (force_end_of_block==true)
				{
					//split the block, and reset the counters
					add_lines_for_block_splitting(list_of_lines,ulabel);

					force_end_of_block=false;
				}


				//if next command is a call command
				if (force_end_of_block==false && 
					line.trim().startsWith("call") &&
					function_is_one_of_the_hardware_ones(line.trim().split("\t")[1].trim())==false) 
					//call is a suspect for jump (certain actually), so we add verification lines. Except if it is a secure getter/setter or another of the "hardware" functions
				{
					list_of_lines.add(line + "\t#size_of_cmd-->"+size_of_current_cmd);
					num_of_actual_bytes_in_current_block+=size_of_current_cmd;
					num_of_bytes_in_blocks_as_calced_by_cpu+=size_of_current_cmd;
					address_of_code_that_denotes_next_cpu_block_change+=size_of_current_cmd;

					if (world==3)
					{
						add_code_verification_lines(list_of_lines);
					}
					continue;
				}


				//if next command is a jump
				if (force_end_of_block==false && line.trim().startsWith("j"))
				{
					String[] parts=line.trim().split("\t");
					String cmd=parts[0];
					String operands="";
					if (parts.length>1)
						operands=parts[1];

					//If that jump is a jump to register,it should have verification code before it, which checks what happens and if by using that jump we leave the current block
					if (operands.startsWith("*%") && world==3)
					{
						add_code_verification_lines(list_of_lines);
					}

					list_of_lines.add(cmd+".d32\t"+operands+ "\t#size_of_cmd-->"+size_of_current_cmd);
					num_of_actual_bytes_in_current_block+=size_of_current_cmd;
					num_of_bytes_in_blocks_as_calced_by_cpu+=size_of_current_cmd;
					address_of_code_that_denotes_next_cpu_block_change+=size_of_current_cmd;
					continue;
				}

				if (force_end_of_block==false)
				//the default behavior is the program to add the next command
				{
					list_of_lines.add(line + "\t#size_of_cmd-->"+size_of_current_cmd);
					num_of_actual_bytes_in_current_block+=size_of_current_cmd;
					num_of_bytes_in_blocks_as_calced_by_cpu+=size_of_current_cmd;
					address_of_code_that_denotes_next_cpu_block_change+=size_of_current_cmd;
					continue;
				}				
			}
		}
		
		//at this point we are after the end of the last function. We need to secure that code as well, so we add keyshares+macs.
		add_lines_for_block_splitting(list_of_lines,ulabel);



		//Add the last lines
		while (sc.hasNext())
		{
			String line = sc.next();
			line = removeNewlines(line);
			if (removeSpaces(line) == "")
			{
				//System.out.println("I see an empty line");
				continue;
			}
			list_of_lines.add(line); 
			line_index++;
		}
				
        //write all the lines to the output file
		String finalfile = "";
		String newfilename = filename.substring(0,filename.length()-2) + "_sec.s";
		BufferedWriter bw = new BufferedWriter(new FileWriter(newfilename));
		for (String line: list_of_lines)
		{
			bw.write(line);
			bw.newLine();
		}
		
		bw.write(finalfile);
		bw.flush();
		
		//write the new table with the new assembly sizes
		assembly_sizes_table_path=new File("../code/table_with_assembly_command_sizes.txt").getAbsolutePath();
		BufferedWriter sizes_new = new BufferedWriter(new FileWriter(assembly_sizes_table_path));
		for (String line: list_of_assembly_sizes)
		{
			sizes_new.write(line);
			sizes_new.newLine();
		}
		sizes_new.flush();

		
		String addresses_of_cpu_split_blocks_path=new File("../code/addresses_of_cpu_split_blocks.txt").getAbsolutePath();
		BufferedWriter addr_of_cpu_split_blocks = new BufferedWriter(new FileWriter(addresses_of_cpu_split_blocks_path));
		for (Integer addr:list_of_addresses_that_denote_next_cpu_block_change)
		{
			addr_of_cpu_split_blocks.write( String.valueOf(addr) +"\n");
		}
		addr_of_cpu_split_blocks.flush();

	}
	static String removeSpaces(String abc)
	{
		String line = "";
		for(int i=0;i<abc.length();i++)
		{
			if(abc.charAt(i) == ' ' || abc.charAt(i)=='\t' || abc.charAt(i) == '\n' || abc.charAt(i) == '\r')
			{
				
			}
			else
			{
				line = line+(abc.charAt(i)+"").toLowerCase();
			}
		}
		
		return line;
	}
	
	static String removeNewlines(String s)
	{
		String line = "";
		for (int i = 0; i < s.length(); i++)
		{
			if (s.charAt(i) != '\r' && s.charAt(i) != '\n')
				line += s.charAt(i);
		}
		return line;
	}
	
    //we put the sizes of the nown assembly commands into a good data structure
	static void add_the_assembly_sizes_to_the_hashmap(ArrayList<String> list_of_assembly_sizes, HashMap<String,Integer> hashmap_of_assembly_sizes)
	{
		for (int i=0;i<list_of_assembly_sizes.size();i++)
		{
			String[] parts = list_of_assembly_sizes.get(i).split("-->");
			String command=parts[0];
			String sz=parts[1];
			hashmap_of_assembly_sizes.put(command.trim(), Integer.parseInt(sz.trim()));
		}
	}
	
	//-1=not found
	//else returns the place of the cmd
	static int find_cmd_size_in_known_sizes(String cmd, ArrayList<String> list_of_assembly_sizes,HashMap<String,Integer> hashmap_of_assembly_sizes)
	{
		int i;
		//using the hashmap
		Integer sz=hashmap_of_assembly_sizes.get(cmd.trim());
		if (sz==null)	
			return -1;
		else
			return sz;
	}
	
	//Finds the size of an assembly command. If it is known, its easy. If it is not nown it assembles it
    //and disassembles it
	static int get_size_of_assembly_command(String cmd,String ramtmp_file,ArrayList<String> list_of_assembly_sizes,HashMap<String,Integer> hashmap_of_assembly_sizes) throws IOException, InterruptedException
	{
		String line=cmd.trim().replace("\t", " ");
		int size=0;
		char[] size_as_chars=new char[4096];
		int cnt=0;
		String size_calculator_filename=new File("../code/one_assembly_cmd_size_finder.py").getAbsolutePath();
		String assembly_commands_filename=new File("../code/assembly_commands_for_parsing.txt").getAbsolutePath();
		String exec_str2=size_calculator_filename;
		String size_as_str;
		String[] exec_str1 = {
				"/bin/sh",
				"-c",
				"echo '"+line+"' | as -o "+ramtmp_file+" && objdump -d "+ramtmp_file+" | "+size_calculator_filename
				};  
        //like: "echo 'mov %rax,%rbx' | as -o tmp_file && objdump -d tmp_file | ../code/one_assembly_cmd_size_finder.py"
            
		int is_size_found=find_cmd_size_in_known_sizes(cmd,list_of_assembly_sizes,hashmap_of_assembly_sizes);
		if (is_size_found>-1)
			return (is_size_found);
		
		
		//find the size
		Runtime runtime1 = Runtime.getRuntime();
		Process process1 = runtime1.exec(exec_str1);
		BufferedInputStream sizeinputstream= new BufferedInputStream(process1.getInputStream());
		process1.waitFor();
		
		while(sizeinputstream.available()>0)
        {
            // read the byte and convert the integer to character
            char c = (char)sizeinputstream.read();
            size_as_chars[cnt]=c;
            cnt++;
		}
		size_as_str=new String(size_as_chars).replace("\n", "").trim();
		size=Integer.parseInt(size_as_str);	
		
		list_of_assembly_sizes.add(cmd+" --> "+size_as_str);
		hashmap_of_assembly_sizes.put(cmd.trim(), size);
		return size;
	}
	
	static void add_code_verification_lines(ArrayList<String> list_of_lines)
	{
		//7 bytes overhead with fixed chunks
		list_of_lines.add("pushfq"); //do_some_stuff() subtracts from rsp, so we save the flags
        
        list_of_lines.add("call do_verify_code_on_the_fly");

        list_of_lines.add("popfq");

        address_of_code_that_denotes_next_cpu_block_change+=overhead_for_verif;
		num_of_actual_bytes_in_current_block+=overhead_for_verif;
	}
	
	//checks if the function encountered in the assembly code is one of the secure getters/setters, so is invocation will not result in a new block
	static boolean function_is_one_of_the_hardware_ones(String fun_name)
	{
		boolean is_one=false;
		
		String[] safe_functions={"free_chunks_from_secure_stack",
			 					 "free_mem_from_secure_stack",
								 "free_mem_from_secure_stack_in_chunks",
								 "allocate_mem_into_secure_stack_in_chunks",
								 "allocate_mem_into_secure_stack",
                                 "allocate_mem_into_secure_stack_return_ptr_only",
                                 "allocate_mem_into_secure_stack_return_ptr_only_after_alloc",
                                 "allocate_mem_into_secure_stack_in_chunks_return_ptr_after_alloc",
								 "find_number_of_useful_stack_chunks",
								 "get_ptr_size",
								 "update_mac_when_setting_data",
								 "check_mac_for_error",
								 "do_verify_code_on_the_fly",
								 "insert_keys_into_mem",
								 "insert_data_into_mem",
								 "get_secure_data",
								 "set_secure_data",
								 "get_char",
								 "get_int",
								 "get_long_int",
								 "get_float",
								 "get_double",
								 "get_pointer",
								 "get_array_element",
								 "get_char_array_element",
								 "get_int_array_element",
								 "get_long_int_array_element",
								 "get_pointer_array_element",
								 "get_float_array_element",
								 "get_double_array_element",
								 "get_arbitrary_block_in_heap",
								 "get_arbitrary_block_in_heap_with_offset",
								 "set_char",
								 "set_int",
								 "set_long_int",
								 "set_float",
								 "set_double",
								 "set_pointer",
								 "set_array_element",
								 "set_char_array_element",
								 "set_int_array_element",
								 "set_long_int_array_element",
								 "set_pointer_array_element",
								 "set_float_array_element",
								 "set_double_array_element",
								 "set_arbitrary_block_in_heap",
								 "set_arbitrary_block_in_heap_with_offset",
								 "insert_keys_into_stack_mem",
								 "insert_data_into_stack_mem",
								 "get_secure_stack_data",
								 "set_secure_stack_data",
								 "get_stack_char",
								 "get_stack_int",
								 "get_stack_long_int",
								 "get_stack_float",
								 "get_stack_double",
								 "get_stack_pointer",
								 "get_stack_array_element",
								 "get_stack_char_array_element",
								 "get_stack_int_array_element",
								 "get_stack_long_int_array_element",
								 "get_stack_pointer_array_element",
								 "get_stack_float_array_element",
								 "get_stack_double_array_element",
								 "get_arbitrary_block_in_stack",
								 "get_arbitrary_block_in_stack_with_offset",
								 "set_stack_char",
								 "set_stack_int",
								 "set_stack_long_int",
								 "set_stack_float",
								 "set_stack_double",
								 "set_stack_pointer",
								 "set_stack_array_element",
								 "set_stack_char_array_element",
								 "set_stack_int_array_element",
								 "set_stack_long_int_array_element",
								 "set_stack_pointer_array_element",
								 "set_stack_float_array_element",
								 "set_stack_double_array_element",
								 "set_arbitrary_block_in_stack",
								 "set_arbitrary_block_in_stack_with_offset",
								 "get_global_char",
								 "get_global_int",
								 "get_global_long_int",
								 "get_global_float",
								 "get_global_double",
								 "get_global_ptr",
                                 "set_sheap_meta_size",
                                 "set_sheap_meta_previous",
                                 "set_sheap_meta_next",
                                 "set_sheap_meta_in_use",
                                 "get_sheap_meta_size",
                                 "get_sheap_meta_previous",
                                 "get_sheap_meta_next",
                                 "get_sheap_meta_in_use"
								};
		
		if (Arrays.asList(safe_functions).contains(fun_name.trim()))
		{
			is_one=true;
		}
		return is_one;
	}


	static void add_lines_for_block_splitting(ArrayList<String> list_of_lines,String ulabel)
	{
		int num_of_padded_nops=num_of_requested_bytes_in_code_chunk-num_of_bytes_in_blocks_as_calced_by_cpu;

		//split the block!
		list_of_lines.add("# forcing block split because secure cpu would");
		num_of_actual_bytes_in_current_block+=size_of_jmp_command;
		list_of_lines.add(" jmp.d32 " + "." + ulabel + label_counter);

		//add canary bytes
		for (int j=0;j<number_of_canaries;j++)
			list_of_lines.add(".byte "+canary_value);

		//add bytes_for_instructions, which tell us how many bytes (verifications+jmp included) were in the block
		short actual_bytes_in_block=(short)num_of_actual_bytes_in_current_block;
		list_of_lines.add("#actual_bytes_in_block:"+actual_bytes_in_block);
		if (num_of_actual_bytes_in_current_block>32767) //more than 2 bytes can accommodate
		{
			System.out.println("ERROR at position:"+address_of_code_that_denotes_next_cpu_block_change);
			System.out.println("Way to manny actual bytes in block:"+actual_bytes_in_block);
			System.exit(-1);
		}
		//set the bytes after the canaries to denote the length of the useful bytes
		//first turn the number into bytes
		ByteBuffer dbuf = ByteBuffer.allocate(2);
		dbuf.order(ByteOrder.LITTLE_ENDIAN);
		dbuf.putShort((short)actual_bytes_in_block);
		byte[] bytes_of_actual_bytes = dbuf.array();
		for(int j=0;j<bytes_for_instr_len;j++)
		{
			byte[] current_byte=new byte[1]; current_byte[0]=bytes_of_actual_bytes[j];
			list_of_lines.add(".byte 0x"+DatatypeConverter.printHexBinary(current_byte));
		}

		


		//add the bytes for the padded nops
		list_of_lines.add("#number_of_padded_nops:"+num_of_padded_nops);
		ByteBuffer dbuf2 = ByteBuffer.allocate(2);
		dbuf2.order(ByteOrder.LITTLE_ENDIAN);
		dbuf2.putShort((short)num_of_padded_nops);
		byte[] bytes_for_num_of_padded_nops = dbuf2.array();
		for(int j=0;j<bytes_for_num_of_padded_nops_len;j++)
		{
			byte[] current_byte=new byte[1]; current_byte[0]=bytes_for_num_of_padded_nops[j];
			list_of_lines.add(".byte 0x"+DatatypeConverter.printHexBinary(current_byte));
		}


		//add the padded nops
		list_of_lines.add("#start_of_padded_nops");
		//If we land at the end of the padded nops, and we would want to know the number of the useful bytes, we must go back until we find the canaries.
		//add padded nops
		for(int j=0;j<num_of_padded_nops;j++)
			list_of_lines.add("NOP");

		list_of_lines.add("#end_of_padded_nops, start_of_keyshares");


		//add keyshares
		for (int j = 0; j < num_of_interleaved_keys; j++)
			list_of_lines.add("NOP"); //keyshares

		list_of_lines.add("#end_of_keyshares, start_of_macs");

		//add macs
		if (world==2 || world==3)
		{
			for (int j = 0; j < num_of_mac_bytes; j++)
			list_of_lines.add("NOP"); //MACs
		}

		list_of_lines.add("#end_of_macs");
		
		list_of_lines.add("."+ ulabel + label_counter + ": " );          //we are just adding the label, not any command

		address_of_code_that_denotes_next_cpu_block_change+=size_of_jmp_command;
		address_of_code_that_denotes_next_cpu_block_change+=num_of_interleaved_keys+number_of_canaries+bytes_for_instr_len+num_of_padded_nops;
		if (world==2 || world==3)
		{
			address_of_code_that_denotes_next_cpu_block_change+=num_of_mac_bytes;
		}
		label_counter++;

		num_of_bytes_in_blocks_as_calced_by_cpu=0;
		num_of_actual_bytes_in_current_block=0;
		force_end_of_block=false;

		//we have a new block, and we note down its address
		list_of_addresses_that_denote_next_cpu_block_change.add(address_of_code_that_denotes_next_cpu_block_change);
		list_of_lines.add("#place_of_secure_cpu_block_change, address:"+address_of_code_that_denotes_next_cpu_block_change);
		//we need to verify the block in which we have just arrived!
		if (world==3)
		{
			add_code_verification_lines(list_of_lines);
		}
	}
	
	
}
