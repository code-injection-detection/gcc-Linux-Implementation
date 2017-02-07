import java.util.*;
import java.util.regex.Pattern;
import java.io.*;
/*
 * This program takes as input (has hardcoded name of file in it). The file
 * is a .asm / assembly file hence, it is in text format.
 * It inserts nop instructions (which will be replaced with keyshares) between
 * instructions. 
 * It does this by some not-very-clean parsing, (but we could refine it later)
 * (The point is that parsing an assembly file is still way easier than parsing
 * a C file.)
 * To handle the jumps over the instructions, we add labels.
 */
public class Secure_Assembly {
	
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
		int  num_of_interleaved_keys = 5;   //this should be equal to the number of keys we use in Secure_Machine_Code.java (now that we assume that 1 NOP = 1key)
		int  number_of_canaries=2;
		int  num_of_mac_bytes=4;
		int bytes_for_instr_len=1; //one byte that denotes the length of the useful bytes + 2 bytes for jmp. If fixed chunks of code are active. Does the same. The padded nops are not included.
		int number_of_nops_to_denote_program_start=300;
		boolean check_code_verification_on_the_fly=false;
		boolean use_fixed_size_chunks_of_code=false;
		int num_of_bytes_in_code_chunk=20;
		int line_index=0;
		

		if (args.length==7)
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
					
