; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/15 11:27:25 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/15 11:29:48 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isupper

_ft_isupper:
	cmp rdi, 0
	je false

	cmp rdi, 65
	jl false

	cmp rdi, 90
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret