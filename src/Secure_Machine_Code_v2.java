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
 * This code reads a compiled executable file and then locates the nop instructions
 * and replaces them with the key share and mac values.
 * It also produces keyshares for the heap and stack bytes.
 */ 

public class Secure_Machine_Code_v2 {
	
	static int number_of_nops_to_denote_program_start=300;
	static int overhead_for_verif=7;
	static int size_of_jmp_command=5;
	static int bytes_for_instr_len=2;
	static int bytes_for_num_of_padded_nops_len=2; //2 bytes that denote the number of padded nops that will be inserted
	static int world; //1->No MACs no verification. 2-> Ignore MACs no verification, 3-> everything calculated world . 
					  //NOPs are padded in ALL worlds.
	static String filename_for_writing_bytes_to_be_maced="";
	static String filename_for_reading_mac_bytes="";
	static int num_that_denotes_end_of_needing_other_mac_calculations=-424242;
	static int sizeof_int=4;

	
	public static void main(String[] args) throws Exception
	{
		
		//use this if executing with automate.sh in code directory
		String filename = new File("../code/main_program_sec").getAbsolutePath();	
		String heap_keys_filename=new File("../code/heap_keyshares").getAbsolutePath();
		String stack_keys_filename=new File("../code/stack_keyshares").getAbsolutePath();
		String global_keys_filename=new File("../code/global_keyshares").getAbsolutePath();
		String all_keyshares_filename=new File("../code/all_keyshares_for_verification").getAbsolutePath();
		filename_for_writing_bytes_to_be_maced=new File("../code/communication_files/comm_file1").getAbsolutePath();
		filename_for_reading_mac_bytes=new File("../code/communication_files/comm_file2").getAbsolutePath();
		
		
		String newfilename = filename.substring(0,filename.length()-3)+"ksec";
		Runtime r = Runtime.getRuntime();
		int number_of_nop_groups_replaced=0;
		//int n = 2;
		
		int number_of_interleaved_keys = 32; //this should be equal to the number of nops we insert in Secure_Assembly_v2.java (now that we assume that 1 NOP = 1key)
		int num_of_keys_in_heap=32; //this should be equal to the number of keys we interleave in the heap
		int num_of_keys_in_stack=32; //this should be equal to the number of keys we interleave in the stack
		int useful_bytes_between_keys_in_heap=8;
		int useful_bytes_between_keys_in_stack=8;
		int num_of_mac_bytes=16;
		long total_bytes_trying_to_allocate_in_heap=2048;
		long total_bytes_trying_to_allocate_in_stack=1024;
		long useful_chunks_in_heap;
		long useful_chunks_in_stack;
		int number_of_canaries=3; 
		byte canary_value=(byte)0x42; //says:after me, keyshares follow!
		int num_of_requested_bytes_in_code_chunk=20;
		int number_of_padded_nops=0;
		int num_of_actual_bytes_in_block=0; //has the actual useful bytes that come before the keyshares
		boolean do_not_mac_what_we_add_in_code=true;
		boolean ignore_macs_even_if_there_are_mac_bytes=false;
				
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		FileInputStream fr = new FileInputStream(new File(filename));
		FileOutputStream fw = new FileOutputStream(new File(newfilename));
		ArrayList<Byte> list = new ArrayList<Byte>();

		//initialize all the readers/writers etc.
		FileOutputStream heap_keyshares_file = new FileOutputStream(new File(heap_keys_filename));
		FileOutputStream stack_keyshares_file = new FileOutputStream(new File(stack_keys_filename));
		FileOutputStream all_keyshares_file_for_verification=new FileOutputStream(new File(all_keyshares_filename));
		Path path = FileSystems.getDefault().getPath(global_keys_filename);
		
		
		File file_for_writing_bytes_to_be_maced= new File(filename_for_writing_bytes_to_be_maced);
		FileWriter filewriter_for_writing_bytes_to_be_maced = new FileWriter(file_for_writing_bytes_to_be_maced, true);
		PrintWriter printwriter_for_macs = new PrintWriter(filewriter_for_writing_bytes_to_be_maced);
		BufferedReader reader_of_mac_bytes = new BufferedReader(new FileReader(filename_for_reading_mac_bytes));
		

		//grab all the global keyshares
		byte [] global_keys = Files.readAllBytes(path);
		byte[] stuff_in_code_to_be_MACed=new byte[40000];
		boolean squeeze_keys_when_macing=false;
		 
		if (args.length==10)
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
			
			num_of_requested_bytes_in_code_chunk=Integer.parseInt(args[7]);

			if (Integer.parseInt(args[8])==0)
				squeeze_keys_when_macing=false;
			else
				squeeze_keys_when_macing=true;

			world=Integer.parseInt(args[9]);
		}
		else
		{
			System.out.println("Incorrect number of arguments!");
			System.exit(-1);
		}
		
