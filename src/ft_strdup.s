;	█──█──████──█────███──███──███
;	██─█──█──█──█─────█───█────█		prj:    ft_strdup
;	█─██──█─────█─────█───███──███
;	█──█──█──█──█─────█───█────█		git:    ncliff-git
;	█──█──████──███──███──█────█

            global _ft_strdup
            extern _malloc, _ft_strlen, _ft_strcpy

            section .text
_ft_strdup:
            call _ft_strlen         ; rax = ft_strlen(rdi)
            push rdi                ; stack = rdi
            mov rdi, rax            ; rdi = rax
            inc rdi                 ; rdi++ // rdi == '\0'
            call _malloc            ; rax = malloc(rdi)
            mov rdi, rax            ; rdi = rax
            pop rsi                 ; rsi = stack
            cmp rax, 0              ; if rax = 0
            je .end                 ;     goto .end
            call _ft_strcpy         ; rax = ft_strcpy(rsi)
.end:
            ret                     ; return (rax)

