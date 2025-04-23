; boot.asm

[bits 16]                   ; Tell assembler we're using 16-bit code
[org 0x7c00]                ; The BIOS loads the bootloader at address 0x7c00

start:
    ; Clear screen (VGA text mode)
    mov ah, 0x0e
    mov al, 'H'
    int 0x10                ; Print 'H'
    mov al, 'e'
    int 0x10                ; Print 'e'
    mov al, 'l'
    int 0x10                ; Print 'l'
    mov al, 'l'
    int 0x10                ; Print 'l'
    mov al, 'o'
    int 0x10                ; Print 'o'

    ; Infinite loop to prevent bootloader from exiting
    jmp $

times 510 - ($ - $$) db 0    ; Fill remaining space with zeros
dw 0xAA55                    ; Bootloader signature (important for BIOS)
