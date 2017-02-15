import java.util.*;
import java.io.*;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.*;

/*
 * This code reads a compiled exe file and then locates the nop instructions
 * and replaces them with the key share values.
 * 
 */ 

public class Secure_Machine_Code {
	public static void main(String[] args) throws Exception
	{
		//use this if executing manually
		//String filename = new File("code/main_program_sec").getAbsolutePath();
		//String heap_keys_filename=new File("code/heap_keyshares").getAbsolutePath();
		//String memory_manager_filename=new File("code/memory_manager.c").getAbsolutePath();
		
		
		//use this if executing with automate.sh in code directory
		String filename = new File("../code/main_program_sec").getAbsolutePath();	
		String heap_keys_filename=new File("../code/heap_keyshares").getAbsolutePath();
		String stack_keys_filename=new File("../code/stack_keyshares").getAbsolutePath();
		String memory_manager_filename=new File("../code/memory_manager.c").getAbsolutePath();
		String global_keys_filename=new File("../code/global_keyshares").getAbsolutePath();
		String all_keyshares_filename=new File("../code/all_keyshares_for_verification").getAbsolutePath();
		
		String newfilename = filename.substring(0,filename.length()-3)+"ksec";
		Runtime r = Runtime.getRuntime();
		int number_of_nop_groups_replaced=0;
		//int n = 2;
		
		int number_of_interleaved_keys = 5; //this should be equal to the number of nops we insert in Secure_Assembly.java (now that we assume that 1 NOP = 1key)
		int num_of_keys_in_heap=5; //this should be equal to the number of keys we interleave in the heap
		int num_of_keys_in_stack=5; //this should be equal to the number of keys we interleave in the stack
		int useful_bytes_between_keys_in_heap=4;
		int useful_bytes_between_keys_in_stack=4;
		int num_of_mac_bytes=4;
		long total_bytes_trying_to_allocate_in_heap=2048;
		long total_bytes_trying_to_allocate_in_stack=1024;
		long useful_chunks_in_heap;
		long useful_chunks_in_stack;
		int number_of_canaries=2;
		int bytes_for_instr_len=1;
		int cnt_for_instr_bytes=0; //counts the useful bytes that come before the keyshares
		int number_of_nops_to_denote_program_start=300;
		byte canary_value=0x42; //says:after me, keyshares follow!
		boolean use_fixed_size_chunks_of_code=false;
		boolean check_code_verification_on_the_fly=false;
		int num_of_bytes_in_code_chunk=20;
		int number_of_padded_nops=0;
		int cnt_for_useful_bytes=0;
		boolean do_not_mac_what_we_add_in_code=true;
		
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		FileInputStream fr = new FileInputStream(new File(filename));
		FileOutputStream fw = new FileOutputStream(new File(newfilename));
		ArrayList<Byte> list = new ArrayList<Byte>();

		FileOutputStream heap_keyshares_file = new FileOutputStream(new File(heap_keys_filename));
		FileOutputStream stack_keyshares_file = new FileOutputStream(new File(stack_keys_filename));
		FileOutputStream all_keyshares_file_for_verification=new FileOutputStream(new File(all_keyshares_filename));
		Path path = FileSystems.getDefault().getPath(global_keys_filename);
		byte [] global_keys = Files.readAllBytes(path);
		byte[] stuff_in_code_to_be_MACed=new byte[2048];
		
		if (args.length==11)
		{
			number_of_interleaved_keys=Integer.parseInt(args[0]);
			num_of_keys_in_heap=number_of_interleaved_keys;
			num_of_keys_in_stack=number_of_interleaved_keys;
			number_of_canaries=Integer.parseInt(args[1]);
			useful_bytes_between_keys_in_heap=Integer.parseInt(args[2]);
			total_bytes_trying_to_allocate_in_heap=Long.parseLong(args[3]);
			useful_bytes_between_keys_in_stack=Integer.parseInt(args[4]);
			total_bytes_trying_to_allocate_in_stack=Long.parseLong(args[5]);
			num_of_mac_bytes=Integer.parseInt(args[6]);
			if (Integer.parseInt(args[7])==0)
				check_code_verification_on_the_fly=false;
			else
				check_code_verification_on_the_fly=true;
			
			if (Integer.parseInt(args[8])==0)
				use_fixed_size_chunks_of_code=false;
			else
				use_fixed_size_chunks_of_code=true;
			num_of_bytes_in_code_chunk=Integer.parseInt(args[9]);
			
			if (Integer.parseInt(args[10])==0)
				do_not_mac_what_we_add_in_code=false;
			else
				do_not_mac_what_we_add_in_code=true;
		}
		else
		{
			System.out.println("Incorrect number of arguments!");
			System.exit(-1);
		}
		
		ArrayList[] keys = new ArrayList[number_of_interleaved_keys];
		
		for(int i=0;i<number_of_interleaved_keys;i++)
		{
			keys[i] =new  ArrayList<Byte>();
		}
		
		byte[] b =  new byte[1];
		while(fr.available()>0)
		{
			fr.read(b);
			list.add(b[0]);
		}
	    byte[] arr = new byte[list.size()];
	    for(int i=0;i<list.size();i++)
	    {
	    	arr[i] = list.get(i);
	    }
	    int n = arr.length;
	    cnt_for_instr_bytes=0;
	    cnt_for_useful_bytes=0;
	    if (use_fixed_size_chunks_of_code)
	    {
	    	cnt_for_useful_bytes=0;
	    	number_of_padded_nops=num_of_bytes_in_code_chunk-cnt_for_useful_bytes;
	    }
	    else
	    {
	    	number_of_padded_nops=0;
	    }


	    for(int i=0;i<n-(2+number_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len+num_of_bytes_in_code_chunk);) //the num_of_bytes_in_code_chunk is not correct, but works since there is no code in the last part of the executable
	    {
			if (k_nops_after_us(number_of_nops_to_denote_program_start,arr,i-2) && arr[i+number_of_nops_to_denote_program_start]!=(byte)0x90)  //-2 because the funtions adds +2
			{
				//System.out.println("found 300 nops at position "+i);
				cnt_for_instr_bytes=0;
				i+=number_of_nops_to_denote_program_start;
				if (use_fixed_size_chunks_of_code)
				{
					cnt_for_useful_bytes=0;
					number_of_padded_nops=num_of_bytes_in_code_chunk-cnt_for_useful_bytes;
				}
			}
	    	if(arr[i]==-21 && (arr[i+1] == (byte)(number_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len+(use_fixed_size_chunks_of_code?(number_of_padded_nops-2):0))) && (use_fixed_size_chunks_of_code?number_of_padded_nops>=0:true) && k_nops_after_us(number_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len+(use_fixed_size_chunks_of_code?(number_of_padded_nops-2):0),arr,i)) // int -21 = jmp opcode, and the arr[i+1] has to be the offset (number of nops + 1 ) , and we have to have num_of_keys NOPs after us
	    	{
				
				if (num_of_mac_bytes>0)
					cnt_for_instr_bytes+=2;
				
				if (use_fixed_size_chunks_of_code)
				{
					cnt_for_useful_bytes+=2;
					number_of_padded_nops=num_of_bytes_in_code_chunk-cnt_for_useful_bytes;
					if (cnt_for_useful_bytes>255)
					{
						System.out.println("Error. Too many assembly commands (255 bytes in size) in one chunk of useful bytes. Count: "+cnt_for_useful_bytes+" at position: "+i);
						System.exit(-3);
					}
				}
    			//System.out.println("i,number_of_padded_nops,cnt_for_instr_bytes "+i+" "+number_of_padded_nops+" "+cnt_for_instr_bytes);
				//System.out.flush();

				number_of_nop_groups_replaced++;
				for(int j=0;j<number_of_canaries;j++)
				{
					arr[i+2+j] = (byte)canary_value;
				}
				
				if (num_of_mac_bytes>0 && cnt_for_instr_bytes>0 && (cnt_for_instr_bytes/255.0>bytes_for_instr_len || bytes_for_instr_len>1 ))
				{
					System.out.println("Error. Too many assembly commands (255 bytes in size) in one chunk of useful bytes. Count: "+cnt_for_instr_bytes+" at position: "+i);
					System.exit(-3);
				}
				else
				{
					for(int j=0;j<bytes_for_instr_len;j++)
					{
						if (use_fixed_size_chunks_of_code==false && num_of_mac_bytes==0)
							arr[i+2+j+number_of_canaries]=(byte)0;
						else if (use_fixed_size_chunks_of_code)
							arr[i+2+j+number_of_canaries] = (byte)cnt_for_useful_bytes;
						else if (num_of_mac_bytes>0)	
							arr[i+2+j+number_of_canaries] = (byte)cnt_for_instr_bytes;
					}
					if (use_fixed_size_chunks_of_code==false && check_code_verification_on_the_fly)
					{
						//set the correct value in "movq $42,num_of_useful_bytes_to_mac_in_code(%rip)"
						int num_of_useful_butes_to_mac_in_code=cnt_for_instr_bytes+number_of_canaries+1;
						int length_of_instructions_up_to_byte_42=7;//22;
						if (arr[i-(cnt_for_instr_bytes-2)+length_of_instructions_up_to_byte_42]!=(byte)42) //22 bytes is the length of the instructions up to 42
						{
							System.out.println("Could not find 42 in movb $42,num_of_useful_bytes_to_mac_in_code(%rip)!");
							System.exit(-1);
						}
						else
						{
							arr[i-(cnt_for_instr_bytes-2)+length_of_instructions_up_to_byte_42]=(byte)num_of_useful_butes_to_mac_in_code;
						}
					}
				}

    			
				byte[] random_bytes_generated= new byte[number_of_interleaved_keys]; //to check accidental creation of "used" opcodes
	    		for(int j=0;j<number_of_interleaved_keys;j++)
	    		{
	    			byte temp = randomByte();
	    					
	    			random_bytes_generated[j]=temp;
	    			
	    			//check not to accidentally produce opcode for <jmp> (<number of keys>+<number of canaries>+<number of macs>+<bytes_for_instr_len>+number_of_padded_nops) and the canary bytes afterwards
	    			while (j>=2+number_of_canaries-1 /*minus 1!*/ && produced_bad_opcode(random_bytes_generated,number_of_interleaved_keys,number_of_canaries,num_of_mac_bytes,bytes_for_instr_len,number_of_padded_nops,j,canary_value))
	    			{
	    				System.out.println("Accidentally created JMP <nops number + number of canaries>+<num_of_mac_bytes>+<bytes_for_instr_len> opcode, and inserted canaries after it!");
	    				temp = randomByte();
	    				random_bytes_generated[j]=temp;
	    			}
	    			
    				arr[i+2+j+number_of_canaries+bytes_for_instr_len+number_of_padded_nops] = temp;
    				keys[j].add(temp);    				
	    		}
	    		
				i+=(number_of_interleaved_keys+number_of_canaries+bytes_for_instr_len+number_of_padded_nops+2); //jump above them and reach the mac bytes
				//write the number of the actual commands in the last padded nop byte, or after the canaries if there are no padded nops
				if (use_fixed_size_chunks_of_code==false && num_of_mac_bytes==0)
					arr[i-number_of_interleaved_keys-1]=(byte)0;
				else if (use_fixed_size_chunks_of_code)
					arr[i-number_of_interleaved_keys-1] = (byte)cnt_for_useful_bytes;
				else if (num_of_mac_bytes>0)	
					arr[i-number_of_interleaved_keys-1] = (byte)cnt_for_instr_bytes;
				
				
				
				if (num_of_mac_bytes>0)
				{
					//time to set the proper MACs
					for (int j=0;j<cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len+number_of_interleaved_keys+number_of_padded_nops;j++)
					{
						//copy bytes
						stuff_in_code_to_be_MACed[j]=arr[i-(cnt_for_instr_bytes+number_of_interleaved_keys+number_of_canaries+bytes_for_instr_len+number_of_padded_nops)+j];
					}
					
					byte[] digest;
					if (do_not_mac_what_we_add_in_code)
					{
						int length_of_verifier_in_fixed_chunks=7;
						int length_of_verifier_in_variable_chunks=14;
						int nops_padded=0;
						int length_of_verifier=length_of_verifier_in_variable_chunks;
						if (use_fixed_size_chunks_of_code)
						{
							length_of_verifier=length_of_verifier_in_fixed_chunks;
							nops_padded=number_of_padded_nops;
						}
						byte[] new_stuff_in_code_to_be_MACed=new byte[2048];
						//throw away what we've put in the code (verifier,jmp etc)
						int cnt_in_new_mac=0;
						int all_bytes_length=cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len+number_of_interleaved_keys+number_of_padded_nops;
						int start_of_jmps_and_other=cnt_for_instr_bytes-2;
						int end_of_jmps_and_other=cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len;
						int start_of_nops=cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len;
						int end_of_nops=cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len;
						if (use_fixed_size_chunks_of_code)
						{
							end_of_nops+=nops_padded;
						}
						for (int cnt_in_old_mac=0;cnt_in_old_mac<all_bytes_length;cnt_in_old_mac++)
						{
							if (check_code_verification_on_the_fly && cnt_in_old_mac<length_of_verifier)
							{
								; //do nothing
							}
							else if (cnt_in_old_mac<end_of_jmps_and_other && cnt_in_old_mac>=start_of_jmps_and_other)
							{
								; //do nothing
							}
							else if (use_fixed_size_chunks_of_code && cnt_in_old_mac<end_of_nops && cnt_in_old_mac>=start_of_nops)
							{
								; //do nothing
							}
							else
							{
								//copy bytes
								new_stuff_in_code_to_be_MACed[cnt_in_new_mac]=stuff_in_code_to_be_MACed[cnt_in_old_mac];
								cnt_in_new_mac++;
							}
						}
						
						//give them to the mac handler and calculate the mac
						digest=calculate_mac(cnt_in_new_mac,cnt_in_new_mac-number_of_interleaved_keys,new_stuff_in_code_to_be_MACed,num_of_mac_bytes);
					}
					else
					{
						//give them to the mac handler and calculate the mac
						digest=calculate_mac(cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len+number_of_interleaved_keys+number_of_padded_nops,cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len+number_of_padded_nops,stuff_in_code_to_be_MACed,num_of_mac_bytes);
					}

					
					//and write the mac bytes
					for (int j=0;j<num_of_mac_bytes;j++)
					{
						if (j<digest.length)
						{
							arr[i+j]=digest[j];
						}
						else
						{
							arr[i+j]=0;
						}
					}
								
					i+=num_of_mac_bytes; //and jump over the mac bytes too
					cnt_for_instr_bytes=0;
				}
				
				if (use_fixed_size_chunks_of_code)
				{
					cnt_for_useful_bytes=0;
					number_of_padded_nops=num_of_bytes_in_code_chunk-cnt_for_useful_bytes; //reset it
				}
	    	}
	    	else
	    	{
				if (num_of_mac_bytes>0)
					cnt_for_instr_bytes++;
				if (use_fixed_size_chunks_of_code)
				{
					cnt_for_useful_bytes++;
					number_of_padded_nops=num_of_bytes_in_code_chunk-cnt_for_useful_bytes;
				}
				i++;
			}
	    }
		
	    //System.out.println("Number of interleaved nops:" + number_of_interleaved_nops);
	    //System.out.println("Number of ttl bts:" + total_bytes_trying_to_allocate_in_heap);
	    
	    
	    //inserting keyshares into heap keyshare file
	    useful_chunks_in_heap=find_useful_chunks_needed_to_allocate_in_mem(
	    				total_bytes_trying_to_allocate_in_heap,
	    				useful_bytes_between_keys_in_heap,
	    				num_of_keys_in_heap,
						num_of_mac_bytes);
	    //Now we don't care about the useful chunks, but the keys ( whose groups are the same as the number of chunks)
	    for (int i=0;i<useful_chunks_in_heap;i++)
	    {
		    //insert into heap_keyshares file
		    for(int j=0;j<number_of_interleaved_keys;j++)
			{
		    	byte temp = randomByte();
		    	byte[] temparray=new byte[1];
		    	temparray[0]=temp;
		    	keys[j].add(temp);
		    	heap_keyshares_file.write(temparray);
			}
	    }
	    
	    //inserting keyshares into stack keyshare file
	    useful_chunks_in_stack=find_useful_chunks_needed_to_allocate_in_mem(
	    				total_bytes_trying_to_allocate_in_stack,
	    				useful_bytes_between_keys_in_stack,
	    				num_of_keys_in_stack,
						num_of_mac_bytes);
	    //Now we don't care about the useful chunks, but the keys
	    for (int i=0;i<useful_chunks_in_stack;i++)
	    {
		    //insert into stack_keyshares file
		    for(int j=0;j<number_of_interleaved_keys;j++)
			{
		    	byte temp = randomByte();
		    	byte[] temparray=new byte[1];
		    	temparray[0]=temp;
		    	keys[j].add(temp);
		    	stack_keyshares_file.write(temparray);
			}
	    }
	    
	    
	    //taking into account the global keyshares as well
	    for(int i=0;i<global_keys.length;i++)
			{
		    	byte temp = global_keys[i];
		    	keys[i%number_of_interleaved_keys].add(temp);
			}
			
		
	    
	    System.out.println("");
	    
	    for(int i=0;i<number_of_interleaved_keys;i++)
	    {
	    	try
	    	{
	    		System.out.printf("Keyshare %d : 0x%02X \n",i, xor(keys[i]));
	    		//write all keyshares into the file for verification
	    		byte[] temparray=new byte[1];
	    		temparray[0]=xor(keys[i]);
	    		all_keyshares_file_for_verification.write(temparray);
	    		
	    	}
	    	catch(IndexOutOfBoundsException e)
	    	{
	    		System.out.println("Index out of bounds in Xor! Perhaps none of the keys were populated with values... And most likely this is because arr[i+1] did not have the value we expected it to have");
	    		System.out.println("Index of error: i="+i);
	    		System.exit(-1);
	    	}
	    }
	    
	    fw.write(arr);
	    fw.flush();
	    fw.close();
	    heap_keyshares_file.flush();
	    heap_keyshares_file.close();
	    stack_keyshares_file.flush();
	    stack_keyshares_file.close();
	    all_keyshares_file_for_verification.flush();
	    all_keyshares_file_for_verification.close();
	    /*Giving execute permissions*/
	    Process p = r.exec("chmod +x " + newfilename );
	    p.waitFor();
		System.out.println("Number of nop groups replaced: "+number_of_nop_groups_replaced);
		if (number_of_nop_groups_replaced<=20)
		{
			System.out.println("ALERT: The number of nop groups replaced is too low!. THATS MOST LIKELY AN ERROR. Most likely the jmp was more than 127 bytes!");
			System.out.println("!!!!!!!!!!");
		}
	}
	
