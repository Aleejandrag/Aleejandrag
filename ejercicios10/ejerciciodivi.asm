section .data
    nume1 dd 10
    nume2 dd 2
    Resultado dd 0
    msg db "El resultado de la division es: "
    len_msg equ $-msg
    SigLinea db 13, 10

section .bss

section .text
    global _start

_start:
    
    mov eax, dword [nume1]

   
    cdq                     
    idiv dword [nume2]       

    
    add eax, '0'

    
    mov [Resultado], eax

    
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
