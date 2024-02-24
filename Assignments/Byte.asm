
	ORG	0x0
	movlw	0x0
	movwf	TRISC
	movlw	0x3F
	movwf	portc, 0
	movlw	0x06
	movwf	portc,0
	movlw	0x5B
	movwf	portc, 0
	movlw	0x4F
	movwf	portc,0
	movlw	0x66
	movwf	portc, 0
	movlw	0x6D
	movwf	portc, 0
	movlw	0x7D
	movwf	portc, 0
	movlw	0x07
	movwf	portc, 0
	movlw	0x7F
	movwf	portc, 0
	movlw	0x6F
	movwf	portc, 0
	sleep