.syntax unified
.thumb

.text

.align 4
.global   test
.type   test, %function;
test: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    ldr r2, [r0]
    mov r3, #1
    cmp r3, #1
    beq skip
    ldr r2, [r1]
    skip:
    mov r3, #123
    eor r2, r3
    mov r0, r3
    
    pop {r4-r11,lr}
    bx lr