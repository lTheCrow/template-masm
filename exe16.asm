; File: com16.asm
;
; Commands (masm32sdk):
; ml /Bl link16.exe /AT msdos.asm
;  

.model small
.stack 100h

.data
mensaje db 'Hola, mundo!', 0Dh, 0Ah, '$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 9
    lea dx, mensaje
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main