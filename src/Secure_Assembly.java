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
		//String filename = new File("samples/Helloworldadd.s").getAbsolutePath();
		
		//use this if executing with automate.sh in samples directory
		String filename = new File("../samples/Helloworldadd.s").getAbsolutePath();
		
		Scanner sc = new Scanner(new File(filename));
		ArrayList<String> list = new ArrayList<String>();
		ArrayList<String> function_names = new ArrayList<String>();
		sc.useDelimiter("\n");
		String ulabel = "UNIQUE";
		// the num_of_grouped_orig_instr is the number of original instructions per keyshare
		// the num_of_interleaved_nops is the number of bytes in a keyshare (note: a NOP is 1 byte)
		// i and label_counter are just counting variables, not too important
		int num_of_grouped_orig_instr= 1;
		int label_counter = 0;
		int i = 0;
		int  num_of_interleaved_nops = 5;   //this should be equal to the number of keys we use in Secure_Machine_Code.java (now that we assume that 1 NOP = 1key)
		

		
		//we parse the file once to find the functions
		System.out.println("These are the function names:");
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
				System.out.println(fun_name);
			
			}
		}
		sc.close();
		
		// This puts the file into the ArrayList and looks for the start of the code
		// which is ".cfi_startproc". This, for every function.
		
		sc = new Scanner(new File(filename));
		sc.useDelimiter("\n");
		
		for (String fun:function_names)
		{	
			while (sc.hasNext())
			{
				String line = sc.next();
				line = removeNewlines(line);
				//System.out.println(removeSpaces(line));
				list.add(line);
				
							
				if (removeSpaces(line).indexOf(".cfi_startproc")!=-1)
				{
					//System.out.println("I found the beginning of the function");
					break;
				}			
				
			}
			
			// Adding these NOPs help identify the beginning of code for the Secure_Machine_code program
			list.add("NOP");
			list.add("NOP");
			
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
					list.add(line);
					break;
				}
				
				if (removeSpaces(line).startsWith(".cfi_endproc"))
				{
					//System.out.println("I came to end");
					list.add(line);
					reached_end_of_function = true;
					//continue;
					break;
				}
				
				if (removeSpaces(line).startsWith("."))
				{
					list.add(line);
					continue;
				}
								
				//if we have exhausted the group of commands, we need to add a jump and nops, and a label after them
				if (i == num_of_grouped_orig_instr)
				{
					list.add(" jmp " + "." + ulabel + label_counter);
					for (int j = 0; j < num_of_interleaved_nops; j++)
						list.add("NOP"); 
					list.add("."+ ulabel + label_counter + ": " );          //we are just adding the label, not any command
					//System.out.println(line);
					i = 0;
					label_counter++;
					//continue;
				}
				
				list.add(line);  //the default behavior is the program to add the next command
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
			list.add(line); 
		}
		
		
		for (String s: list)
		{
			//System.out.println(s);
		}
		
		// This write the modified lines into a new ASM
		// You can use TASM to compile this ASM into machine code
		String finalfile = "";
		String newfilename = filename.substring(0,filename.length()-2) + "_sec.s";
		System.out.println(newfilename);
		BufferedWriter bw = new BufferedWriter(new FileWriter(newfilename));
		for (String line: list)
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

}
