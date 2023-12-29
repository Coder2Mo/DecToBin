.model small
.data
    a dw 0               
    buffers db 17 DUP(?) 
    messages db 4 DUP(13, 10, "$") 
    prompt_msg db "Enter a decimal number (0 to exit): $"

.code
MAIN PROC FAR

main_loop:
    .STARTUP
    mov ah, 09h
    lea dx,prompt_msg
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'        
    cmp al, 0          
    je  exit_program   

    mov a, ax          

    
    mov ax, a
    mov cx, 16         
    mov si, 16         

    l1:
        mov dx, 0      
        mov bx, 2      
        div bx         
        add dl, '0'    
        dec si         

        mov di, OFFSET buffers
        add di, si     
        mov [di], dl   

        test ax, ax    
        jnz l1         
    mov ah, 09h
    lea dx, messages
    int 21h

    lea dx, buffers
    int 21h

    jmp main_loop      

exit_program:

    mov ah, 4Bh
    lea dx, [confirm_exit]
    int 21h

    mov ah, 4ch
    int 21h

    confirm_exit db 'confirm_exit', 0

MAIN ENDP
END MAIN
