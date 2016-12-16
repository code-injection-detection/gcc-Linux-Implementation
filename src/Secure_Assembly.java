import java.util.*;
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
		//String filename = new File("code/Helloworldadd.s").getAbsolutePath();
		
		//use this if executing with automate.sh in code directory
		String filename = new File("../code/Helloworldadd.s").getAbsolutePath();
		
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
		int bytes_for_instr_len=1;
		int number_of_nops_to_denote_program_start=130;
		boolean check_code_verification_on_the_fly=false;
		

		if (args.length==5)
		{
			num_of_interleaved_keys=Integer.parseInt(args[0]);
			num_of_grouped_orig_instr=Integer.parseInt(args[1]);
			number_of_canaries=Integer.parseInt(args[2]);
			num_of_mac_bytes=Integer.parseInt(args[3]);
			if (Integer.parseInt(args[4])==0)
				check_code_verification_on_the_fly=false;
			else
				check_code_verification_on_the_fly=true;
		}
		else
		{
			System.out.println("Secure Assembly:Wrong number of arguments");
			System.exit(2);
		}
		

		if (num_of_mac_bytes==0)
			bytes_for_instr_len=0;
		
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

		for (String fun:function_names)
		{	
			while (sc.hasNext())
			{
				String line = sc.next();
				line = removeNewlines(line);
				//System.out.println(removeSpaces(line));
				list_of_lines.add(line);
				
							
				if (removeSpaces(line).indexOf(".cfi_startproc")!=-1)
				{
					//System.out.println("I found the beginning of the function");
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
				
				if (removeSpaces(line).startsWith("."))
				{
					list_of_lines.add(line);
					continue;
				}
				
				//put "ret" and "movq	%rsp, %rbp" into the former block
				if (check_code_verification_on_the_fly && ( line.trim().equals("ret") || line.trim().equals("movq	%rsp, %rbp")))
				{
					list_of_lines.add(line);
					continue;
				}
								
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
					
					if (check_code_verification_on_the_fly)
					{
						add_code_verification_lines(list_of_lines);
					}
	
				}
				
				list_of_lines.add(line);  //the default behavior is the program to add the next command
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
		list_of_lines.add("pushf");
        list_of_lines.add("pushq %rax");  //caller saved registers
        list_of_lines.add("pushq %rcx");
        list_of_lines.add("pushq %rdx");
        list_of_lines.add("lea  (%rip),%rax");
        list_of_lines.add("movq %rax,code_where_to_start_macing(%rip)");
        list_of_lines.add("movq $42,num_of_useful_bytes_to_mac_in_code(%rip)");
        list_of_lines.add("call verify_code_on_the_fly");
        list_of_lines.add("popq %rdx");
        list_of_lines.add("popq %rcx");
        list_of_lines.add("popq %rax");
        list_of_lines.add("popf");
	}

}
