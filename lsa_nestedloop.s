	b ls18
	b ls18
ls18:
; This is a nested loop program I wrote using DWelch's branch table
; lesson for the lsa-sim. 
	llz r8,#0x02
	llz r11,#0x03
	lhz r7,#0xFF	
	and r8,r11
	lpc r14,first
	lhz r12,#0xFF
	ll  r12,#0xFC
	lhz r18,#0xFF
	ll  r18,#0xFE
	llz r19,#0x02
firstfirst:
	lpc r6,branch_table_add
	lpc r5,backup
	;ldw r5,[r5]	
here:	
	llz r10,#0x00
	llz r8,#0x01	
	add r6,r8
	ldw r9,[r6]
	
	b r9
	halt

lab00:
	llz r10,#0x30
		
	stw [r7],r10
	b r5
lab01:
	llz r10,#0x31
	stw [r7],r10
	b r5
lab02:
	llz r10,#0x32
	stw [r7],r10
	b r5
lab03:	
	llz r10,#0x33
	stw [r7],r10
	b r5
done:
	stw [r7],r10
	; check for v
	stw [r7],r12
	add r12,r19	
	bnz r14
	

	halt


backup: .word =here
first: .word =firstfirst
branch_table_add: .word =branch_table
branch_table:
	.word =lab00
	.word =lab01
	.word =lab02
	.word =lab03
	.word =done	
			
