section .data
    nume1 db 7
    nume2 db 1
    Resultado db 0
    msg db "El resultado de la multiplicacion es: "
    len_msg equ $-msg
    SigLinea db 13, 10

section .bss

section .text
    global _start

_start:
    
    mov al, [nume1]       

    
    mov bl, [nume2]       

    
    mul bl               

   
    add al, '0'          

    
    mov [Resultado], al  

    
    mov eax, 4           
    mov ebx, 1          
    mov ecx, msg        
    mov edx, len_msg   
    int 80h             

    
    mov eax, 4          
    mov ebx, 1          
    mov ecx, Resultado 
    mov edx, 1          
    int 80h             

    
    mov eax, 4          
    mov ebx, 1          
    mov ecx, SigLinea   
    mov edx, 2          
    int 80h             

    
    mov eax, 1          
    xor ebx, ebx        
    int 80h

