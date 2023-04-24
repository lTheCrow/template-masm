; File: com16.asm
;
; Commands (masm32sdk):
; ml /Bl link16.exe /AT msdos.asm
;   

   .model  tiny 
   .code 

    org     100h
HOST:
    mov     ah, 9
    mov     dx, OFFSET HI 
    int     21h

    mov     ax, 4C00h
    int     21h 

HI  DB      'You have just released a virus! have a nice day!$'

    END     HOST
