;	█──█──████──█────███──███──███
;	██─█──█──█──█─────█───█────█		prj:    ft_write
;	█─██──█─────█─────█───███──███
;	█──█──█──█──█─────█───█────█		git:    ncliff-git
;	█──█──████──███──███──█────█

            global _ft_write
            extern ___error

            section .text
_ft_write:
            mov rax, 0x02000004     ; write
            syscall
            jc .error               ; if syscall == -1 { goto .error }
            ret                     ; else return (rax)

.error:
            push r12
            mov r12, rax
            call ___error
            mov [rax], r12
            mov rax, -1
            pop r12
            ret