%include 'funtions.asm'
SECTION .data
SECTION .text
global  _start 
_start:
    mov  ecx,2
one:
    mov     eax, 1     ; move our first number into eax
    call    iprintLF    ; call our integer print with linefeed function
    dec ecx
    jnz one
   mov ecx,20
   mov eax,00 
   mov eax,1
   mov ebx,1
fib:
    mov edx,eax 
    add eax,ebx
    call iprintLF
    mov ebx,edx
    dec ecx
    jnz fib
    
    call quit
