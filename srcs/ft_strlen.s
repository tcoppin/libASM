; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 13:09:16 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/12 00:01:32 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strlen

_ft_strlen:
	mov rax, 0

	cmp rdi, 0
	je finish

	mov rcx, -1
	mov al, 0
	repnz scasb
	mov rax, rcx
	neg rax
	sub rax, 2 

finish:
	ret