; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 01:27:26 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/10 01:31:09 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 0
	je false

	cmp rdi, 65
	jl false

	cmp rdi, 90
	jle true

	cmp rdi, 97
	jl false

	cmp rdi, 122
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret