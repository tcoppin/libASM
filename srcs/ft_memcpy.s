; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 17:30:23 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/12 00:02:37 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memcpy

_ft_memcpy:
	mov rax, rdi
	mov rcx, rdx
	push rsi

	cmp rsi, 0
	je finish

	rep movsb

finish:
	pop rsi
	ret