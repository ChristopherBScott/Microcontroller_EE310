
;sum	equ	0F7H

	;org	0H

;HERE	movlw	0
	;movwf	sum
	;movlw	25H
	;addlw	0x34
	;addlw	11H
	;addlw	0C1H
	;addlw	25
	;addlw	D'18'
	;addlw	B'00000110'
	;movwf	sum

	;movlw	sum
	;goto	HERE

;end





;MYVAL	EQU	9 	; myval = 9
;R0	EQU	0x10	; assign RAM address to R0
;R1	EQU	0x11	; assign RAM address to R1
;R2	EQU	0x12	; assign RAM address to R2
;R3	EQU	0x13	; assign RAM address to R3
;R4	EQU	0x14	; assign RAM address to R4

;SUM	EQU	15H

	;org	10H
	;movlw	0
	;movlw	MYVAL	; WREG = 9
	;movwf	R0	; RAM loc 0 has 9
	;movwf	R1	; RAM loc 1 has 9
	;movwf	R2	; RAM loc 2 has 9
	;movwf	R3	; RAM loc 3 has 9
	;movwf	R4	; RAM loc 4 has 9

	;movlw	0
	;ADDWF	R0, W	; WREG = R0 + WREG
	;ADDWF	R1, W	; WREG = R1 + WREG
	;ADDWF	R2, W	; WREG = R2 + WREG
	;ADDWF	R3, W	; WREG = R3 + WREG
	;ADDWF	R4, W	; WREG = R4 + WREG


	;movwf	SUM
	;goto	HERE

;HERE	end







;input1	equ	0x123
;input2	equ	0x234

	;org	0
	;movlw	0

	;addlw	LOW(input1)
	;addlw	LOW(input2)
	;movwf	0x10

	;movlw	0
	;addlw	HIGH(input1)
	;addlw	HIGH(input2)
	;movwf	0x11








input1	equ	0x283
input2	equ	0x194

	org	0
	movlw	0

	addlw	LOW(input1)
	addlw	LOW(input2)
	movwf	0x10

	movlw	0
	addwfc	0x0, w
	addlw	HIGH(input1)
	addlw	HIGH(input2)
	movwf	0x11

