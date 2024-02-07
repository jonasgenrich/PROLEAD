.syntax unified
.thumb

.text

.align 4
.global   test
.type   test, %function;

test:
    b testB

testA: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    ldr r2, [r0]
    mov r3, #1
    cmp r3, #1
    beq skipA
    ldr r2, [r1]
    skipA:
    mov r3, #123
    eor r2, r3
    mov r0, r3
    
    pop {r4-r11,lr}
    bx lr

testB: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    mov r3, #1
    cmp r3, #1
    beq skipB
    ldr r2, [r1]
    nop
    nop
    nop
    skipB:
    ldr r2, [r0]
    mov r3, #123
    eor r2, r3
    mov r0, r3
    
    pop {r4-r11,lr}
    bx lr

testC: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    mov r3, #1
    cmp r3, #1
    beq skipC
    ldr r2, [r1]
    //mov r2, #0
    nop
    nop
    nop
    skipC:
    ldr r2, [r0]
    mov r3, #123
    eor r2, r3
    mov r0, r3
    
    pop {r4-r11,lr}
    bx lr

testD: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    mov r3, #1
    cmp r3, #1
    beq skipD
    ldr r2, [r1, #4]
    ldr r2, [r1]
    mov r2, #0
    skipD:
    ldr r2, [r0]
    mov r3, #123
    eor r2, r3
    mov r0, r3
    
    pop {r4-r11,lr}
    bx lr