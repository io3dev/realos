char:
    pusha
    mov bl, 11
    mov ah, 0xE ; Tell bios to write character
    int 0x10
    
    popa
    ret

; Print string in register bx
; cycles through characters and keeps printing until it finds NULL termininating character (\o)
print_string:

    mov al, [bx]
    inc bx
    
    ; Next character, use this for detecting end of string
    
    
    call char
    mov ah, [bx]
    cmp ah, '\0'
    jne print_string
    ret