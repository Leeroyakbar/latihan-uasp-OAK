global main
    extern printf, scanf
    
section .data
    fmt_in      db  "%d %d %d", 0
    fmt_out     db  "%d",10,0
    
section .bss
    p       resd    1
    l       resd    1
    t       resd    1
    hasil   resd    1
    
section .text

main :
    ;push nilai
    push    p
    push    l
    push    t
    push    fmt_in
    call    scanf
    add     esp, 16
    
    ;pindah nilai
    mov     eax, [p]
    mov     ebx, [l]
    mov     ecx, [t]
    
    ;olah nilai
    imul    ebx
    imul    ecx
 
    mov     [hasil], eax
    push    dword [hasil]
    push    fmt_out
    call    printf
    add     esp, 8
    
    mov     eax,0
    ret
