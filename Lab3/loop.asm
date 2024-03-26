/*
 * loop.asm
 *
 *  Created: 1/31/2024 3:40:00 PM
 *   Author: dparlee
 */ 
 .cseg
 .org 0 ;begin assembbling at address 0

 ;define names
 .def count = r17 ; holds counter value
	ldi count, 0 ; count is set to 0

loop:
	inc count ;inc counter
	cpi count, 0x04 ;can use hex as well
	breq done
	rjmp loop

done:jmp done