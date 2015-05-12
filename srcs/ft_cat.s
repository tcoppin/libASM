; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/11 17:07:40 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/11 19:31:34 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data
	new db 1

section .text
	global _ft_cat

_ft_cat:
	push rdi
	mov rcx, rdi
	jmp boucle

boucle:
	mov rax, 0x2000003
	lea rsi, [rel new]
	mov rdx, 1
	syscall
	
	cmp rax, 0
	je finish

	push rdi
	
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel new]
	mov rdx, 1
	syscall
	
	cmp rax, 0
	jl finish
	
	pop rdi
	jmp boucle

finish:
	pop rdi
	mov rax, 0
	ret