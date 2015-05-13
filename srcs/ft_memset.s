; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 15:56:18 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/13 12:07:45 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	mov rax, rdi
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