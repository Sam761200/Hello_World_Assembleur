section .data
    hello db 'Hello, World!', 0   ; La chaîne à afficher

section .text
    global _start

_start:
    ; Write the string to stdout
    mov eax, 4            ; Syscall numéro pour "write"
    mov ebx, 1            ; File descriptor (1 = stdout)
    mov ecx, hello        ; L'adresse de la chaîne à afficher
    mov edx, 13           ; Longueur de la chaîne
    int 0x80              ; Appel système

    ; Exit the program
    mov eax, 1            ; Syscall pour "exit"
    xor ebx, ebx          ; Code de retour 0
    int 0x80              ; Appel système
