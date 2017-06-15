import java.util.*;
import java.util.regex.Pattern;
import java.io.*;
/*
 * This program takes as input (has hardcoded name of file in it). The file
 * is a .asm / assembly file hence, it is in text format.
 * For every block of code, it inserts jmps and verification code (if asked).
 * Also,it inserts nop instructions (which will be replaced with canaries,keyshares and macs) between
 * instructions. If using fixed-size code blocks, it insert the padded nops too.
 * It does this by some not-very-clean parsing, (but we could refine it later)
 * (The point is that parsing an assembly file is still way easier than parsing
 * a C file.)
 * To handle the jumps over the instructions, we add labels.
 */
public class Secure_Assembly {
	
	private static ArrayList<String> hashmap_of_assemby_sizes;
	static int address_of_code_that_denotes_next_unsplit_block_change=0; //has the (relative to the first block of code) address of the actual code. Is added to a list when an (unsplit) block would change 
	static int num_of_cmds_when_we_dont_split_blocks=0;
	static int num_of_bytes_when_we_dont_split_blocks=0;
	static ArrayList<Integer> list_of_addresses_that_denote_next_unsplit_block_change=new ArrayList<Integer>();
	static boolean when_splitting_blocks_do_not_invoke_verif_unless_on_label=false; //experimental

	
	public static void main(String[] args) throws Exception
	{
		//use this if executing manually
		//String filename = new File("code/main_program.s").getAbsolutePath();
		
		//use this if executing with automate.sh in code directory
		String filename = new File("../code/main_program.s").getAbsolutePath();
		
		Scanner sc = new Scanner(new File(filename));
		ArrayList<String> list_of_lines = new ArrayList<String>();
		ArrayList<String> function_names = new ArrayList<String>();
		sc.useDelimiter("\n");
		String ulabel = "UNIQUE";
		// the num_of_grouped_orig_instr is the number of original instructions per keyshare
		// the num_of_interleaved_nops is the number of bytes in a keyshare (note: a NOP is 1 byte)
		// i and label_counter are just counting variables, not too important
		int num_of_grouped_orig_instr= 1;
		int label_counter = 0;
		int i = 0;
		int  num_of_interleaved_keys = 32;   //this should be equal to the number of keys we use in Secure_Machine_Code.java (now that we assume that 1 NOP = 1key)
		int  number_of_canaries=2;
		int  num_of_mac_bytes=4;
		int bytes_for_instr_len=1; //one byte that denotes the length of the useful bytes + 2 bytes for jmp. If fixed chunks of code are active. Does the same. The padded nops are not included.
		int number_of_nops_to_denote_program_start=300;
		boolean check_code_verification_on_the_fly=false;
		boolean use_fixed_size_chunks_of_code=false;
		int num_of_bytes_in_code_chunk=20;
		int line_index=0;
		int size_of_current_cmd=0;
		int num_of_bytes_in_current_block=0;
		boolean force_num_of_instructions_over_bytes=true;
		String ramtmp_file="";
		boolean ignore_macs_even_if_there_are_mac_bytes=false;
		ArrayList<String> list_of_assembly_sizes = new ArrayList<String>();
		HashMap<String,Integer> hashmap_of_assembly_sizes =  new HashMap<String, Integer>();
		boolean force_code_block_split_on_labels_and_calls=false;
		
		
		if (args.length==12)
		{
			num_of_interleaved_keys=Integer.parseInt(args[0]);
			num_of_grouped_orig_instr=Integer.parseInt(args[1]);
			number_of_canaries=Integer.parseInt(args[2]);
			num_of_mac_bytes=Integer.parseInt(args[3]);
			if (Integer.parseInt(args[4])==0)
				check_code_verification_on_the_fly=false;
			else
				check_code_verification_on_the_fly=true;
			
			if (Integer.parseInt(args[5])==0)
				use_fixed_size_chunks_of_code=false;
			else
				use_fixed_size_chunks_of_code=true;
			
			num_of_bytes_in_code_chunk=Integer.parseInt(args[6]);
			
			if (Integer.parseInt(args[7])==0)
				force_num_of_instructions_over_bytes=false;
			else
				force_num_of_instructions_over_bytes=true;
			
			ramtmp_file=args[8];
			
			if (Integer.parseInt(args[9])==0)
				ignore_macs_even_if_there_are_mac_bytes=false;
			else
				ignore_macs_even_if_there_are_mac_bytes=true;
			
			if (Integer.parseInt(args[10])==0)
				force_code_block_split_on_labels_and_calls=false;
			else
				force_code_block_split_on_labels_and_calls=true;
			
			if (Integer.parseInt(args[11])==0)
				when_splitting_blocks_do_not_invoke_verif_unless_on_label=false;
			else
				when_splitting_blocks_do_not_invoke_verif_unless_on_label=true;

		}
		else
		{
			System.out.println("Secure Assembly:Wrong number of arguments");
			System.exit(2);
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
		
		//If we used fixed size chunks of code, then we need to know the size of each command.
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
		list_of_addresses_that_denote_next_unsplit_block_change.add(0);
		boolean force_end_of_block=false;
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
					//add_label_for_sart_of_function
					list_of_lines.add(".START_OF_FUNCTION_"+list_of_lines.get(list_of_lines.size()-3));
					
					if (check_code_verification_on_the_fly && !ignore_macs_even_if_there_are_mac_bytes)
					{
						add_code_verification_lines(list_of_lines,use_fixed_size_chunks_of_code);
					}
					break;
				}			
				
			}
			
