;	█──█──████──█────███──███──███
;	██─█──█──█──█─────█───█────█		prj:    ft_strlen
;	█─██──█─────█─────█───███──███
;	█──█──█──█──█─────█───█────█		git:    ncliff-git
;	█──█──████──███──███──█────█


            global	_ft_strlen

            section	.text
_ft_strlen:
            xor rax, rax                ; rax = 0

.cycle:
            mov cl, byte [rdi + rax]    ; cl = str1[rax]
            cmp cl, 0                   ; if cl == 0
            je .return                  ;     goto .return
            inc rax                     ; rax++
            jmp .cycle                  ; goto .cycle

.return:
            ret                         ; return (rax)