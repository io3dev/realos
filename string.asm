char:
    pusha

    mov ah, 0xE ; Tell bios to write character
    int 0x10

    popa
    ret