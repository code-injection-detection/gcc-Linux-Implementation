/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2018 Intel Corporation. All rights reserved.
 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */
#include <stdio.h>
#include "pin.H"

char const trace_str[] = "Line_for_trace->";
FILE * trace;
unsigned long total_lines=0;
int lines_till_flush=0;
/*
static INS our_ins;
static unsigned long our_ins_size;
static unsigned long our_ins_addr;
*/

// This function is called before every instruction is executed
// and prints the IP
/*
VOID printip(VOID *ip, UINT64 insAddr,UINT64 insSize,std::string insDis) {
    fprintf(trace, "IP=%p | INS_ADDR=%ld | I_SZ=%ld | DISAS=%s\n", ip,insAddr,insSize,insDis.c_str()); 
    //fprintf(trace, "Instr_addr=%ld, Instr_size=%ld, Disassebled_str=%s\n",insAddr,insSize,insDis.c_str()); 
    fflush(trace);
}
*/
VOID printip(VOID *ip, UINT64 insAddr,UINT64 insSize) {
	total_lines++;
	lines_till_flush++;
    //fprintf(trace, "IP=%p | INS_ADDR=%ld | I_SZ=%ld | DISAS=%s\n", ip,insAddr,insSize,insDis.c_str()); 
    //fprintf(trace, "Instr_addr=%ld, Instr_size=%ld, Disassebled_str=%s\n",insAddr,insSize,insDis.c_str()); 
    fprintf(trace, "%sINS_ADDR=%p|I_SZ=%ld\n",trace_str,(void *)insAddr,insSize); 
    if (lines_till_flush==5000)
    {
		lines_till_flush=0;
		fflush(trace);
	}
}

// Pin calls this function every time a new instruction is encountered
VOID Instruction(INS ins, VOID *v)
{
    /*our_ins=ins;
    our_ins_size=INS_Size(ins);
    our_ins_addr=INS_Address(ins);*/
    // Insert a call to printip before every instruction, and pass it the IP
    //INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)printip, IARG_INST_PTR, IARG_ADDRINT,INS_Address(ins),IARG_UINT64,INS_Size(ins), IARG_PTR, new string(INS_Disassemble(ins)), IARG_END);
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)printip, IARG_INST_PTR, IARG_ADDRINT,INS_Address(ins),IARG_UINT64,INS_Size(ins),IARG_END);
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    fprintf(trace, "%s#eof , total_lines=%lu\n",trace_str,total_lines);
    fclose(trace);
}

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
    PIN_ERROR("This Pintool prints the IPs of every instruction executed\n" 
              + KNOB_BASE::StringKnobSummary() + "\n");
    return -1;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char * argv[])
{
    trace = fopen("/tmp/pintool_tracefiles/progout_fifo_itrace", "a");
    
    // Initialize pin
    if (PIN_Init(argc, argv)) return Usage();

    // Register Instruction to be called to instrument instructions
    INS_AddInstrumentFunction(Instruction, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
