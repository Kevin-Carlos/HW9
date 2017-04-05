		;		SCAN
		;		Kevin Carlos
		;		4 April 2017
		;		v1.00
		;
		ldr		r0, =LLST ;point to length of list
		ldr		r1, [r0] ;load value of list length
		ldr		r0, =LIST ;point to the list
		ldr		r2, =0 ;initialize max value to 0
scan1	ldrb		r3, [r0, +r1] ;read list element
		cmp		r2, r3		;compare if r2 > r3
		bhi		dec			;branch if
		mov		r2, r3			;else store new max val
dec		adds		r1, r1, #-1	;decrement counter
		bpl		scan1
		ldr		r0, =MAXVAL
		strb		r2, [r0]
		;		reinitialzie data
		ldr		r0, =LLST
		ldr		r1, [r0]
		ldr		r0, =LIST
		mov		r4, r2
scan2	ldrb		r5, [r0, +r1]
		cmp		r5, r4
		bls		dec2
		mov		r5, r4
dec2		adds		r1, r1, #-1
		bpl		scan2
		ldr		r0, =SMALLVAL
		strb		r5, [r0]
		
		
		;		data
SMALLVAL	dcb		0	;small val at 0x0150
MAXVAL	dcb		0 ;max val at 0x0154
LLST		dcb		10 ;length at 0x0158
bufferval	dcb		0
LIST		dcb		1, 6, 11, 72, 64, 99, 112, 4, 200, 14, 0
		
		END
