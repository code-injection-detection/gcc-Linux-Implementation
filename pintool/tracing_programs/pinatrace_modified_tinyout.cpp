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
/*
 *  This file contains an ISA-portable PIN tool for tracing memory accesses.
 */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include "pin.H"

char const trace_str[] = "Line_for_trace->";
FILE * trace;
unsigned long total_lines=0;
int lines_till_flush=0;
// Print a memory read record
/*
VOID RecordMemRead(VOID * ip, VOID * addr,UINT32 sz_of_mem_touched,std::string insDis)
{
    fprintf(trace,"IP=%p | op=R | memaddr=%p | sz=%d | DISAS=%s\n", ip, addr,sz_of_mem_touched,insDis.c_str());
    fflush(trace);
}
*/
VOID RecordMemRead(VOID * ip, VOID * addr,UINT32 sz_of_mem_touched)
{
	total_lines++;
	lines_till_flush++;
    fprintf(trace,"%sR|%p|%d\n", trace_str,addr,sz_of_mem_touched);
    if (lines_till_flush==5000)
    {
		lines_till_flush=0;
		fflush(trace);
	}
}

// Print a memory write record
/*
VOID RecordMemWrite(VOID * ip, VOID * addr,UINT32 sz_of_mem_touched,std::string insDis)
{
    fprintf(trace,"IP=%p | op=W | memaddr=%p | sz=%d | DISAS=%s\n", ip, addr,sz_of_mem_touched,insDis.c_str());
    fflush(trace);
}
*/
VOID RecordMemWrite(VOID * ip, VOID * addr,UINT32 sz_of_mem_touched)
{
	total_lines++;
	lines_till_flush++;
    fprintf(trace,"%sW|%p|%d\n", trace_str,addr,sz_of_mem_touched);
    if (lines_till_flush==5000)
    {
		lines_till_flush=0;
		fflush(trace);
	}
}

// Is called for every instruction and instruments reads and writes
VOID Instruction(INS ins, VOID *v)
{
    // Instruments memory accesses using a predicated call, i.e.
    // the instrumentation is called iff the instruction will actually be executed.
    //
    // On the IA-32 and Intel(R) 64 architectures conditional moves and REP 
    // prefixed instructions appear as predicated instructions in Pin.
    UINT32 memOperands = INS_MemoryOperandCount(ins);

    // Iterate over each memory operand of the instruction.
    for (UINT32 memOp = 0; memOp < memOperands; memOp++)
    {
        if (INS_hasKnownMemorySize(ins)==0)
        {
            printf("Error, this command (disas:%s | addr=%p) touches memory of unknown size.\n",INS_Disassemble(ins).c_str(),(void*)IARG_INST_PTR);
            fprintf(stderr,"Error, this command (disas:%s | addr=%p) touches memory of unknown size.\n",INS_Disassemble(ins).c_str(),(void*)IARG_INST_PTR);
            exit(-1);
        }

    
        if (INS_MemoryOperandIsRead(ins, memOp))
        {
            INS_InsertPredicatedCall(
                ins, IPOINT_BEFORE, (AFUNPTR)RecordMemRead,
                IARG_INST_PTR,
                IARG_MEMORYOP_EA, memOp,
                IARG_MEMORYREAD_SIZE,
                //IARG_PTR, new string(INS_Disassemble(ins)),
                IARG_END);
        }
        // Note that in some architectures a single memory operand can be 
        // both read and written (for instance incl (%eax) on IA-32)
        // In that case we instrument it once for read and once for write.
        if (INS_MemoryOperandIsWritten(ins, memOp))
        {
            INS_InsertPredicatedCall(
                ins, IPOINT_BEFORE, (AFUNPTR)RecordMemWrite,
                IARG_INST_PTR,
                IARG_MEMORYOP_EA, memOp,
                IARG_MEMORYWRITE_SIZE,
                //IARG_PTR, new string(INS_Disassemble(ins)),
                IARG_END);
        }
    }
}

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
    PIN_ERROR( "This Pintool prints a trace of memory addresses\n" 
              + KNOB_BASE::StringKnobSummary() + "\n");
    return -1;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char *argv[])
{
    if (PIN_Init(argc, argv)) return Usage();

    trace = fopen("/tmp/pintool_tracefiles/progout_fifo_dtrace", "a");

    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}
