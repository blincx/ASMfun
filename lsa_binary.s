    b lsabin
    b lsabin
lsabin:
lhz r7,#0xFF
lhz r5,#0x31
ll  r5,#0x22
lhz r8,#0x11
ll  r8,#0x0A

startloop:
and r5,r8
stw [r7],r5
llz r2,#0xFE
xor r5,r8
stw [r7],r5
xor r5,r8
stw [r7],r5
add r8,r2
add r5,r2

stw [r7],r5

bz done

lpc r3,labelpoint
b r3

done:
halt


labelpoint: .word =startloop
