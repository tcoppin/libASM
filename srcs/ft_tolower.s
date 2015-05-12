; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 02:35:48 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/10 02:37:50 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_tolower

_ft_tolower:
	cmp rdi, 0
	je false

	cmp rdi, 65
	jl false

	cmp rdi, 90
	jle true

false:
	mov rax, rdi
	ret

true:
	mov rax, rdi
	add rax, 32
	ret