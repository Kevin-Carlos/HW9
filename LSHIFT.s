			;		LSHIFT
			;		Kevin Carlos
			;		4 April 2017
			;		v1.00
			;
			ldr		r0, =values 	;load the 32 bits
			ldr		r1, [r0]
			ldr		r0, =shiftcount
			ldr		r2, [r0] 		;load the shift counter
storeval		mov		r3, r1, lsl r2	;store the value into memory
			ldr		r0, =result
			strb		r3, [r0]
			
			;data
values		dcb		1, 2, 3, 4 ;32 bits
shiftcount	dcb		8
result		dcb		0
			END
