; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 17:33:48 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/13 13:54:18 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global  _ft_strdup
	extern  _ft_strlen
	extern 	_malloc

_ft_strdup:
	mov rsi, rdi
	call _ft_strlen
	inc rax
	mov rdi, rax
	push rax

	call _malloc
	cmp rax, 0
	je _null
	pop rcx

	mov rdi, rax

	rep movsb
	ret

_null:
	ret