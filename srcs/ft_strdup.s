; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 17:33:48 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/13 17:13:35 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global  _ft_strdup
	extern  _ft_strlen
	extern 	_malloc
	extern	_ft_memcpy

_ft_strdup:
	mov	rbx, rdi
	call _ft_strlen
	mov	rdi, rax
	inc	rdi
	push rdi
	
	call _malloc
	cmp rax, 0
	je finish

	mov rdi, rax
	mov rsi, rbx
	pop rdx

	call _ft_memcpy

finish:
	ret