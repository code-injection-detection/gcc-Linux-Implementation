import java.util.*;
import java.io.*;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.*;
import java.lang.StringBuilder;

/*
 * This code reads a compiled exe file and then locates the nop instructions
 * and replaces them with the key share and mac values. Also, it replaces some other bytes inside the executable too.
 * 
 */ 

public class Secure_Machine_Code_new {
	
	static boolean split_the_blocks_when_the_secure_cpu_would=false; 
	static int number_of_nops_to_denote_program_start=300;
	static int overhead_for_verif=7;
	static int size_of_jmp_command=5;
	static int bytes_for_instr_len=2;
	static boolean verify_everything; //everything calculated world

	
	public static void main(String[] args) throws Exception
	{
		
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
		
		int number_of_interleaved_keys = 32; //this should be equal to the number of nops we insert in Secure_Assembly.java (now that we assume that 1 NOP = 1key)
		int num_of_keys_in_heap=32; //this should be equal to the number of keys we interleave in the heap
		int num_of_keys_in_stack=32; //this should be equal to the number of keys we interleave in the stack
		int useful_bytes_between_keys_in_heap=8;
		int useful_bytes_between_keys_in_stack=8;
		int num_of_mac_bytes=16;
		long total_bytes_trying_to_allocate_in_heap=2048;
		long total_bytes_trying_to_allocate_in_stack=1024;
		long useful_chunks_in_heap;
		long useful_chunks_in_stack;
		int number_of_canaries=2;
		int cnt_for_instr_bytes=0; //counts the useful bytes that come before the keyshares
		byte canary_value=0x42; //says:after me, keyshares follow!
		boolean check_code_verification_on_the_fly=false;
		int num_of_bytes_in_code_chunk=20;
		int number_of_padded_nops=0;
		int cnt_for_useful_bytes=0;
		boolean do_not_mac_what_we_add_in_code=true;
		boolean ignore_macs_even_if_there_are_mac_bytes=false;
				
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		FileInputStream fr = new FileInputStream(new File(filename));
		FileOutputStream fw = new FileOutputStream(new File(newfilename));
		ArrayList<Byte> list = new ArrayList<Byte>();

		FileOutputStream heap_keyshares_file = new FileOutputStream(new File(heap_keys_filename));
		FileOutputStream stack_keyshares_file = new FileOutputStream(new File(stack_keys_filename));
		FileOutputStream all_keyshares_file_for_verification=new FileOutputStream(new File(all_keyshares_filename));
		Path path = FileSystems.getDefault().getPath(global_keys_filename);
		byte [] global_keys = Files.readAllBytes(path);
		byte[] stuff_in_code_to_be_MACed=new byte[40000];
		boolean squeeze_keys_when_macing=false;
		boolean add_the_padded_nops_in_the_mac_in_fixed_size=false;
		
		if (args.length==15)
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
			
			num_of_bytes_in_code_chunk=Integer.parseInt(args[8]);
			
			if (Integer.parseInt(args[9])==0)
				do_not_mac_what_we_add_in_code=false;
			else
				do_not_mac_what_we_add_in_code=true;
				
			if (Integer.parseInt(args[10])==0)
				ignore_macs_even_if_there_are_mac_bytes=false;
			else
				ignore_macs_even_if_there_are_mac_bytes=true;
			
			if (Integer.parseInt(args[11])==0)
				squeeze_keys_when_macing=false;
			else
				squeeze_keys_when_macing=true;
			
			if (Integer.parseInt(args[12])==0)
				add_the_padded_nops_in_the_mac_in_fixed_size=false;
			else
				add_the_padded_nops_in_the_mac_in_fixed_size=true;
			
			if (Integer.parseInt(args[13])==0)
				split_the_blocks_when_the_secure_cpu_would=false;
			else
				split_the_blocks_when_the_secure_cpu_would=true;
				
			if (Integer.parseInt(args[14])==0)
				verify_everything=false;
			else
				verify_everything=true;

		}
		else
		{
			System.out.println("Incorrect number of arguments!");
			System.exit(-1);
		}
		
		if (verify_everything && ignore_macs_even_if_there_are_mac_bytes)
		{
			System.out.println("Secure_Machine_Code_new: Impossible configuration. Both verify_everything and ignore_macs_even_if_there_are_mac_bytes set.");
			System.exit(-1);
		}
		