			num_of_bytes_in_current_block=0;
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
				
				if (removeSpaces(line).startsWith(".cfi_endproc"))
				{
					//System.out.println("I came to end");
					list_of_lines.add(line);
					reached_end_of_function = true;
					
					list_of_lines.add(" jmp " + "." + ulabel + label_counter);
					for (int j = 0; j < num_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len; j++)
						list_of_lines.add("NOP"); 
					list_of_lines.add("."+ ulabel + label_counter + ": " );          //we are just adding the label, not any command
					address_of_code_that_denotes_next_unsplit_block_change+=2;
					address_of_code_that_denotes_next_unsplit_block_change+=num_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len;
					//System.out.println(line);
					i = 0;
					label_counter++;
					num_of_bytes_in_current_block=0;

					break;
				}
				
				//find size of cmd, if it is a cmd
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
					//see if we should add it (only if it does not exceed the size of the fixed chunk)
					if (use_fixed_size_chunks_of_code)
					{
						int bytes_to_subtract=2; /*jmp*/
						if ((check_code_verification_on_the_fly && !ignore_macs_even_if_there_are_mac_bytes) || (force_code_block_split_on_labels_and_calls)) //think that there is a verifier if we force block split
							bytes_to_subtract+=7; /*size of verifier for fixed size blocks*/
						//if the size of the current command is bigger than we can accommodate
						if (size_of_current_cmd> num_of_bytes_in_code_chunk-bytes_to_subtract)
						{
							int bytes_to_increase=size_of_current_cmd-(num_of_bytes_in_code_chunk-bytes_to_subtract);
							System.out.println("The size of the code block is not big enough. Increase it by at least "+ bytes_to_increase+".");
							System.exit(-2);
						}
						if (num_of_bytes_in_current_block+size_of_current_cmd>num_of_bytes_in_code_chunk-bytes_to_subtract)
						{
							if (force_num_of_instructions_over_bytes && i<num_of_grouped_orig_instr)
							{
								int bytes_to_increase=num_of_bytes_in_current_block+size_of_current_cmd-(num_of_bytes_in_code_chunk-bytes_to_subtract);
								System.out.println("The size of the code block is not big enough and we only managed to fit "+i+" instructions. Increase it by at least "+ bytes_to_increase+".");
								System.exit(-3);
							}
							force_end_of_block=true;
						}
					}
					
				}
				
				
				
								
				//if we have exhausted the group of commands, we need to add a jump and nops, and a label after them
				if (force_end_of_block || i == num_of_grouped_orig_instr || (((!ignore_macs_even_if_there_are_mac_bytes  && check_code_verification_on_the_fly) || force_code_block_split_on_labels_and_calls)  && /*label with .L<numbers> */Pattern.compile("^[ \t]*\\.L[0123456789]+:$").matcher(line).matches() ))
				{
					
					force_end_of_block=false;
					num_of_bytes_in_current_block=0;
					
					
					//experimental for splits of blocks due to label
					boolean forced_block_split_because_of_label=false;
					String name_of_second_label="";
					if (when_splitting_blocks_do_not_invoke_verif_unless_on_label &&  /*label with .L<numbers> */Pattern.compile("^[ \t]*\\.L[0123456789]+:$").matcher(line).matches() && (force_end_of_block==false && i!=num_of_grouped_orig_instr) )
					{
						forced_block_split_because_of_label=true;
						list_of_lines.add(" jmp " + "." + ulabel + label_counter+"_2");
						name_of_second_label="." + ulabel + label_counter+"_2";
					}
					else
					{
						list_of_lines.add(" jmp " + "." + ulabel + label_counter);
					}
					for (int j = 0; j < num_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len; j++)
						list_of_lines.add("NOP"); 
					list_of_lines.add("."+ ulabel + label_counter + ": " );          //we are just adding the label, not any command
					address_of_code_that_denotes_next_unsplit_block_change+=2;
					address_of_code_that_denotes_next_unsplit_block_change+=num_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len;
					//System.out.println(line);
					i = 0;
					label_counter++;
					
					//if line starts with "." (is a label) or is empty
					int got_inside_while=0;
					while (  /*empty*/Pattern.compile("^[ \t\n]*$").matcher(line).matches() || /*starts with spaces and then label*/ Pattern.compile("^[ \t]*\\..*$").matcher(line).matches() ||  /*label*/ Pattern.compile("^\\..*$").matcher(line).matches() )
					{
						list_of_lines.add(line);
						got_inside_while=1;
                        //is the next command a label as well?
						if ( sc.hasNext(Pattern.compile("^[ \t\n]*$")) ||  sc.hasNext(Pattern.compile("^[ \t]*\\..*$")) ||   sc.hasNext(Pattern.compile("^\\..*$")) || /*dunno why, does not work with dollar in the end*/sc.hasNext(Pattern.compile("\\..*")))
						{
							line = sc.next();
							line_index++;
							line = removeNewlines(line); //if yes, add it
							
						}
						else
						{
							line="Line_that_exits_the_loop";
						}
					}
					
					if (check_code_verification_on_the_fly && !ignore_macs_even_if_there_are_mac_bytes)
					{
						add_code_verification_lines(list_of_lines,use_fixed_size_chunks_of_code);
					}
					
					//experimental for splits of blocks due to label
					if (when_splitting_blocks_do_not_invoke_verif_unless_on_label && forced_block_split_because_of_label)
					{
						list_of_lines.add(name_of_second_label +": ");
					}
					
					if (got_inside_while==1)
					{
						continue;
					}
	
				}
				
				
				if (removeSpaces(line).startsWith("."))
				{
					list_of_lines.add(line);
					continue;
				}
				
				if (use_fixed_size_chunks_of_code)
				{
					if (num_of_bytes_when_we_dont_split_blocks+size_of_current_cmd>num_of_bytes_in_code_chunk-9) //9= verification call + jmp
					{
						num_of_bytes_when_we_dont_split_blocks=0;
						num_of_cmds_when_we_dont_split_blocks=0;
					}
				}
				if (num_of_cmds_when_we_dont_split_blocks == num_of_grouped_orig_instr)
				{
					num_of_cmds_when_we_dont_split_blocks=0;
					num_of_bytes_when_we_dont_split_blocks=0;
				}
				
				//the end of the unsplit block
				if ((num_of_bytes_when_we_dont_split_blocks==0 && use_fixed_size_chunks_of_code) ||  num_of_cmds_when_we_dont_split_blocks==0)
				{
					//check some edge cases
					if ((address_of_code_that_denotes_next_unsplit_block_change==7 && use_fixed_size_chunks_of_code && check_code_verification_on_the_fly && !ignore_macs_even_if_there_are_mac_bytes)
						|| (address_of_code_that_denotes_next_unsplit_block_change==0)
						|| (address_of_code_that_denotes_next_unsplit_block_change==14 && !use_fixed_size_chunks_of_code && check_code_verification_on_the_fly && !ignore_macs_even_if_there_are_mac_bytes)
					   ) //that is because it thinks that the first verification code is a block on its own, as all the counters are still 0
					{
						; //do nothing
					}
					else
					{
						list_of_addresses_that_denote_next_unsplit_block_change.add(address_of_code_that_denotes_next_unsplit_block_change);
					}
				}
				
				
				
				//check if cmd is a call (which means block split), except if it is one of some special functions
				if (((check_code_verification_on_the_fly && !ignore_macs_even_if_there_are_mac_bytes) || force_code_block_split_on_labels_and_calls)/*we should force end of block even if we ignore mac verification??? */ && line.trim().startsWith("call") && function_is_one_of_the_hardware_ones(line.trim().split("\t")[1].trim())==false) //call should mark the end of a block, except if it is a secure getter/setter
				{
					list_of_lines.add(line);
					i++;
					num_of_cmds_when_we_dont_split_blocks++;
					force_end_of_block=true;
					if (use_fixed_size_chunks_of_code)
					{
						num_of_bytes_in_current_block+=size_of_current_cmd;
						num_of_bytes_when_we_dont_split_blocks+=size_of_current_cmd;
					}
					address_of_code_that_denotes_next_unsplit_block_change+=size_of_current_cmd;
					continue;
				}
				
				
				
				//the default behavior is the program to add the next command
				//except if we need to change a jump
				if (line.trim().startsWith("j"))
				{
					String[] parts=line.trim().split("\t");
					String cmd=parts[0];
					String operands="";
					if (parts.length>1)
						operands=parts[1];
					list_of_lines.add(cmd+".d32\t"+operands+"\n");
					if (use_fixed_size_chunks_of_code)
					{
						num_of_bytes_in_current_block+=size_of_current_cmd;
						num_of_bytes_when_we_dont_split_blocks+=size_of_current_cmd;
					}
					address_of_code_that_denotes_next_unsplit_block_change+=size_of_current_cmd;
				}
				else
				{
					list_of_lines.add(line);  //the default behavior is the program to add the next command
					if (use_fixed_size_chunks_of_code)
					{
						num_of_bytes_in_current_block+=size_of_current_cmd;
						num_of_bytes_when_we_dont_split_blocks+=size_of_current_cmd;
					}
					address_of_code_that_denotes_next_unsplit_block_change+=size_of_current_cmd;
				}
				i++;
				num_of_cmds_when_we_dont_split_blocks++;
				
			  }
			
		}
		
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
		}
		
		/*
		for (String s: list_of_lines)
		{
			System.out.println(s);
		}
		*/
		
        //write all the lines to the output file
		String finalfile = "";
		String newfilename = filename.substring(0,filename.length()-2) + "_sec.s";
		//System.out.println("NOPs added to file: "+newfilename);
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

		
		String addresses_of_unsplit_blocks_path=new File("../code/addresses_of_unsplit_blocks.txt").getAbsolutePath();
		BufferedWriter addr_of_unsplit_blocks = new BufferedWriter(new FileWriter(addresses_of_unsplit_blocks_path));
		for (Integer addr:list_of_addresses_that_denote_next_unsplit_block_change)
		{
			addr_of_unsplit_blocks.write( String.valueOf(addr) +"\n");
		}
		addr_of_unsplit_blocks.flush();

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
	
	static void add_code_verification_lines(ArrayList<String> list_of_lines, boolean use_fixed_size_chunks_of_code)
	{
		//7 bytes overhead with fixed chunks, 14 with variable chunks
		list_of_lines.add("pushfq"); //do_some_stuff() subtracts from rsp, so we save the flags

		address_of_code_that_denotes_next_unsplit_block_change+=7;
        if (use_fixed_size_chunks_of_code==false)
        {
        	//42 will be replaced by the correct value later
        	list_of_lines.add("movb $42,num_of_useful_bytes_to_mac_in_code(%rip)"); //the variable size in that global
        	address_of_code_that_denotes_next_unsplit_block_change+=7;
        }
        
        list_of_lines.add("call do_verify_code_on_the_fly");

        list_of_lines.add("popfq");
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
								 "get_global_ptr"
								};
		
		if (Arrays.asList(safe_functions).contains(fun_name.trim()))
		{
			is_one=true;
		}
		return is_one;
	}
	
	
}