		if ((world==3 || world==2) && num_of_mac_bytes==0)
		{
			System.out.println("Secure_Machine_Code_v2: Impossible configuration. Both world>1 and num_of_mac_bytes==0.");
			System.exit(-1);
		}


		if (world==1)
		{
			num_of_mac_bytes=0; //that is for convenience reasons, since we don't expect to find them
		}
		
		
		byte[] keys = new byte[number_of_interleaved_keys];
		//initialize the keys
		for(int i=0;i<number_of_interleaved_keys;i++)
		{
			keys[i]=0;
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
	    	arr[i] = list.get(i); //pass everything to arr
	    }
	    int n = arr.length;

	    //iterate over the bytes of the executable
	    for(int i=0;i<n-(size_of_jmp_command+number_of_interleaved_keys+number_of_canaries+num_of_mac_bytes+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+1);) 
	    {
	    	//find the start of the code
			if (k_nops_after_us(number_of_nops_to_denote_program_start,arr,i) && arr[i+number_of_nops_to_denote_program_start]!=(byte)0x90)  //-size_of_jmp_command because the funtions adds +size_of_jmp_command
			{
				//System.out.println("found 300 nops at position "+i);
				i+=number_of_nops_to_denote_program_start;
			}

			//find a jmp+proper offset+correct_number_of_nops
			ByteBuffer wrapped;
			int integer_after_current_cmd=-1;
			byte[] bytes_after_current_cmd;
			if (arr[i]==(byte)0xe9) //initial opcode of jmp.d32 that is used to jump over the keyshares+macs
			{
				//get next 4 bytes of cmd
				bytes_after_current_cmd=new byte[size_of_jmp_command-1];
				for (int j=0;j<size_of_jmp_command-1;j++)
				{
					bytes_after_current_cmd[j]=arr[i+1+j];
				}
				wrapped = ByteBuffer.wrap(bytes_after_current_cmd); // big-endian by default
				wrapped.order(ByteOrder.LITTLE_ENDIAN); //now little endian
				integer_after_current_cmd=wrapped.getInt(); //holds the next 4 bytes as integer
			}
			
			//is this jmp one that jumps over the keyshares+macs? (we need to find canaries for that)
	    	if (arr[i]==(byte)0xe9 /*0xe9, jmp opcode*/ && ( /*case when padded_nops==0*/ integer_after_current_cmd >= number_of_interleaved_keys+num_of_mac_bytes+number_of_canaries+bytes_for_num_of_padded_nops_len+bytes_for_instr_len )
	    		&& ( /*case when padded_nops==num_of_requested_bytes_in_code_chunk*/ integer_after_current_cmd <= number_of_interleaved_keys+num_of_mac_bytes+number_of_canaries+bytes_for_num_of_padded_nops_len+bytes_for_instr_len+num_of_requested_bytes_in_code_chunk )
	    		&& (k_canaries_after_us(number_of_canaries,arr,i+size_of_jmp_command,canary_value))
	    		&& ( k_nops_after_us(number_of_interleaved_keys+num_of_mac_bytes,arr,i+size_of_jmp_command+number_of_canaries+bytes_for_instr_len+bytes_for_num_of_padded_nops_len))
	    	) 
	    	{

	    		//get actual bytes in this block, INCLUDING verifications and final jmp
	    		byte[] bytes_with_num_of_actual_bytes_in_block;
	    		ByteBuffer wrapped_act_bytes;
	    		bytes_with_num_of_actual_bytes_in_block=new byte[sizeof_int]; //4 bytes for int
	    		for (int j=0;j<bytes_for_instr_len;j++)
				{
					bytes_with_num_of_actual_bytes_in_block[j]=arr[i+size_of_jmp_command+number_of_canaries+j];
				}
				for (int j=bytes_for_instr_len;j<sizeof_int;j++) //zero the rest of the bytes
				{
					bytes_with_num_of_actual_bytes_in_block[j]=(byte)0;
				}
				wrapped_act_bytes = ByteBuffer.wrap(bytes_with_num_of_actual_bytes_in_block); // big-endian by default
				wrapped_act_bytes.order(ByteOrder.LITTLE_ENDIAN); //now little endian
				num_of_actual_bytes_in_block=wrapped_act_bytes.getInt(); //holds the next 4 bytes as integer


				//do the same for the padded nops
				byte[] bytes_with_num_of_padded_nops;
	    		ByteBuffer wrapped_padded_nops;
	    		bytes_with_num_of_padded_nops=new byte[sizeof_int]; //must be long enough to hold an int
	    		for (int j=0;j<bytes_for_num_of_padded_nops_len;j++)
				{
					bytes_with_num_of_padded_nops[j]=arr[i+size_of_jmp_command+number_of_canaries+bytes_for_instr_len+j];
				}
				for (int j=bytes_for_num_of_padded_nops_len;j<sizeof_int;j++) //zero the rest of the bytes
				{
					bytes_with_num_of_padded_nops[j]=(byte)0;
				}
				wrapped_padded_nops = ByteBuffer.wrap(bytes_with_num_of_padded_nops); // big-endian by default
				wrapped_padded_nops.order(ByteOrder.LITTLE_ENDIAN); //now little endian
				number_of_padded_nops=wrapped_padded_nops.getInt(); //holds the next 4 bytes as integer

				//System.out.println("got jmp above keyshares, jmp offset="+integer_after_current_cmd+", actual_bytes="+num_of_actual_bytes_in_block+", padded_nops="+number_of_padded_nops);

				number_of_nop_groups_replaced++;


				//insert canaries
				for(int j=0;j<number_of_canaries;j++)
				{
					arr[i+size_of_jmp_command+j] = (byte)canary_value;
				}
				
   			
				byte[] random_bytes_generated= new byte[number_of_interleaved_keys];
	    		//put the keys
				for(int j=0;j<number_of_interleaved_keys;j++)
	    		{
	    			byte temp = randomByte();
	    					
	    			random_bytes_generated[j]=temp;
	    			
					//the probability that we will accidentally generate <jmp><a reasonable opcode><canaries> is very low and we ignore it at this time.
    				arr[i+size_of_jmp_command+j+number_of_canaries+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+number_of_padded_nops] = temp;
    				keys[j]^=temp;    				
	    		}
	    		
				i+=(size_of_jmp_command+number_of_interleaved_keys+number_of_canaries+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+number_of_padded_nops); //jump above them and reach the mac bytes
								
				
				if (num_of_mac_bytes>0) //world==2 or world==3 
				{
					//set the macs

					int num_of_useful_bytes_to_be_maced=num_of_requested_bytes_in_code_chunk-number_of_padded_nops;
					//we need to get the above number from the actual bytes that are in the block, that is, by removing the jmp above the keyshares and the verifications
					int start_of_block=i-(number_of_interleaved_keys+number_of_canaries+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+number_of_padded_nops+num_of_actual_bytes_in_block);
					int extra_bytes_because_of_verifications=(num_of_actual_bytes_in_block- size_of_jmp_command) /*bytes with verifications*/ - num_of_useful_bytes_to_be_maced;
					int start_of_keyshares=i- number_of_interleaved_keys;

					if ((world==3 && extra_bytes_because_of_verifications<overhead_for_verif) //we need to have at least one verif, at the start of the block
					 || extra_bytes_because_of_verifications%overhead_for_verif!=0 
					 || (world==2 && extra_bytes_because_of_verifications!=0) //we should ave no verification calls
					 )
					{
						System.out.println("ERROR in calculation of how many verifications are in a block!");
						System.out.println("Offset from start of file:"+start_of_block+" ,extra_bytes_because_of_verifications:"+extra_bytes_because_of_verifications);
						System.out.println("actual_bytes="+num_of_actual_bytes_in_block+", padded_nops="+number_of_padded_nops);
						System.out.println("world="+world);
						System.exit(-1);
					}

					int number_of_verifications_expected=extra_bytes_because_of_verifications/overhead_for_verif;
					int number_of_verifications_found=0;
					int ind_for_mixed_bytes_in_block=0;
					int ind_for_maced_bytes_in_block=0;
					//fetch the bytes of the useful block that will be included in the mac (that is, not the verification calls or the jmp above keyshares+macs)
					for (ind_for_maced_bytes_in_block=0;ind_for_mixed_bytes_in_block<num_of_actual_bytes_in_block-size_of_jmp_command;) //for some reason the break condition ind_for_maced_bytes_in_block<num_of_useful_bytes_to_be_maced does not seem to work
					{
						if (world==3 && in_front_there_seems_to_be_verif_call(start_of_block+ind_for_mixed_bytes_in_block,arr)) //have we encountered verification call?
						//skip the call
						{
							ind_for_mixed_bytes_in_block+=overhead_for_verif;
							number_of_verifications_found++;
						}
						else
						{
							stuff_in_code_to_be_MACed[ind_for_maced_bytes_in_block]=arr[start_of_block+ind_for_mixed_bytes_in_block];
							ind_for_mixed_bytes_in_block++;
							ind_for_maced_bytes_in_block++;
						}
					}

					if (number_of_verifications_found!=number_of_verifications_expected)
					{
						System.out.println("WARNING!!!!!! in postion "+start_of_block+" we had different number of verifications found and expected");
						System.out.println("verifications found: "+number_of_verifications_found+" ,verifications expected: "+number_of_verifications_expected);
						System.out.println("Continuing, but the MAC bytes may not be corrent in the binary. That will not alter the number of MAC verifications however.");
						System.out.println("actual_bytes="+num_of_actual_bytes_in_block+", padded_nops="+number_of_padded_nops);
						System.out.println("extra_bytes_because_of_verifications:"+extra_bytes_because_of_verifications);
						System.out.println("maced_useful_bytes_found:"+ind_for_maced_bytes_in_block+" ,maced_useful_bytes_expected:"+num_of_useful_bytes_to_be_maced);
					}

					if (ind_for_maced_bytes_in_block!=num_of_useful_bytes_to_be_maced)
					{
						System.out.println("WARNING!!!!!! in postion "+start_of_block+" we had different number of useful bytes to be maced that were found, and those expected");
						System.out.println("verifications found: "+number_of_verifications_found+" ,verifications expected: "+number_of_verifications_expected);
						System.out.println("Continuing, but the MAC bytes may not be corrent in the binary. That will not alter the number of MAC verifications however.");
						System.out.println("actual_bytes="+num_of_actual_bytes_in_block+", padded_nops="+number_of_padded_nops);
						System.out.println("extra_bytes_because_of_verifications:"+extra_bytes_because_of_verifications);
						System.out.println("maced_useful_bytes_found:"+ind_for_maced_bytes_in_block+" ,maced_useful_bytes_expected:"+num_of_useful_bytes_to_be_maced);
					}

					//set the padded nops
					for (int j=0;j<number_of_padded_nops;j++)
					{
						stuff_in_code_to_be_MACed[ind_for_maced_bytes_in_block+j]=(byte)0x90; //NOP opcode
					}
					ind_for_maced_bytes_in_block+=number_of_padded_nops;

					//set the keys
					for (int j=0;j<number_of_interleaved_keys;j++)
					{
						stuff_in_code_to_be_MACed[ind_for_maced_bytes_in_block+j]=arr[start_of_keyshares+j];
					}
					ind_for_maced_bytes_in_block+=number_of_interleaved_keys;
				
					byte[] digest;
					//calculate the mac
					digest=calculate_mac(ind_for_maced_bytes_in_block,ind_for_maced_bytes_in_block-number_of_interleaved_keys,stuff_in_code_to_be_MACed,num_of_mac_bytes,printwriter_for_macs,reader_of_mac_bytes);
					
					
					//and write the mac bytes into the appropriate place (in position "i")
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
				}
				
	    	}
	    	else
	    	{ //done for every command that is not a jmp over keys and macs
				i++;
			}
	    }
		
    
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
		    	keys[j]^=temp;
		    	heap_keys_to_be_written[i*number_of_interleaved_keys+j]=temp;
		    	/*
		    	//use the following if heap is > 2gb
		    	byte[] temparray=new byte[1];
		    	temparray[0]=temp;
		    	heap_keyshares_file.write(temparray); //write bytes one by one if heap > 2gb
		    	*/
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
		    	keys[j]^=temp;
		    	stack_keys_to_be_written[i*number_of_interleaved_keys+j]=temp;
		    	/*
		    	//use the following if stack is > 2gb
		    	byte[] temparray=new byte[1];
		    	temparray[0]=temp;
		    	stack_keyshares_file.write(temparray);
		    	*/
			}
	    }
	    stack_keyshares_file.write(stack_keys_to_be_written);
	    
	    
	    //taking into account the global keyshares as well
	    for(int i=0;i<global_keys.length;i++)
			{
		    	byte temp = global_keys[i];
		    	keys[i%number_of_interleaved_keys]^=temp;
			}
			
		
	    
	    System.out.println("");
	    
	    for(int i=0;i<number_of_interleaved_keys;i++)
	    {
    		System.out.printf("Keyshare %d : 0x%02X \n",i, keys[i]);
    		//write all keyshares into the file for verification
    		byte[] temparray=new byte[1];
    		temparray[0]=keys[i];
    		all_keyshares_file_for_verification.write(temparray);		
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
	    printwriter_for_macs.println(num_that_denotes_end_of_needing_other_mac_calculations);
	    printwriter_for_macs.flush();
	    printwriter_for_macs.close();
	    reader_of_mac_bytes.close();

	    /*Giving execute permissions*/
	    Process p = r.exec("chmod +x " + newfilename );
	    p.waitFor();
		System.out.println("Number of nop groups replaced: "+number_of_nop_groups_replaced);
		if (number_of_nop_groups_replaced<=20)
		{
			System.out.println("ALERT: The number of nop groups replaced is too low!. THATS MOST LIKELY AN ERROR.");
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
		int i=arrindex; //we start where we expect the first nop to be found
		if (arr.length<=i+k_new)
			return false;
		for(int j=1;j<=k_new;j++,i++)
		{
			if (arr[i]!= (byte) 0x90) //NOP opcode
				return false;
		}
		return true;
	}

	static boolean k_canaries_after_us(int k, byte[] arr, int arrindex, byte canary_value)  
	{
		int k_new=k;
		int i=arrindex; //we start where we expect the first canary to be found
		if (arr.length<=i+k_new)
			return false;
		for(int j=1;j<=k_new;j++,i++)
		{
			if (arr[i]!= (byte) canary_value)
				return false;
		}
		return true;
	}

	//checks if in front of us, there seems to be a mac verification call
	static boolean in_front_there_seems_to_be_verif_call(int pos, byte[] arr)
	{
		int i=pos;
		//specific to our implementation, verification is: pushfq, call verif_procedure, popfq
		byte first_byte_of_verif=(byte)0x9c; //pushf
		byte second_byte_of_verif=(byte)0xe8; //call
		byte last_byte_of_verif=(byte)0x9d; //popf

		if (arr[pos]==first_byte_of_verif && arr[pos+1]==second_byte_of_verif && arr[pos+overhead_for_verif-1]==last_byte_of_verif)
			return true;
		else
			return false;
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
	static byte[] calculate_mac(int length_of_mac, int length_of_useful_bytes, byte[] stuff_to_be_maced,int num_of_mac_bytes, PrintWriter printwriter_for_macs, BufferedReader reader_of_mac_bytes) throws IOException,InterruptedException
	{
		byte[] mac= new byte[num_of_mac_bytes];
		byte[] mac2= new byte[num_of_mac_bytes];
		int[] args= new int[60480];
		int cnt2=0;
		String str_with_bytes_to_be_maced="";
		String mac_as_str;
		String[] mac_parts;
		
		args[0]=length_of_mac; //first argument
		args[1]=length_of_useful_bytes; //second argument
		for (int i=0;i<length_of_mac;i++) //rest of the arguments
		{
			args[i+2]=(int)stuff_to_be_maced[i];
		}

		str_with_bytes_to_be_maced+=args[0]+" "+args[1]+" ";
		for (int i=0;i<length_of_mac;i++)
		{
			str_with_bytes_to_be_maced+=args[i+2]+" ";
		}
		

		//Writing the string with the bytes to be maced in the named pipe
		printwriter_for_macs.println(str_with_bytes_to_be_maced);
		printwriter_for_macs.flush();
		mac_as_str=reader_of_mac_bytes.readLine(); //reading the response of the C program into the other named pipe
		mac_parts=mac_as_str.split(" ");
		cnt2=0;
		for (String i:mac_parts)
		{
			if (i.trim().length()>0)
			{
				mac2[cnt2]=(byte)Integer.parseInt(i.trim()); //put the proper numbers in the array
				cnt2++;
			}
		}
		
		return mac2;
	}
	
}
