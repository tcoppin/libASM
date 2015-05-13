; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 16:13:09 by tcoppin           #+#    #+#              ;
;    Updated: 2015/05/13 16:30:41 by tcoppin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_bzero

_ft_bzero:
	mov rax, rdi
	
	cmp rdi, 0
	je finish

	cmp rsi, 0
	je finish
	
	mov rcx, rsi

wil:
	mov byte [rdi], 0
	inc rdi
	loop wil

finish:
	ret