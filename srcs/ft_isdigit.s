; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 01:31:21 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/10 13:42:47 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, 0
	je false

	cmp rdi, 48
	jl false

	cmp rdi, 57
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret