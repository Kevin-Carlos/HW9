		;		ONES
		;		Kevin Carlos
		;		5 April 2017
		;		v1.00
		ldr		r0, =var
		ldr		r1, [r0] ;load the contents of 0x0154
		ldr		r2, =32
		ldr		r3, =0
count	adds		r2, r2, #-1 ;decrement
		cmp		r2, #0
		bls		finished
		lsr		r2, r2, #1
		bvs		count
		adds		r3, r3, #1 ;increment counter
		bal		count
finished	mov		r1, r3
		ldr		r0, =counter
		strb		r1, [r0]
		
		
		
		;data
counter	dcb		0
var		dcd		0x12345678
		
		END
