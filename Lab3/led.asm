/*
 * led.asm
 *
 *  Created: 1/31/2024 3:47:17 PM
 *   Author: dparlee
 */ 
.cseg
.org 0 ;begin assembbling at address 0

 ;set PORTL and PORTB as output
	ldi r16, 0xFF
	sts DDRL, r16;Storedirect To data Space - Data Direction Register for port L set to out (all set -> all out)
	out DDRB, r16;Data Direction Register for port B set to out
 
	;turn on top and bottom led light
	ldi r16, 0b10000010
	sts PORTL, r16 ;r16 to portL -> output to the 7th bit - led PL7 (pin L7)
	ldi r16, 0b00001000
	out PORTB, r16 ;sets portB output to the 1st bit - led PB1 (pin B1)
done:jmp done
;open upload.bat in debug in lab file to run it on machine
