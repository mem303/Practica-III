SECTION .data
msg     db      'Hello World!', 0Ah  ; Mensaje con salto de línea

SECTION .text
global  _start

_start:
    mov     edx, 13      ; Longitud del mensaje
    mov     ecx, msg     ; Dirección del mensaje
    mov     ebx, 1       ; Descriptor de archivo (1 = stdout)
    mov     eax, 4       ; syscall: sys_write
    int     80h          ; Interrupción para llamar al kernel

    mov     ebx, 0       ; Código de salida (0 = éxito)
    mov     eax, 1       ; syscall: sys_exit
    int     80h          ; Llamar al kernel para salir
