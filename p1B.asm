	AREA RESET,CODE
	ENTRY
	LDR R0,=VAL1
	LDR R1,[R0]
	LDR R2,[R0,#4]
	LDR R0,=VAL2
	LDR R3,[R0]
	LDR R4,[R0,#4]
	SUBS R6,R2,R4
	SUBS R5,R1,R3
	LDR R0,=RES
	STR R5,[R0]
	STR R6,[R0,#4]	
STOP B STOP
VAL1 DCD &BBBBBBBB,&AAAAAAAA
VAL2 DCD &CCCCCCCC,&FFFFFFFF
	AREA MEMORY,DATA
RES SPACE 4
	END
	