	static byte xor(ArrayList<Byte> list)
	{
		byte b = list.get(0);
		for(int i=1;i<list.size();i++)
		{
			b = (byte)(b^list.get(i));
		}
		return b;
	}
	static byte randomByte()
	{
		return (  (byte) ((int)Math.floor((Math.random()*256)))  ); 
	}
	
	static boolean k_nops_after_us(int k, byte[] arr, int arrindex)  
	{
		int i=arrindex+2; //we start where we expect the first nop to be found
		if (arr.length<=i+k)
			return false;
		for(int j=1;j<=k;j++,i++)
		{
			if (arr[i]!= (byte) 0x90) //NOP opcode
				return false;
		}
		return true;
	}
	
	static long find_useful_chunks_needed_to_allocate_in_mem(long ttl_bytes,int useful_bytes,int key_bytes, int mac_bytes)
	{
		long useful_chunks=(long)((ttl_bytes)/(useful_bytes+key_bytes+mac_bytes)); //this should be an integer, If not, we should allocate a bit more. 
		if (useful_chunks*useful_bytes+(useful_chunks)*key_bytes+(useful_chunks)*mac_bytes==ttl_bytes)
		{
			return (useful_chunks);
		}
		else
		{
			return (useful_chunks+1);
		}
	}
	

