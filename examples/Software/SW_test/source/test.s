.syntax unified
.thumb

.text

.align 4
.global   test
.type   test, %function;

test:
    b testF
nop
nop
nop
nop
nop

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
    
    pop {r4-r11,lr}
    bx lr
nop
nop
nop
nop
nop

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
    
    pop {r4-r11,lr}
    bx lr
nop
nop
nop
nop
nop

testC: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    mov r3, #1
    cmp r3, #1
    beq skipC
    ldr r2, [r1, #4]
    ldr r2, [r1]
    mov r2, #0
    skipC:
    ldr r2, [r0]
    
    pop {r4-r11,lr}
    bx lr
nop
nop
nop
nop
nop

testD: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    b skipD
    ldr r2, [r1]
    skipD:
    ldr r2, [r0]

    pop {r4-r11,lr}
    bx lr
nop
nop
nop
nop
nop

testE: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    ldr r2, [r1]
    ldr r3, [r0]
    b skipE
    eor r2, r3
    skipE:

    pop {r4-r11,lr}
    bx lr
nop
nop
nop
nop
nop


testF: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    b skipF
    ldr r2, [r1]
    nop
    b skipF
    ldr r3, [r0]
    skipF:
    eor r2, r3

    pop {r4-r11,lr}
    bx lr
nop
nop
nop
nop
nop