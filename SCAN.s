		;		SCAN
		;		Kevin Carlos
		;		4 April 2017
		;		v1.00
		;
		;		Length stored in 0x0158
		;		List begins at 0x0160
		ldr		r0, =LLST ;point to list length
		ldr		r1, [r0]	;
		;		data
SMALLV	dcb		0 		;at 0x0150
MAXV		dcb		0		;at 0x0154
LLST		dcb		10		;at 0x0158
buffer	dcb		0		;at 0x015C
LIST		dcb		45, 60, 11, 7, 8, 6, 4, 7, 6, 13, 0	;0x0160
		END
