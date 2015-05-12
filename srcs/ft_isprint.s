; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 01:37:21 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/10 01:40:34 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 0
	je false

	cmp rdi, 32
	jl false

	cmp rdi, 126
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret