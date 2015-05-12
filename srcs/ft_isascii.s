; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 01:34:45 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/10 02:34:34 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, 0
	jl false

	cmp rdi, 127
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret