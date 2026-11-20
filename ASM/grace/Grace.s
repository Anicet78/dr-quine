extern dprintf
extern close

%macro content 1
	mov rsi, %1
	mov r9, %1
%endmacro

%macro MAIN_FUNC 0
%%end:
	MAIN_END 1

global main
main:
	mov rax, 2
	mov rdi, name
	mov esi, 0b01001001
	mov edx, 0644o
	syscall
	cmp eax, 0
	jl %%end
	mov edi, eax
	content text
	xor eax, eax
	mov rdx, 10
	mov rcx, 9
	mov r8, 96
	push rdi
	call dprintf wrt ..plt
	pop rdi
	call close wrt ..plt
%endmacro

%macro MAIN_END 1
	mov rax, %1
	ret
%endmacro

section .data
	text db `extern dprintf%1$cextern close%1$c%1$c%%macro content 1%1$c%2$cmov rsi, %%1%1$c%2$cmov r9, %%1%1$c%%endmacro%1$c%1$c%%macro MAIN_FUNC 0%1$c%%%%end:%1$c%2$cMAIN_END 1%1$c%1$cglobal main%1$cmain:%1$c%2$cmov rax, 2%1$c%2$cmov rdi, name%1$c%2$cmov esi, 0b01001001%1$c%2$cmov edx, 0644o%1$c%2$csyscall%1$c%2$ccmp eax, 0%1$c%2$cjl %%%%end%1$c%2$cmov edi, eax%1$c%2$ccontent text%1$c%2$cxor eax, eax%1$c%2$cmov rdx, 10%1$c%2$cmov rcx, 9%1$c%2$cmov r8, 96%1$c%2$cpush rdi%1$c%2$ccall dprintf wrt ..plt%1$c%2$cpop rdi%1$c%2$ccall close wrt ..plt%1$c%%endmacro%1$c%1$c%%macro MAIN_END 1%1$c%2$cmov rax, %%1%1$c%2$cret%1$c%%endmacro%1$c%1$csection .data%1$c%2$ctext db %3$c%4$s%3$c%1$c%2$cname db %3$cGrace_kid.s%3$c%1$c%1$csection .text%1$c%1$cMAIN_FUNC%1$cMAIN_END 0%1$c`
	name db `Grace_kid.s`

section .text

MAIN_FUNC
MAIN_END 0
