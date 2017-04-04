		;		FIND
		;		Kevin Carlos
		;		4 April 2017
		;		v1.00
		;
		ldr		r0, =normval 	;load values into registers
		ldr		r1, [r0]
		ldr		r0, =negval
		ldr		r2, [r0]		;end loading
		ldr		r0, =0
		subs		r3, r0, r2	;make negval negative by sub from 0
		cmp		r1, r4		;compare values
		bge		storeval		;if r1 > r4 store it
storeval	mov		r5, r1
		ldr		r0, =result	;store value into result
		strb		r5, [r0]
		
		
		;		data
normval	dcb		5	;address 0x0150
negval	dcb		3	;0x0154
result	dcb		0	;0x0158
		END
