			;		Sub64 for ARM
			;		Kevin Carlos
			;		v1.00 3 April 2017
			;
			
			ldr		r0, =value1		; load first memory address
			ldr		r1, [r0]			;store value
			ldr		r0, =value11		;load second memory address
			ldr		r2, [r0]			;store valu0e
			orr		r3, r1, r2, lsl #16	;shift value to 16 bits
			str		r3, [r0, #0] 		;end first 32 bit number
			ldr		r0, =value2		;load second value memory address
			ldr		r4, [r0]			;store value
			ldr		r0, =value22		;load second value memory address
			ldr		r5, [r0]			;store value
			orr		r6, r4, r5, lsl #16	;shift value to 16 bits
			str		r6, [r0, #0]		;store value
			sub		r7, r6, r3		;subtract values
			ldr		r0, =result		;point top result address
			mov		r0, r7			;attempt to store value in address location
			
			
			
			;		data
value1		dcb		30 ;get the data into the necessary addressses
value11		dcb		30
bufferval		dcb		20
bufferval1	dcb		20
value2		dcb		10
value22		dcb		10
bufferresult	dcb		0
bufferresult1	dcb		0
result		dcb		0, 0
			END
