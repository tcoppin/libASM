; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 15:56:18 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/11 23:52:34 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	cmp rdi, 0
	je finish

	cmp rdx, 0
	je finish
	
	push rdi
	mov rcx, rdx
	mov al, sil
	rep stosb
	pop rax

finish:
	ret