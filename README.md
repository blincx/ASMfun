ASMfun
======

Simple assembly programs written for hardware simulators

NestedLoop: Runs on the LSA-sim from Dwelch (https://github.com/dwelch67/lsasim)
Uses a branch table to execute a nested loop, demonstrating both these functionalities.
The loop counts in intervals of 0x6 (6 hexadecimal digits) from FFFF, each time performing
one iteration of the branch table, which simply executes some jumps and shows the values 0x0031,0x0032,0x0033
and 0x0000. Program terminates when counter reaches zero. 
