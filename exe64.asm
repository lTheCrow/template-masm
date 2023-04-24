; File: exe64.asm
;
; Commands (x64 Native Tools Command Prompt for VS):
; ml64.exe exe64.asm /link /subsystem:console /entry:main kernel32.lib
;

extern ExitProcess :PROC 

.code                           
main PROC                     
    mov     rcx, 10         
    call    ExitProcess     
main ENDP                    
END