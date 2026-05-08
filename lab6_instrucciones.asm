; lab6_instrucciones.asm
; Unidad 6 - Instrucciones y Direccionamiento
; Programa .COM para DOSBox usando NASM

org 100h

jmp inicio

valor_a   dw 45
valor_b   dw 12
resultado dw 0
contador  db 5
mascara   db 0Fh

inicio:

; BLOQUE 1: Transferencia de datos

    mov ax, [valor_a]
    mov bx, [valor_b]

    mov cx, ax
    mov dx, bx

    lea si, [valor_a]
    mov ax, [si]

    xchg cx, dx
    xchg cx, dx

    push ax
    mov ax, 0FFFFh
    pop ax

; BLOQUE 2: Operaciones aritmeticas

    mov ax, [valor_a]
    add ax, [valor_b]
    mov [resultado], ax

    mov ax, [valor_b]
    sub ax, [valor_a]

    mov ax, [valor_a]
    inc ax
    dec ax

    mov al, 10
    mov bl, 7
    mul bl

    mov ax, 100
    mov bl, 7
    div bl

; BLOQUE 3: Operaciones logicas

    mov al, 0B7h
    and al, [mascara]

    mov al, 0B7h
    or al, 0F0h

    mov al, 0AAh
    xor al, 0FFh

    xor bx, bx

    mov al, 0B7h
    test al, 01h

    mov al, 08h
    shl al, 2
    shr al, 1

; BLOQUE 4: Control de flujo

    mov ax, [valor_a]
    cmp ax, [valor_b]
    jg mayor
    je igual

    xor cx, cx
    jmp fin_cmp

mayor:
    mov cx, 1
    jmp fin_cmp

igual:
    mov cx, 2

fin_cmp:

; Bucle de suma: 1 + 2 + 3 + 4 + 5 = 15

    xor ax, ax
    mov cx, 5
    mov bx, 1

bucle_suma:
    add ax, bx
    inc bx
    loop bucle_suma

    int 20h