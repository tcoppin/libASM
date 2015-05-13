; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 17:33:48 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/13 15:19:59 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global  _ft_strdup
	extern  _ft_strlen
	extern 	_malloc
	extern	_ft_memcpy

_ft_strdup:
	mov	r8, rdi
	call _ft_strlen
	mov	rdi, rax
	inc	rdi
	push rdi
	
	call _malloc
	cmp rax, 0
	je finish
	
	mov rdi, rax
	mov rsi, r8
	pop rdx

	call _ft_memcpy

finish:
	ret