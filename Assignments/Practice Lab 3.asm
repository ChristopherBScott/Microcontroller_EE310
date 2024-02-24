
	ORG	0x0
	movlw	0x0

;Practice A
;-------------------------
;	MOVLW	22H		; WREG = 22H
;	MOVWF	5H		; move(copy) WREG contents to location 5H
;	MOVWF	6H		; move(copy) WREG contents to location 6H
;	MOVWF	7H		; move(copy) WREG contents to location 7H
;	ADDWF	5H,	0	; add w and loc 5, result in WREG (W=44H)
;	ADDWF	6H,	0	; add w and loc 6, result in WREG (W=66H)
;	ADDWF	7H,	0	; add w and loc 7, result in WREG (W=88H)


;Practice A & B
;-------------------------
;	MOVLW	22H		; WREG = 22H
;	MOVWF	5H		; move(copy) WREG contents to location 5H
;	MOVWF	6H		; move(copy) WREG contents to location 6H
;	MOVWF	7H		; move(copy) WREG contents to location 7H
;	ADDWF	5,	0	; add w and loc 5, result in WREG (W=44H)
;	ADDWF	6,	0	; add w and loc 6, result in WREG (W=66H)
;	ADDWF	7,	1	; add w and loc 7, result in location 7H
				; now location 7 has 88H and WREG = 66H

;Practice C
;--------------------------
;	MOVFF	W,STATUS
;	MOVLW	0x88
;	ADDLW	0x88	;ADD 0x88+0x88=0x1 10
;
	MOVLW	0x0
	MOVFF	W,STATUS
	MOVLW	0x80
	SUBLW	0x1	; add 0x88+0x88 = 0x1 10


;Practice D
;--------------------------
;	movlw	0x88		; assign a value of 88H to WREG
;	addlw	0x88		; add 88 to WREG
;	movff	STATUS,0x20	; copy value from status into REG20
;
;	MOVLW	0x0		; reset WREG value to 0
;	MOVFF	W,STATUS	; reset STATUS value to 0
;	movlw	0x7F		; set WREG value to 7F
;	addlw	0x7F		; add 7F to WREG value and store in WREG
;	movff	STATUS,0x21	; copy value from status into REG21
;
;	MOVLW	0x0		; reset WREG value to 0
;	MOVFF	W,STATUS	; reset STATUS value to 0
;	movlw	0x50		; set WREG value to 50
;	addlw	0xF0		; add F0 to WREG value and store in WREG
;	movff	STATUS,0x22	; copy value from status into REG22
;
;	MOVLW	0x0		; reset WREG value to 0
;	MOVFF	W,STATUS	; reset STATUS value to 0
;	movlw	0x50		; set WREG value to 50
;	sublw	0xF0		; subtract WREG from F0 and store in WREG
;	movff	STATUS,0x23	; copy value from status into REG23
;
;	MOVLW	0x0		; reset WREG value to 0
;	MOVFF	W,STATUS	; reset STATUS value to 0
;	movlw	0xF0		; set WREG value to F0
;	sublw	0x50		; subtract WREG from 50 and store in WREG
;	movff	STATUS,0x24	; copy value from status into REG24
;
;	MOVLW	0x0		; reset WREG value to 0
;	MOVFF	W,STATUS	; reset STATUS value to 0
;	movlw	0xFF		; set WREG value to FF
;	sublw	0x1		; subtract WREG from 1 and store in WREG
;	movff	STATUS,0x25	; copy value from status into REG25




;Practice E
;--------------------------
;REG1	equ	0x1	; anytime REG1 is used, refer to 0x1
;
	; ORG	0x20	; this is commented out so it wont do anything, but it would make values start being stored at REG20
;	movlw	0x60	; assign WREG a value of 60
;	addlw	0x2	; add 2 to value in WREG and store in WREG
;	addwf	0x1,1	; keep results in REG1
;	movlw	0x5	; assign WREG a value of 5
;	addwf	0x1,0	; keep results in w
;
;	movff	0x1,0x2	; copy value from REG1 (62) to REG2
;	incf	0x1,F	; add 1 to value in REG 1, becomes 63
;	decf	0x2,F	;subtract 1 from value in REg2, becomes 61
;
;	movlw	0xFF	; assign WREG a value of FF
;	movwf	0x4	; copy WREG value (FF) to REG4
;	clrf	0x4	; clear value saved in REG5
;	setf	0x3	; Addign value of FF to REg3
;
;	movlw	0x1	; assign WREG a value of 1
;	movwf	0x5	; copy value of WREG to REG5
;	negf	0x5	; obtain twos compliment of REG5 and store in REG5
;
;	movlw	0x1	; assign WREG a value of 1
;	movwf	0x6	; copy value of WREG to REG6
;	swapf	0x6,1	; swap the nibbles from REG6 and assign back to REG6
;
;	movlw	0x1	; assign WREG a value of 1
;	movwf	0x7	; copy value of WREG to REG7
;	comf	0x7,1	; obtain 1's compliment of REG7 and assign to REG7
'oshonsoft_bookmarks_and_breakpoints_info:,151,291,521