	static boolean produced_bad_opcode( byte[] random_bytes_generated,int number_of_interleaved_keys, int number_of_canaries,int number_of_mac_bytes,int bytes_for_instr_len,int number_of_padded_nops,int pos,byte canary_value)
	{
		for (int i=0;i<number_of_canaries;i++)
		{
			if (random_bytes_generated[pos-i]!=canary_value)
				return false;
		}
		if (random_bytes_generated[pos-number_of_canaries]!=(number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len+number_of_padded_nops))
			return false;
		if (random_bytes_generated[pos-number_of_canaries-1]!=-21) // -21=jmp opcode
			return false;
			
		return true;
	}
	
	static byte[] calculate_mac(int length_of_mac, int length_of_useful_bytes, byte[] stuff_to_be_maced,int num_of_mac_bytes) throws IOException,InterruptedException
	{
		byte[] mac= new byte[num_of_mac_bytes];
		int[] args= new int[2048];
		char[] mac_as_chars=new char[4096];
		int cnt=0;
		int cnt2=0;
		String mac_calculator_filename=new File("../code/calc_mac_for_external_programs").getAbsolutePath();
		String exec_str="";
		
		args[0]=length_of_mac;
		args[1]=length_of_useful_bytes;
		for (int i=0;i<length_of_mac;i++)
		{
			args[i+2]=(int)stuff_to_be_maced[i];
		}
		exec_str+=mac_calculator_filename+" "+args[0]+" "+args[1]+" ";
		for (int i=0;i<length_of_mac;i++)
		{
			exec_str+=args[i+2]+" ";
		}
		
		//exec the mac calculator
		Runtime runtime = Runtime.getRuntime();
		Process process = runtime.exec(exec_str);
		BufferedInputStream macinputstream= new BufferedInputStream(process.getInputStream());
		process.waitFor();
		
		while(macinputstream.available()>0)
        {
            // read the byte and convert the integer to character
            char c = (char)macinputstream.read();
            mac_as_chars[cnt]=c;
            cnt++;
		}
		String mac_as_str=new String(mac_as_chars);
		String[] mac_parts=mac_as_str.split(" ");
		
		cnt2=0;
		for (String i:mac_parts)
		{
			if (i.trim().length()>0)
			{
				mac[cnt2]=(byte)Integer.parseInt(i.trim());
				cnt2++;
			}
		}
		
		return mac;
	}
	
}
