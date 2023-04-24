; File: exe32.asm
;
; Commands (masm32sdk):
; ml /c /coff exe32.asm
; link /subsystem:console exe32.obj kernel32.lib
;

.386
.model flat,stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.code 

main PROC 
    mov eax, 5
    add eax, 6
    invoke ExitProcess, 0
main ENDP
END main