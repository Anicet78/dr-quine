extern dprintf
extern sprintf
extern system

section .bss
	buff resb 100

section .data
	text db `extern dprintf%1$cextern sprintf%1$cextern system%1$c%1$csection .bss%1$c	buff resb 100%1$c%1$csection .data%1$c	text db %2$c%4$s%2$c, 0%1$c	name db %2$cSully_%%d.s%2$c, 0%1$c	cc db %2$cnasm -f elf64 Sully_%%1$d.s && gcc -no-pie Sully_%%1$d.o -o Sully_%%1$d && rm -rf Sully_%%1$d.o%2$c, 0%1$c	exec db %2$c./Sully_%%d%2$c, 0%1$c%1$csection .text%1$c%1$cglobal main%1$cmain:%1$c	mov r10, %3$d%1$c	cmp r10, 0%1$c	jle .end%1$c%1$c	dec r10%1$c	mov rdi, buff%1$c	mov rsi, name%1$c	mov rdx, r10%1$c	xor eax, eax%1$c	push r10%1$c	call sprintf wrt ..plt%1$c	pop r10%1$c	cmp eax, 0%1$c	jl .error%1$c%1$c	mov rax, 2%1$c	mov rdi, buff%1$c	mov esi, 0b1001000001%1$c	mov edx, 0644o%1$c	syscall%1$c	cmp eax, 0%1$c	jl .error%1$c%1$c	mov r11, rax%1$c	sub rsp, 8%1$c%1$c	mov edi, eax%1$c	mov rsi, text%1$c	mov rdx, 10%1$c	mov rcx, 96%1$c	mov r8, r10%1$c	mov r9, text%1$c	xor eax, eax%1$c	push r10%1$c	push r11%1$c	call dprintf wrt ..plt%1$c	pop r11%1$c	pop r10%1$c	cmp eax, 0%1$c	jl .close%1$c%1$c	mov rdi, buff%1$c	mov rsi, cc%1$c	mov rdx, r10%1$c	xor eax, eax%1$c	push r10%1$c	push r11%1$c	call sprintf wrt ..plt%1$c	pop r11%1$c	pop r10%1$c	cmp eax, 0%1$c	jl .close%1$c%1$c	mov rdi, buff%1$c	push r10%1$c	push r11%1$c	call system wrt ..plt%1$c	pop r11%1$c	pop r10%1$c	cmp eax, 0%1$c	jl .close%1$c%1$c	mov rdi, buff%1$c	mov rsi, exec%1$c	mov rdx, r10%1$c	xor eax, eax%1$c	push r10%1$c	push r11%1$c	call sprintf wrt ..plt%1$c	pop r11%1$c	pop r10%1$c	cmp eax, 0%1$c	jl .close%1$c%1$c	mov rdi, buff%1$c	push r10%1$c	push r11%1$c	call system wrt ..plt%1$c	pop r11%1$c	pop r10%1$c	cmp eax, 0%1$c	jl .close%1$c%1$c	mov rdi, r11%1$c	mov rax, 3%1$c	syscall%1$c%1$c	add rsp, 8%1$c%1$c.end:%1$c	mov eax, 0%1$c	ret%1$c%1$c.close:%1$c	add rsp, 8%1$c%1$c	mov rax, 3%1$c	mov rdi, r11%1$c	syscall%1$c%1$c.error:%1$c	mov eax, 1%1$c	ret%1$c`, 0
	name db `Sully_%d.s`, 0
	cc db `nasm -f elf64 Sully_%1$d.s && gcc -no-pie Sully_%1$d.o -o Sully_%1$d && rm -rf Sully_%1$d.o`, 0
	exec db `./Sully_%d`, 0

section .text

global main
main:
	mov r10, 5
	cmp r10, 0
	jle .end

	dec r10
	mov rdi, buff
	mov rsi, name
	mov rdx, r10
	xor eax, eax
	push r10
	call sprintf wrt ..plt
	pop r10
	cmp eax, 0
	jl .error

	mov rax, 2
	mov rdi, buff
	mov esi, 0b1001000001
	mov edx, 0644o
	syscall
	cmp eax, 0
	jl .error

	mov r11, rax
	sub rsp, 8

	mov edi, eax
	mov rsi, text
	mov rdx, 10
	mov rcx, 96
	mov r8, r10
	mov r9, text
	xor eax, eax
	push r10
	push r11
	call dprintf wrt ..plt
	pop r11
	pop r10
	cmp eax, 0
	jl .close

	mov rdi, buff
	mov rsi, cc
	mov rdx, r10
	xor eax, eax
	push r10
	push r11
	call sprintf wrt ..plt
	pop r11
	pop r10
	cmp eax, 0
	jl .close

	mov rdi, buff
	push r10
	push r11
	call system wrt ..plt
	pop r11
	pop r10
	cmp eax, 0
	jl .close

	mov rdi, buff
	mov rsi, exec
	mov rdx, r10
	xor eax, eax
	push r10
	push r11
	call sprintf wrt ..plt
	pop r11
	pop r10
	cmp eax, 0
	jl .close

	mov rdi, buff
	push r10
	push r11
	call system wrt ..plt
	pop r11
	pop r10
	cmp eax, 0
	jl .close

	mov rdi, r11
	mov rax, 3
	syscall

	add rsp, 8

.end:
	mov eax, 0
	ret

.close:
	add rsp, 8

	mov rax, 3
	mov rdi, r11
	syscall

.error:
	mov eax, 1
	ret
