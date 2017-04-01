c1		; Find8 for ARM
c2		; D. Egbert ver 1.6 03/16/2017
c3		; Modified by Kevin Carlos
		;		3/31/2017
		;
FIND8	ldr		r0,=LSTL	;point to list length
F2		ldr		r1,[r0]			;r1 = list length
F3		ldr		r0,=DLST	;point to list start
F4		ldr		r2,=0			;init max val reg
f8lp1	ldrb		r3,[r0,+r1]		;read list element
F6		cmp		r2,r3			;comp against max val
F8		bhi		f8ct1			;branch if r2>r3
F9		mov		r2,r3			;else new max val
f8ct1	adds		r1,r1,#-1			;decrement offset
F11		bpl		f8lp1			;loop for all list
F12		ldr		r0,=MAXV
F13		strb		r2,[r0]			;save max val
c4		;
c5		;		no infinite loop because
c6		;		the emulator stops at END
c7		;
c8		;stop	bal		stop
c9		;
LSTL		dcb		14
MAXV		dcb		0
DLST		dcb		254,5,25,250,100,150,30,200,253,15,23,46,73,175,0
		;
		END		;END directive to show nothing more in file
