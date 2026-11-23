extern printf

section .data
	text db `extern printf%1$c%1$csection .data%1$c%2$ctext db %3$c%4$s%3$c, 0%1$c%1$csection .text%1$c%1$c; Comment outside of my program%1$c%1$cfunction:%1$c%2$cmov rax, text%1$c%2$cret%1$c%1$cglobal main%1$cmain:%1$c; Comment inside of my program%1$c%1$c%2$csub rsp, 8%1$c%2$ccall function%1$c%2$cmov rdi, rax%1$c%2$cmov r8, rax%1$c%2$cxor eax, eax%1$c%2$cmov rsi, 10%1$c%2$cmov rdx, 9%1$c%2$cmov rcx, 96%1$c%2$ccall printf wrt ..plt%1$c%2$cadd rsp, 8%1$c%2$cxor eax, eax%1$c%2$cret%1$c`, 0

section .text

; Comment outside of my program

function:
	mov rax, text
	ret

global main
main:
; Comment inside of my program

	sub rsp, 8
	call function
	mov rdi, rax
	mov r8, rax
	xor eax, eax
	mov rsi, 10
	mov rdx, 9
	mov rcx, 96
	call printf wrt ..plt
	add rsp, 8
	xor eax, eax
	ret
