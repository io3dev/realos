; "Bootloader", sets up stack, clears screen and jumps to main

org 0x7C00   ; add 0x7C00 to label addresses
bits 16      ; tell the assembler we want 16 bit code

mov ax, 0
mov ds, ax
mov es, ax
mov ss, ax     ; setup stack
mov sp, 0x7C00 ; stack grows downwards from 0x7C00

mov ah, 0x0
mov al, 0x3
int 0x10

; mov ah, 0xE
; mov al, 2 + 48
; int 0x10
; jmp main

%include "kernel.asm"
jmp main


times 510-($-$$) db 0
dw 0AA55h ; some BIOSes require this signature


