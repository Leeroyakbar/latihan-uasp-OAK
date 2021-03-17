global main
    extern printf,scanf
    
section .data
    fmt_in      db  "%d", 0
    fmt_out     db  "%d", 10,0
    
section .bss
    n       resd    1
    hasil   resd    1
    i       resd    1
    f       resd    1
    
section .text

main :
    push    n
    push    fmt_in
    call    scanf
    add     esp, 8
    
    
    ;   f= 1;
    ;   i = 1;
    ;   while (i <= n) {
    ;       f = f * i;
    ;       i++;
    ;   }
    ;   printf("%d\n", f)

    mov     dword[i], 1
    mov     dword[f], 1
    mov     ebx, [n]
    
    ;operation
    
    mov     eax, dword[f]   ; pindahkan nilai f=1 ke regist eax
    
lp :    
    mul     dword[i]        ; perkalian eax = eax * i 
    inc     dword[i]        ; increament nilai i
    mov     dword[f], eax   ; pindahkan nilai hasil kali diatas ke f
    cmp     dword[i], ebx   ; compare nilai ebx yaitu nilai n dengan i sebagai pengkondisian looping sampai nilai n
    jle     lp              ; jika i <= ebx maka ulangi looping
    jg      print           ; jika kondisi tidak memenuhi lompat ke print untuk mencetak nilai/hasil perkalian
    
    
print:
    mov     [hasil], eax
    push    dword[hasil]
    push    fmt_out
    call    printf
    
    add     esp, 8
    ret
