#!/bin/bash
gcc Helloworldadd.c -S
gcc Helloworldadd.s -o Helloworldadd
gcc Helloworldadd_sec.s -o Helloworldadd_sec
