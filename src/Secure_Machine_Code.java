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
		
		//use this if executing with automate.sh in samples directory
		String filename = new File("../samples/Helloworldadd_sec").getAbsolutePath();
		
		String newfilename = filename.substring(0,filename.length()-3)+"ksec";
		Runtime r = Runtime.getRuntime();
		int number_of_inserted_jmps=0;
		//int n = 2;
		
		int num_of_keys = 5; //this should be equal to the number of nops we insert in Secure_Assembly.java (now that we assume that 1 NOP = 1key)
		// 
		FileInputStream fr = new FileInputStream(new File(filename));
		FileOutputStream fw = new FileOutputStream(new File(newfilename));
		ArrayList<Byte> list = new ArrayList<Byte>();
		ArrayList[] keys = new ArrayList[num_of_keys];
		for(int i=0;i<num_of_keys;i++)
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
	    for(int i=0;i<n-(2+num_of_keys);i++)
	    {
	    	if(arr[i]==-21 && (arr[i+1] == (byte)(num_of_keys)) && k_nops_after_us(num_of_keys,arr,i)) // int -21 = jmp opcode, and the arr[i+1] has to be the offset (number of nops + 1 ) , and we have to have num_of_keys NOPs after us
	    	{
				number_of_inserted_jmps++;
	    		for(int j=0;j<num_of_keys;j++)
	    		{
	    			byte temp = randomByte();
	    					
	    			if (j==0)
						System.out.printf("0x%02x ",temp);
	    			//inserting canary values to show that a RET is following. Temporary fix.
	    			if ((j==num_of_keys-1 || j==num_of_keys-2) && ( arr[i+2+num_of_keys]==-61 || arr[i+2+num_of_keys]==-53) ) //RET opcode in next
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
		
	    for(int i=0;i<num_of_keys;i++)
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
	    /*Giving execute permissions*/
	    Process p = r.exec("chmod +x " + newfilename );
	    p.waitFor();
	    byte t = (byte)0xeb;
		System.out.println(randomByte() + " "+(t == 107 )+" "+t);
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
		return (byte)(Math.random()*128); 
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

}
