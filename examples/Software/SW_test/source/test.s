.syntax unified
.thumb

.text

.align 4
.global   test
.type   test, %function;

test:
    b testCBnZ
nop
nop
nop
nop
nop

testA: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    ldr r2, [r1]
    ldr r3, [r0]
    b skipA
    eor r2, r3
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

    ldr r2, [r0]
    mov r3, #1
    cmp r3, #1
    beq skipB
    ldr r2, [r1]
    skipB:
    
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
    ldr r2, [r1]
    nop
    nop
    nop
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

    mov r3, #1
    cmp r3, #1
    beq skipD
    ldr r2, [r1, #4]
    ldr r2, [r1]
    mov r2, #0
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

    b skipE
    ldr r2, [r1]
    skipE:
    ldr r2, [r0]

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

testG: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    ldr r2, [r1]
    b skipG
    ldr r3, [r0]
    skipG:
    eor r2, r3

    pop {r4-r11,lr}
    bx lr
nop
nop
nop
nop
nop

testH: // test(input_s0_local, input_s1_local)
    push {r4-r11,lr}
    mov r2, #0
    mov r3, #0

    mov r4, #1
    cmp r4, #1
    bne skipH // not taken
    skipH_:
    ldr r2, [r1]
    ldr r3, [r0]
    eor r2, r3
    //b skipHH
    nop
    skipH:
    b skipH_
    
    skipHH:
    nop
    nop
    nop
    nop

    pop {r4-r11,lr}
    bx lr
nop
nop
nop
nop
nop

testCBnZ:
    push {r4-r11,lr}
    // -
    mov r4, #0
    ldr r4, [r0]
    mov r5, #0
    CBNZ r5, _end_testCBnZ
    ldr r5, [r1]
    eor r4, r5
    // -
    _end_testCBnZ:
    pop {r4-r11,lr}
    bx lr
    nop
    nop
    nop
    nop
    nop