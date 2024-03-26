;
; Lab 04.asm
;
; Created: 2/7/2024 3:05:51 PM
; Author : dparlee
;


; Replace with your application code
.cseg
.org 0

	ldi r16, 1 ;opcode 01 e0
	call addOne ;call subroutine, opcode -> 0e 94 06 00
	mov r1, r16 ; cpy value to r1 opcode -> oc 94 04 00

done: jmp done

addOne:
	inc r16 ;opcode 03 95
	ret     ;opcode 08 95
