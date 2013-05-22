ASMfun
======

Simple assembly programs written for hardware simulators

lsa_nestedloop.s: Runs on the LSA-sim from Dwelch (https://github.com/dwelch67/lsasim)
Uses a branch table to execute a nested loop, demonstrating both these functionalities.
The loop counts in intervals of 0x6 (6 hexadecimal digits) from 0xFFFF, each time performing
one iteration of the branch table, which simply executes some jumps and shows the values 0x0031,0x0032,0x0033
and 0x0000. Program terminates when counter reaches zero.

lc3_recurs.asm: Runs on the LC3-sim from Dwelch (https://github.com/dwelch67/lc3)
Uses recursion to count down from 0x00EF to zero while simultaneously performing another looped subtraction, storing both results + return addresses in a stack frame, and then terminating upon reaching zero. 
