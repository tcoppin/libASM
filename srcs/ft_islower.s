; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 01:55:14 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/10 01:56:31 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_islower

_ft_islower:
	cmp rdi, 0
	je false

	cmp rdi, 97
	jl false

	cmp rdi, 122
	jle true

flase:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret