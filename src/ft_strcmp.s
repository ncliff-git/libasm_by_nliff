;	█──█──████──█────███──███──███
;	██─█──█──█──█─────█───█────█		prj:    ft_strcmp
;	█─██──█─────█─────█───███──███
;	█──█──█──█──█─────█───█────█		git:    ncliff-git
;	█──█──████──███──███──█────█

            global _ft_strcmp

            section .text

_ft_strcmp:
            xor rcx, rcx                ; rcx = 0
            xor ebx, ebx                ; ebx = 0
            xor edx, edx                ; edx = 0

.cycle:
            mov bl, byte[rdi + rcx]     ; bl = str1[rcx]
            mov dl, byte[rsi + rcx]     ; dl = str2[rcx]
            inc rcx                     ; rcx++
            cmp dl, bl                  ; if dl != bl 
            jne .end                    ;     goto .end
            cmp bl, 0                   ; elif bl != 0
            jne .cycle                  ;     goto .cycle

.end:
            sub ebx, edx                ; ebx -= edx
            mov eax, ebx                ; eax = ebx
            ret                         ; return (ebx)