;	█──█──████──█────███──███──███
;	██─█──█──█──█─────█───█────█		prj:    ft_strlen
;	█─██──█─────█─────█───███──███
;	█──█──█──█──█─────█───█────█		git:    ncliff-git
;	█──█──████──███──███──█────█


            global	_ft_strlen

            section	.text
_ft_strlen:
            xor rax, rax

.cycle:
            mov cl, byte [rdi + rax]
            cmp cl, 0
            je .return
            inc rax
            jmp .cycle

.return:
            ret