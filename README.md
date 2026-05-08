# Laboratorio Unidad 6 - Instrucciones y Direccionamiento x86

## Datos del estudiante

- Nombre: Sebastian Jose Padilla Escalante
- Carrera: Ingeniería de Sistemas
- Asignatura: Arquitectura de Computadores
- Unidad: 6
- Repositorio: Padilla-post1-u6

---

# Objetivo del laboratorio

Implementar un programa en lenguaje ensamblador NASM para arquitectura x86 que demuestre el uso práctico de las principales categorías de instrucciones del procesador:

- Transferencia de datos
- Operaciones aritméticas
- Operaciones lógicas
- Control de flujo
- Saltos condicionales
- Bucles

El programa fue compilado y ejecutado en DOSBox y posteriormente analizado con DEBUG para verificar registros y flags.

---

# Entorno de trabajo

## Sistema operativo
- Windows 11

## Herramientas utilizadas

### DOSBox
- DOSBox 0.74-3

### NASM
- NASM version 2.16.x

### Herramientas adicionales
- DEBUG.COM
- Visual Studio Code
- Git
- GitHub

---

# Estructura del repositorio

```text
Padilla-post1-u6/
│
├── src/
│   └── lab6_instrucciones.asm
│
├── bin/
│   └── lab6_instrucciones.com
│
├── capturas/
│
├── dosbox.conf
│
└── README.md

Descripción del programa

El programa desarrollado ejecuta de forma secuencial diferentes categorías de instrucciones del procesador x86.

Bloque 1 — Transferencia de datos

En esta sección se utilizan instrucciones para mover información entre memoria y registros.

Instrucciones utilizadas
MOV
LEA
XCHG
PUSH
POP
Registros utilizados
AX
BX
CX
DX
SI
Resultado esperado
Carga correcta de valores desde memoria.
Intercambio correcto de registros.
Preservación temporal de valores usando pila.
Bloque 2 — Operaciones aritméticas

Se realizan operaciones matemáticas básicas utilizando registros y memoria.

Instrucciones utilizadas
ADD
SUB
INC
DEC
MUL
DIV
Resultados observados
Operación	Resultado
45 + 12	57
12 - 45	-33
10 * 7	70
100 / 7	Cociente = 14 / Residuo = 2
Flags observados
Instrucción	Flags relevantes
ADD	ZF=0, CF=0, OF=0
SUB	SF=1
MUL	CF/OF según resultado
DIV	No modifica flags relevantes
Bloque 3 — Operaciones lógicas

Se manipularon bits individuales mediante operaciones lógicas.

Instrucciones utilizadas
AND
OR
XOR
TEST
SHL
SHR
Resultados obtenidos
Operación	Resultado
AND B7h,0Fh	07h
OR B7h,F0h	F7h
XOR AAh,FFh	55h
SHL 08h,2	20h
SHR 20h,1	10h
Bloque 4 — Control de flujo

Se implementó una estructura condicional usando CMP y saltos condicionales.

Instrucciones utilizadas
CMP
JG
JE
JMP
LOOP
Funcionamiento

El programa compara:

valor_a = 45
valor_b = 12

Como 45 > 12:

CX = 1

indicando que el valor A es mayor.

Bucle de suma

Se implementó un bucle usando LOOP para sumar los números del 1 al 5.

Resultado esperado
1 + 2 + 3 + 4 + 5 = 15
Resultado obtenido
AX = 15
Variante factorial

Posteriormente se modificó el programa para calcular el factorial de 5.

Resultado
5! = 120
Diferencia entre LOOP y DEC/JNZ
LOOP
Reduce automáticamente CX.
Hace el código más compacto.
Ideal para bucles simples contados.
DEC/JNZ
Ofrece mayor flexibilidad.
Permite usar cualquier registro.
Más útil en lógica compleja.
Verificación con DEBUG

Se utilizó DEBUG para:

Visualizar registros.
Ejecutar instrucciones paso a paso.
Verificar flags.
Analizar memoria.
Flags verificados
ZF (Zero Flag)
CF (Carry Flag)
SF (Sign Flag)
OF (Overflow Flag)
Capturas incluidas
Compilación exitosa en DOSBox
Ejecución paso a paso en DEBUG
Estado final de AX=15
Verificación de flags
Conclusiones

Este laboratorio permitió comprender el funcionamiento interno de las instrucciones x86 y el comportamiento de los registros y flags del procesador.

También se reforzó el uso de:

ensamblador NASM,
DEBUG,
DOSBox,
Git y GitHub.

El uso de operaciones aritméticas, lógicas y de control de flujo permitió entender cómo el procesador ejecuta instrucciones a bajo nivel.