
main:
   mov al, '>'
   call char

   jmp shell_loop

shell_loop:
   mov ah, 0

   int 0x16

   call char


   mov dh, 0
   jmp shell_loop



done:
   

   jmp done

%include "string.asm"


;DH = Row, DL = Column 
cursor_move:
   mov ah, 0x02
   int 0x10
   ret
