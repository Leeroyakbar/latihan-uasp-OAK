global main
    extern printf,scanf
    
section .data
    fmt_in      db   "%d", 0
    kempes      db   "kempes", 10,0
    pas         db   "pas",10,0
    keras       db   "keras",10,0
    
section .bss
    x       resd    1
    
section .text

main :
    
    push    x
    push    fmt_in
    call    scanf
    add     esp, 8
    
    ;operation
    mov     eax, [x]
    
    cmp     eax, 35     ; bandingkan dengan nilai 35
    jg       bankeras   ; jika x > 35, lompat ke bankeras
    jl       checking_2 ; jika x < 35, lompat ke checking_2 untuk mengcompare dengan nilai 29
    
checking_2 :
    cmp     eax, 29     ; bandingkan x dengan nilai 29
    jge     banpas      ; jika x >= 29 loncat ke banpas, karena tekanan ban pas
    jl      bankempes   ; jika x < 29 loncat ke bankempes, karena tekanan ban kurang/kempes
    
bankempes :
    push    kempes
    jmp     print
    
banpas :
    push    pas
    jmp     print
    
bankeras :
    push    keras
    jmp     print
    
    
print :
    call printf
    add  esp,4
    
    add     eax, 0
    ret
    
