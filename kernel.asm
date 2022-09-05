entry:

   
   ; mov ah, 0
   ; ; int 0x16

   ; mov ah, 0x0
   ; ; mov al, 15
   ; int 0x10

   mov bx, ask
   call print_string

   jmp main


main:
   ; mov bh, 0
   mov ah, 0
   int 0x16
   mov ah, 0x0
   mov al, 13
   int 0x10

   
   mov bx, welcome
   call print_string
   jmp done


done:


   jmp done

%include "string.asm"


;DH = Row, DL = Column 

ask db "Press any button to switch to GRAPHICS MODE", '\0'
welcome db "Welcome to GRAPHICS MODE", '\0'


