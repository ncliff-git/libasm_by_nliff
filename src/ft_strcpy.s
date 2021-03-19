;	█──█──████──█────███──███──███
;	██─█──█──█──█─────█───█────█		prj:    ft_strcpy
;	█─██──█─────█─────█───███──███
;	█──█──█──█──█─────█───█────█		git:    ncliff-git
;	█──█──████──███──███──█────█

			global _ft_strcpy

			section .text
_ft_strcpy:
			mov rax, rdi				; rax = str2
			xor rcx, rcx				; rcx = 0

.cycle:
			mov bl, byte[rsi + rcx]		; bl = str1[rcx]
			mov byte[rdi + rcx], bl		; str2[rcx] = bl
			cmp bl, 0					; if bl == 0
			je .return					;     goto .return
			inc rcx						; rcx++
			jmp .cycle					; goto .cycle

.return:
			ret							; return (rax)