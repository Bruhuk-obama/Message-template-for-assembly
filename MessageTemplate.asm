; Helloworld.asm - singular segmented, 2-byte "Hello, bitch!" program.
;
; Mainly compatible for DOS 2.0.
;
; Wanna compile your own code? with NASM, assemble with "nasm -f bin <Directory and name of file> -o <Output directory and name>"
;
; Assembly template written by President Bruhuk Jair𒈟 Obama in memory of MichHell Obama

    org  0x100          ; .com files needs to start 256 bytes into the segment so nothing fucks up or anything

    mov  dx, msg        ; message's address for dx
    mov  cx, len
    mov  bx, 1          ; Device or handle standard out for screen
    mov  ah, 0x40       ; ah=0x40 - "For Writing File or Device"
    int  0x21           ; To call dos services

    mov  ah, 0x4c       ; "kill program" sub-function
    int  0x21           ; Also to call dos services

msg     db 'CMON BABY PUT A WORD IN ME', 0x0d, 0x0a   ; put message between ''
len     equ $ - msg     ;message length