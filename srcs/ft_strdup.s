; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 17:33:48 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/12 00:01:14 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global  _ft_strdup
	extern  _ft_strlen
	extern	_ft_memcpy
	extern 	_malloc

_ft_strdup:
	push rdi
	call _ft_strlen
	push rax
	mov rdi, rax

	call _malloc
	cmp rax, 0
	je _null

	mov r8, rax
	pop rax
	mov rdx, rax
	pop rdi
	mov rsi, rdi
	mov rdi, r8

	call _ft_memcpy
	ret

_null:
	ret