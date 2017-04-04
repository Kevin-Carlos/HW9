		;		COMBINE
		;		Kevin Carlos
		;		4 April 2017
		;		v1.00
		;
		
		ldr		r0, =value1
		ldr		r1, [r0]
		
		;		data
value1	dcb		5, 6
value2	dcb		10, 11
value3	dcb		15, 16
value4	dcb		20, 21
		END