		if (verify_everything && num_of_mac_bytes==0)
		{
			System.out.println("Secure_Machine_code_new: Impossible configuration. Both verify_everything and num_of_mac_bytes==0.");
			System.exit(-1);
		}
		
		if (num_of_mac_bytes==0 && ignore_macs_even_if_there_are_mac_bytes)
		{
			System.out.println("Secure_Machine_Code_new: Impossible configuration. Both ignore_macs_even_if_there_are_mac_bytes and num_of_mac_bytes==0.");
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
	    cnt_for_instr_bytes=0; //these two counters count for every block
	    cnt_for_useful_bytes=0;
	    cnt_for_useful_bytes=0;
	    number_of_padded_nops=num_of_bytes_in_code_chunk-cnt_for_useful_bytes;

	    //iterate over the bytes of the executable
	    for(int i=0;i<n-(size_of_jmp_command+number_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len+num_of_bytes_in_code_chunk);) //the num_of_bytes_in_code_chunk is not correct, but works since there is no code in the last part of the executable
	    {
	    	//find the start of the code
			if (k_nops_after_us(number_of_nops_to_denote_program_start,arr,i-size_of_jmp_command) && arr[i+number_of_nops_to_denote_program_start]!=(byte)0x90)  //-size_of_jmp_command because the funtions adds +size_of_jmp_command
			{
				//System.out.println("found 300 nops at position "+i);
				cnt_for_instr_bytes=0;
				i+=number_of_nops_to_denote_program_start;
				cnt_for_useful_bytes=0;
				number_of_padded_nops=num_of_bytes_in_code_chunk-cnt_for_useful_bytes;
			}
			//find a jmp+proper offset+correct_number_of_nops
			int number_of_jumped_bytes1 =(number_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len+(number_of_padded_nops-size_of_jmp_command));
			int number_of_jumped_bytes2;
			if (split_the_blocks_when_the_secure_cpu_would || verify_everything) //possible label encouter, we jump over the verification too, since it will not be executed, unless we jmp into the label
			{
				number_of_jumped_bytes2=(number_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len+(number_of_padded_nops-size_of_jmp_command +overhead_for_verif /*7=verif code length*/));
			}
			else
			{
				number_of_jumped_bytes2=number_of_jumped_bytes1;
			}
			
			//get next 4 bytes of cmd
			byte[] bytes_after_current_cmd=new byte[size_of_jmp_command-1];
			for (int j=0;j<size_of_jmp_command-1;j++)
			{
				bytes_after_current_cmd[j]=arr[i+1+j];
			}
			ByteBuffer wrapped = ByteBuffer.wrap(bytes_after_current_cmd); // big-endian by default
			wrapped.order(ByteOrder.LITTLE_ENDIAN); //now little endian
			int integer_after_current_cmd=wrapped.getInt(); //holds the next 4 bytes as integer

	    	if(arr[i]==(byte)0xe9 /*0xe9, jmp opcode*/ && (integer_after_current_cmd == number_of_jumped_bytes1 || integer_after_current_cmd == number_of_jumped_bytes2 ) && (number_of_padded_nops>=0) && ( k_nops_after_us(number_of_jumped_bytes1,arr,i) || k_nops_after_us(number_of_jumped_bytes2,arr,i) )) // 0xe9 = jmp opcode, and the arr[i+1....] has to be the offset (number of nops + 1 ) , and we have to have num_of_keys NOPs after us
	    	{
				
				if (num_of_mac_bytes>0)
					cnt_for_instr_bytes+=size_of_jmp_command;
				

				cnt_for_useful_bytes+=size_of_jmp_command;
				number_of_padded_nops=num_of_bytes_in_code_chunk-cnt_for_useful_bytes;
				if (cnt_for_useful_bytes>32767) //well if you break that then you have made a mistake somewhere else...
				{
					System.out.println("Error. Too many assembly commands (32767 bytes in size) in one chunk of useful bytes. Count: "+cnt_for_useful_bytes+" at position: "+i);
					System.exit(-3);
				}

    			//System.out.println("i,number_of_padded_nops,cnt_for_instr_bytes "+i+" "+number_of_padded_nops+" "+cnt_for_instr_bytes);
				//System.out.flush();

				number_of_nop_groups_replaced++;
				//insert canaries
				for(int j=0;j<number_of_canaries;j++)
				{
					arr[i+size_of_jmp_command+j] = (byte)canary_value;
				}
				
				//set the bytes after the canaries to denote the length of the useful bytes
				//first turn the number into bytes
				ByteBuffer dbuf = ByteBuffer.allocate(2);
				dbuf.order(ByteOrder.LITTLE_ENDIAN);
				dbuf.putShort((short)cnt_for_useful_bytes);
				byte[] bytes_of_cnt_of_useful_bytes = dbuf.array();
				for(int j=0;j<bytes_for_instr_len;j++)
				{
					arr[i+size_of_jmp_command+j+number_of_canaries] = bytes_of_cnt_of_useful_bytes[j];
				}


    			
				byte[] random_bytes_generated= new byte[number_of_interleaved_keys]; //to check accidental creation of "used" opcodes
	    		//put the keys
				for(int j=0;j<number_of_interleaved_keys;j++)
	    		{
	    			byte temp = randomByte();
	    					
	    			random_bytes_generated[j]=temp;
	    			
					//the probability that we will accidentally generate <jmp><proper opcode><canaries> is very low and we ignore it at this time.
    				arr[i+size_of_jmp_command+j+number_of_canaries+bytes_for_instr_len+number_of_padded_nops] = temp;
    				keys[j].add(temp);    				
	    		}
	    		
				i+=(size_of_jmp_command+number_of_interleaved_keys+number_of_canaries+bytes_for_instr_len+number_of_padded_nops); //jump above them and reach the mac bytes
				//ok now we have the following problem: When we are at the end of the padded nops, we would want to know the number of the useful bytes
				//so we implement the following convention:
				//get the last 2 bytes. Check if before them there are the canaries, if yes then there are no padded nops and they contain the number you want.
				//if the canaries are not there, check if they are one byte behind (there is only one padded nop)
				//if the canaries are not there either, the value of the last 2 padded nops will have been replaced by the number you want. Get that value.
				//write the number of the actual commands in the last padded nop bytes
				if (number_of_padded_nops!=1)
				{
					for(int j=0;j<bytes_for_instr_len;j++)
					{
						arr[i-number_of_interleaved_keys-bytes_for_instr_len+j] = bytes_of_cnt_of_useful_bytes[j];
					}	
				}
				
				
				if (num_of_mac_bytes>0)
				{
					//time to set the proper MACs
					for (int j=0;j<cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len+number_of_interleaved_keys+number_of_padded_nops;j++)
					{
						//copy bytes
						stuff_in_code_to_be_MACed[j]=arr[i-(cnt_for_instr_bytes+number_of_interleaved_keys+number_of_canaries+bytes_for_instr_len+number_of_padded_nops)+j];
					}
					
					byte[] digest;
					if (do_not_mac_what_we_add_in_code) //if we don't mac what we've added to the code (verification code, jmps etc)
					{
						int length_of_verifier_in_fixed_chunks=overhead_for_verif;
						if (ignore_macs_even_if_there_are_mac_bytes)
						{
							length_of_verifier_in_fixed_chunks=0;
						}
						int nops_padded=0;
						int length_of_verifier=length_of_verifier_in_fixed_chunks;
						nops_padded=number_of_padded_nops;
						byte[] new_stuff_in_code_to_be_MACed=new byte[60480];
						//throw away what we've put in the code (verifier,jmp etc)
						int cnt_in_new_mac=0;
						int all_bytes_length=cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len+number_of_interleaved_keys+number_of_padded_nops;
						int start_of_jmps_and_other=cnt_for_instr_bytes-size_of_jmp_command;
						int end_of_jmps_and_other=cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len;
						int start_of_nops=cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len;
						int end_of_nops=cnt_for_instr_bytes+number_of_canaries+bytes_for_instr_len;
						end_of_nops+=nops_padded;
						
						//iterate through the bytes, ignoring what we shouldn't mac
						for (int cnt_in_old_mac=0;cnt_in_old_mac<all_bytes_length;cnt_in_old_mac++)
						{
							if (((check_code_verification_on_the_fly && !ignore_macs_even_if_there_are_mac_bytes)|| verify_everything) && cnt_in_old_mac<length_of_verifier)
							{
								; //do nothing
							}
							else if (cnt_in_old_mac<end_of_jmps_and_other && cnt_in_old_mac>=start_of_jmps_and_other)
							{
								; //do nothing
							}
							else if (cnt_in_old_mac<end_of_nops && cnt_in_old_mac>=start_of_nops && add_the_padded_nops_in_the_mac_in_fixed_size==false)
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
				

				cnt_for_useful_bytes=0;
				number_of_padded_nops=num_of_bytes_in_code_chunk-cnt_for_useful_bytes; //reset it
				
	    	}
	    	else
	    	{ //done for every command that is not a jmp over keys and macs
				if (num_of_mac_bytes>0)
					cnt_for_instr_bytes++;
					
				cnt_for_useful_bytes++;
				number_of_padded_nops=num_of_bytes_in_code_chunk-cnt_for_useful_bytes;
				i++;
			}
	    }
		
	    //System.out.println("Number of interleaved nops:" + number_of_interleaved_nops);
	    
	    
	    //inserting keyshares into heap keyshare file
	    useful_chunks_in_heap=find_useful_chunks_needed_to_allocate_in_mem(
	    				total_bytes_trying_to_allocate_in_heap,
	    				useful_bytes_between_keys_in_heap,
	    				num_of_keys_in_heap,
						num_of_mac_bytes);
	    //Now we don't care about the useful chunks, but the keys ( whose groups are the same as the number of chunks)
    	//important: the next array can be up to 2gb of size, write the bytes one by one if you need more size
	    byte[] heap_keys_to_be_written=new byte[(int)useful_chunks_in_heap*(int)number_of_interleaved_keys];
	    for (int i=0;i<useful_chunks_in_heap;i++)
	    {
		    //insert into heap_keyshares file
		    for(int j=0;j<number_of_interleaved_keys;j++)
			{
		    	byte temp = randomByte();
		    	byte[] temparray=new byte[1];
		    	temparray[0]=temp;
		    	keys[j].add(temp);
		    	heap_keys_to_be_written[i*number_of_interleaved_keys+j]=temp;
		    	//heap_keyshares_file.write(temparray); //write bytes one by one if heap > 2gb
			}
	    }
	    heap_keyshares_file.write(heap_keys_to_be_written);
	    
	    //inserting keyshares into stack keyshare file
	    useful_chunks_in_stack=find_useful_chunks_needed_to_allocate_in_mem(
	    				total_bytes_trying_to_allocate_in_stack,
	    				useful_bytes_between_keys_in_stack,
	    				num_of_keys_in_stack,
						num_of_mac_bytes);
	    //Now we don't care about the useful chunks, but the keys
	    //max size of next array: 2gb!
	    byte[] stack_keys_to_be_written=new byte[(int)useful_chunks_in_stack*(int)number_of_interleaved_keys];
	    for (int i=0;i<useful_chunks_in_stack;i++)
	    {
		    //insert into stack_keyshares file
		    for(int j=0;j<number_of_interleaved_keys;j++)
			{
		    	byte temp = randomByte();
		    	byte[] temparray=new byte[1];
		    	temparray[0]=temp;
		    	keys[j].add(temp);
		    	stack_keys_to_be_written[i*number_of_interleaved_keys+j]=temp;
		    	//stack_keyshares_file.write(temparray);
			}
	    }
	    stack_keyshares_file.write(stack_keys_to_be_written);
	    
	    
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
	
	//check if there are k nops after the current position
	static boolean k_nops_after_us(int k, byte[] arr, int arrindex)  
	{
		int k_new=k;
		int i=arrindex+size_of_jmp_command; //we start where we expect the first nop to be found
		if (arr.length<=i+k_new)
			return false;
		for(int j=1;j<=k_new;j++,i++)
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
	
	
	//calculate mac given an array, it calls an exteral C program
	static byte[] calculate_mac(int length_of_mac, int length_of_useful_bytes, byte[] stuff_to_be_maced,int num_of_mac_bytes) throws IOException,InterruptedException
	{
		byte[] mac= new byte[num_of_mac_bytes];
		int[] args= new int[60480];
		char[] mac_as_chars=new char[4096];
		int cnt=0;
		int cnt2=0;
		String mac_calculator_filename=new File("../code/calc_mac_for_external_programs").getAbsolutePath();
		String exec_str="";
		
		args[0]=length_of_mac; //first argument
		args[1]=length_of_useful_bytes; //second argument
		for (int i=0;i<length_of_mac;i++) //rest of the arguments
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