					if (check_code_verification_on_the_fly)
					{
						add_code_verification_lines(list_of_lines);
					}
					break;
				}			
				
			}
			
			
			// This inserts the jumps and NOPs in the code.
			// It breaks at the end of the code ("end")
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
					//System.out.println(line);
					i = 0;
					label_counter++;

					break;
				}
				
				
				/*
				//is this really necessary?
				//put "ret" and "movq	%rsp, %rbp" into the former block
				if (check_code_verification_on_the_fly && ( line.trim().equals("ret") || line.trim().equals("movq	%rsp, %rbp")))
				{
					list_of_lines.add(line);
					continue;
				}
				*/
									
								
				//if we have exhausted the group of commands, we need to add a jump and nops, and a label after them
				if (i == num_of_grouped_orig_instr)
				{
					list_of_lines.add(" jmp " + "." + ulabel + label_counter);
					for (int j = 0; j < num_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len; j++)
						list_of_lines.add("NOP"); 
					list_of_lines.add("."+ ulabel + label_counter + ": " );          //we are just adding the label, not any command
					//System.out.println(line);
					i = 0;
					label_counter++;
					
					//if next line starts with "." (is a label) or is empty
					int got_inside_while=0;
					while (sc.hasNext(Pattern.compile("^[ \t\n]*$")) || sc.hasNext(Pattern.compile("^[ \t]*\\..*")) )
					{
						line = sc.next();
						line_index++;
						line = removeNewlines(line);
						list_of_lines.add(line);
						got_inside_while=1;
					}
					
					if (check_code_verification_on_the_fly)
					{
						add_code_verification_lines(list_of_lines);
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
				
				//the default behavior is the program to add the next command
				//except if we need to change a jump
				if (use_fixed_size_chunks_of_code && line.trim().startsWith("j"))
				{
					String[] parts=line.trim().split("\t");
					String cmd=parts[0];
					String operands="";
					if (parts.length>1)
						operands=parts[1];
					list_of_lines.add(cmd+".d32\t"+operands+"\n");
				}
				else
				{
					list_of_lines.add(line);  //the default behavior is the program to add the next command
				}
				i++;
				
				//System.out.println(line);
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
		
		
		for (String s: list_of_lines)
		{
			//System.out.println(s);
		}
		
		// This write the modified lines into a new ASM
		// You can use TASM to compile this ASM into machine code
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
	
	static void add_code_verification_lines(ArrayList<String> list_of_lines)
	{
       // list_of_lines.add("lea -0x7f(%rsp), %rsp"); //decrease %rsp without altering the flags
        list_of_lines.add("call do_some_stuff");
       // list_of_lines.add("lea  0x7f(%rsp),%rsp");  //bring back %rsp
		//list_of_lines.add("pushfq");
		//list_of_lines.add("call do_nothing");
		//list_of_lines.add("popfq");
		//list_of_lines.add("addq $0x0, %rax");
		//list_of_lines.add("popq %r10");
		//list_of_lines.add("call do_nothing");
		//list_of_lines.add("pushq %r10");
		//list_of_lines.add("dec %rsp");
		/*list_of_lines.add("pushf");
        list_of_lines.add("pushq %rax");  //caller saved registers
        list_of_lines.add("pushq %rbx");  //added later
        list_of_lines.add("pushq %rcx");
        list_of_lines.add("pushq %rdx");
        list_of_lines.add("pushq %rdi");  //added later
        list_of_lines.add("pushq %rsi");  //added later
        list_of_lines.add("lea  (%rip),%rax");
        list_of_lines.add("movq %rax,code_where_to_start_macing(%rip)");
        list_of_lines.add("movq $42,num_of_useful_bytes_to_mac_in_code(%rip)");
        list_of_lines.add("call verify_code_on_the_fly");
        list_of_lines.add("popq %rsi");
        list_of_lines.add("popq %rdi");
        list_of_lines.add("popq %rdx");
        list_of_lines.add("popq %rcx");
        list_of_lines.add("popq %rbx");
        list_of_lines.add("popq %rax");
        list_of_lines.add("popf");*/
	}
	//as code
	/*
		pushf
		pushq %rax  
		pushq %rbx
		pushq %rcx
		pushq %rdx
		pushq %rdi
		pushq %rsi
		lea  (%rip),%rax
		movq %rax,code_where_to_start_macing(%rip)
		movq $42,num_of_useful_bytes_to_mac_in_code(%rip)
		call verify_code_on_the_fly
		popq %rsi
		popq %rdi
		popq %rdx
		popq %rcx
		popq %rbx
		popq %rax
		popf
	*/
	
	/*Something that works*/
	/*
		list_of_lines.add("movq %rax,global_variable_for_rax(%rip)");
    	list_of_lines.add("lahf");
        list_of_lines.add("seto %al");
        list_of_lines.add("subq $0x500, %rsp");
        list_of_lines.add("pushq %rax"); //push the proper flags
        list_of_lines.add("call do_some_stuff");
        list_of_lines.add("popq %rax"); //pop the proper flags
        list_of_lines.add("addq $0x500, %rsp");
        list_of_lines.add("add $0x7f, %al");
        list_of_lines.add("sahf");
        list_of_lines.add("movq global_variable_for_rax(%rip),%rax");
	/*Other thing that works*/
	/*
	 list_of_lines.add("movq %rax,global_variable_for_rax(%rip)");
    	list_of_lines.add("lahf");
        list_of_lines.add("seto %al");
        list_of_lines.add("movq %rax,global_variable_for_flags(%rip)");
        list_of_lines.add("popq %rax");
        list_of_lines.add("movq %rax,global_variable_for_what_is_under_rsp(%rip)");
        list_of_lines.add("call do_nothing");
        list_of_lines.add("movq global_variable_for_what_is_under_rsp(%rip),%rax");
        list_of_lines.add("pushq %rax");
        list_of_lines.add("movq global_variable_for_flags(%rip),%rax");
        list_of_lines.add("add $0x7f, %al");
        list_of_lines.add("sahf");
        list_of_lines.add("movq global_variable_for_rax(%rip),%rax");
	 */
	
	/*another even better thing*/
	/*
	   list_of_lines.add("lea -0x400(%rsp), %rsp");
       list_of_lines.add("call do_some_stuff");
       list_of_lines.add("lea  0x400(%rsp),%rsp");
	 */
	
	/*or use:
	 * -mno-red-zone
		Do not use a so called red zone for x86-64 code. 
		The red zone is mandated by the x86-64 ABI, 
		it is a 128-byte area beyond the location of the stack pointer 
		that will not be modified by signal or interrupt handlers and therefore 
		can be used for temporary data without adjusting the stack pointer. 
		The flag -mno-red-zone disables this red zone. 
	 */
	
	
}
