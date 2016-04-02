import java.util.*;
import java.io.*;
/*
 * This code reads a compiled exe file and then locates the nop instructions
 * and replaces them with the key share values.
 * 
 */

public class Secure_Machine_Code {
	public static void main(String[] args) throws Exception
	{
		//use this if executing manually
		//String filename = new File("samples/Helloworldadd_sec").getAbsolutePath();
		//String heap_keys_filename=new File("samples/heap_keyshares").getAbsolutePath();
		//String memory_manager_filename=new File("samples/memory_manager.c").getAbsolutePath();
		
		
		//use this if executing with automate.sh in samples directory
		String filename = new File("../samples/Helloworldadd_sec").getAbsolutePath();	
		String heap_keys_filename=new File("../samples/heap_keyshares").getAbsolutePath();
		String memory_manager_filename=new File("../samples/memory_manager.c").getAbsolutePath();
		
		String newfilename = filename.substring(0,filename.length()-3)+"ksec";
		Runtime r = Runtime.getRuntime();
		int number_of_inserted_jmps=0;
		//int n = 2;
		
		int number_of_interleaved_nops = 5; //this should be equal to the number of nops we insert in Secure_Assembly.java (now that we assume that 1 NOP = 1key)
		int num_of_keys_in_heap=5; //this should be equal to the number of keys we interleave in the heap
		int useful_bytes_between_keys_in_heap=4;
		long total_bytes_trying_to_allocate_in_heap=1024;
		long useful_chunks;
		
		FileInputStream fr = new FileInputStream(new File(filename));
		FileOutputStream fw = new FileOutputStream(new File(newfilename));
		ArrayList<Byte> list = new ArrayList<Byte>();

		FileOutputStream heap_keyshares_file = new FileOutputStream(new File(heap_keys_filename));
		
		if (args.length==1)
		{
			number_of_interleaved_nops=Integer.parseInt(args[0]);
			num_of_keys_in_heap=number_of_interleaved_nops;
		}
		else if (args.length==2)
		{
			number_of_interleaved_nops=Integer.parseInt(args[0]);
			num_of_keys_in_heap=number_of_interleaved_nops;
			useful_bytes_between_keys_in_heap=Integer.parseInt(args[1]);	
		}
		else if (args.length==3)
		{
			number_of_interleaved_nops=Integer.parseInt(args[0]);
			num_of_keys_in_heap=number_of_interleaved_nops;
			useful_bytes_between_keys_in_heap=Integer.parseInt(args[1]);
			total_bytes_trying_to_allocate_in_heap=Integer.parseInt(args[2]);
		}
		
		ArrayList[] keys = new ArrayList[number_of_interleaved_nops];
		
		for(int i=0;i<number_of_interleaved_nops;i++)
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
	    for(int i=0;i<n-(2+number_of_interleaved_nops);i++)
	    {
	    	if(arr[i]==-21 && (arr[i+1] == (byte)(number_of_interleaved_nops)) && k_nops_after_us(number_of_interleaved_nops,arr,i)) // int -21 = jmp opcode, and the arr[i+1] has to be the offset (number of nops + 1 ) , and we have to have num_of_keys NOPs after us
	    	{
				number_of_inserted_jmps++;
	    		for(int j=0;j<number_of_interleaved_nops;j++)
	    		{
	    			byte temp = randomByte();
	    					
	    			/*
	    			    if (j==0)
						System.out.printf("0x%02x ",temp);
					*/
	    			
	    			//check not to accidentally produce opcode for <jmp> <number of nops>
	    			while (j>0 && temp==number_of_interleaved_nops && (byte) keys[j-1].get(keys[j-1].size()-1)==-21) // -21=jmp opcode
	    			{
	    				System.out.println("Accidentally created JMP <nops number> opcode!");
	    				temp = randomByte();
	    			}
	    				
	    			//inserting canary values to show that a RET is following. Temporary fix.
	    			if ((j==number_of_interleaved_nops-1 || j==number_of_interleaved_nops-2) && ( arr[i+2+number_of_interleaved_nops]==-61 || arr[i+2+number_of_interleaved_nops]==-53) ) //RET opcode in next
	    			{
	    				//if(j==num_of_keys-1) System.out.printf("found ret opcode!");
	    				arr[i+2+j] = (byte)0x11;
	    				keys[j].add((byte)0x11);
	    			}
	    			else
	    			{
	    				arr[i+2+j] = temp;
	    				keys[j].add(temp);
	    			}
	    		}
	    	}
	    }
		
	    //System.out.println("Number of interleaved nops:" + number_of_interleaved_nops);
	    //System.out.println("Number of ttl bts:" + total_bytes_trying_to_allocate_in_heap);
	    
	    
	    //inserting keyshares into heap keyshare file

	    useful_chunks=find_useful_chunks_allocated_in_heap(
	    				total_bytes_trying_to_allocate_in_heap,
	    				useful_bytes_between_keys_in_heap,
	    				num_of_keys_in_heap);
	    //Now we don't care about the useful chunks, but the keys
	    for (int i=0;i<useful_chunks-1;i++)
	    {
		    //insert into heap_keyshares file
		    for(int j=0;j<number_of_interleaved_nops;j++)
			{
		    	byte temp = randomByte();
		    	byte[] temparray=new byte[1];
		    	temparray[0]=temp;
		    	keys[j].add(temp);
		    	heap_keyshares_file.write(temparray);
			}
	    }
	    
	    
	    System.out.println("");
	    
	    for(int i=0;i<number_of_interleaved_nops;i++)
	    {
	    	try
	    	{
	    		System.out.printf("Keyshare %d : 0x%02X \n",i, xor(keys[i]));
	    	}
	    	catch(IndexOutOfBoundsException e)
	    	{
	    		System.out.println("Index out of bounds in Xor! Perhaps none of the keys were populated with values... And most likey this is because arr[i+1] did not have the value we expected it to have");
	    		System.out.println("Index of error: i="+i);
	    		System.exit(-1);
	    	}
	    }
	    
	    fw.write(arr);
	    fw.flush();
	    fw.close();
	    heap_keyshares_file.flush();
	    heap_keyshares_file.close();
	    /*Giving execute permissions*/
	    Process p = r.exec("chmod +x " + newfilename );
	    p.waitFor();
	    /*byte t = (byte)0xeb;
		System.out.println(randomByte() + " "+(t == 107 )+" "+t);*/
		System.out.println("Number of inserted jumps: "+number_of_inserted_jmps);
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
		for(int j=1;j<=k;j++,i++)
		{
			if (arr[i]!= (byte) 0x90) //NOP opcode
				return false;
		}
		return true;
	}
	
	static long find_useful_chunks_allocated_in_heap(long ttl_bytes,int useful_bytes,int key_bytes)
	{
		long useful_chunks=(long)((ttl_bytes+key_bytes)/(useful_bytes+key_bytes)); //this should be an integer, If not, we should allocate a bit more. 
		
		if (useful_chunks*useful_bytes+(useful_chunks-1)*key_bytes==ttl_bytes)
			return (useful_chunks);
		else
		{
			//total bytes= ((useful_chunks+1)*useful_bytes+(useful_chunks+1-1)*key_bytes);
			return (useful_chunks+1);
		}
	}
	
}
