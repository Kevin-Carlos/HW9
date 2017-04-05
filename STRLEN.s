		;		STRLEN
		;		Kevin Carlos
		;		4 April 2017
		;		v1.00
		ldr		r0, =string
		ldr		r1, [r0]
		str		r0, [sp, #-4]! ;push values onto stack to preserve
		str		r1, [sp, #-4]!
		bl		STRLEN
RET		bl		EXIT
STRLEN	cmp		r1, #0 ;compare for nullbyte
		beq		RET	;exit program
		adds		r2, r2, #1 ;increment counter
		adds		r1, r1, #-1 ;decrement string
		mov		r7, r2	;store the value into r7
		bal		STRLEN
		
EXIT		ldr		r1, [sp], #4
		ldr		r0, [sp], #4
		mov		r2, #0
		adds		r7, r7, #-1 ;decrement to subtract null byte
		
		
		;		data
		;		not sure how to load a string
		;		Googling gives me .ascii or .asczi but visUAL doesn't accept that
string	dcd		12 ;equal to the length of "Hello World + null terminating"
		;string	asciz "Hello World"
		END
