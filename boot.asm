;
; -- kaissouDev 2023 --
; boot test

; -- learning ressources
; mov al -> show ascii characters
; inc al -> add 1 to the ascii value 
; cmp -> == =/ += <= >= conditions

[org 0x7c00]
mov ah, 0x0e
mov bx, avariable


printString:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp printString
end:
    
jmp $
    
avariable:
    db "Hello World :)", 0



times 510-($-$$) db 0
dw 0xaa55

