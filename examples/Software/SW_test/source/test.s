.syntax unified
.thumb

.text

.align 4
.global   test
.type   test, %function;
test:

    push {r4-r11,lr}

    eor r1, r2, r3
    eor r2, r3, r4
    eor r3, r4, r5
    mov r1, #1
    cmp r1, #0
    beq test1
    sub R1, R2, R3
    sub R2, R3, R5
    sub R5, R2, R6
    test2:
    a:
    mov r1, #1
    cmp r1, #1
    bne b
    b:
    mov r2, #2
    cmp r2, #2
    bne a
    eor r5, r6, r7
    eor r6, r7, r8
    eor r7, r8, r9

    pop {r4-r11,lr}
    bx lr


test1:
    add r1, r2, r3
    add r2, r3, r4
    add r3, r4, r5
    b test2
