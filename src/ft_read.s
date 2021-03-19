;	█──█──████──█────███──███──███
;	██─█──█──█──█─────█───█────█		prj:    ft_read
;	█─██──█─────█─────█───███──███
;	█──█──█──█──█─────█───█────█		git:    ncliff-git
;	█──█──████──███──███──█────█

            global _ft_read
            extern ___error

            section .text
_ft_read:
            mov rax, 0x02000003     ; read
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