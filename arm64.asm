.global _start
.align 2

_start:
    mov x0, #1         // stdout
    adr x1, helloworld
    mov x2, #15        // length of message
    mov x16, #4        // write system call
    svc 0              // invoke system call

    mov x0, #0         // exit code
    mov x16, #1        // exit system call
    svc 0              // invoke system call

helloworld:
    .ascii "Hello, World!\r\n"
