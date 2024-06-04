.syntax unified
.thumb
.text
.align 4
.global   test
.type   test, %function;

// setup test variables
rA .req r2
rB .req r3
rC .req r4
rD .req r5
rE .req r6
rF .req r7
rG .req r8

rX .req r9
rY .req r10

rZ .req r11


test:
                        // Instr Nr
    push {r0-r11, lr}   // 1
    mov r2,  #0         // 2
    mov r3,  #0         // 3
    mov r4,  #0         // 4z
    mov r5,  #0         // 5
    mov r6,  #0         // 6
    mov r7,  #0         // 7
    mov r8,  #0         // 8
    mov r9,  #0         // 9
    mov r10, #0         // 10
    mov r11, #0         // 11
    .rept 3
    nop                 // 12,13,14
    .endr
    // start of test setup: first instruction is number 15

    // LOOP-0 from MIRACLE: MIcRo-ArChitectural Leakage Evaluation:
    mov rY, #0
    loop:
    eor rY, rF
    mov rY, #0
    add rG, #-1
    cmp rG, #0
    bne loop
    done:
    eor rA, rB
    eor rC, rD
    eor rE, rF
    //bx lr

    // end of test setup
    .rept 200
    nop         // nop barrier
    .endr
    pop {r0-r11, lr}
    bx lr



@ // BRANCH-FWD from MIRACLE: MIcRo-ArChitectural Leakage Evaluation:
@ cmp rG, rG
@ eor rA, rB
@ beq target
@ eor rC, rD
@ eor rE, rF
@ target:
@ .rept 10;
@ eor rZ, rZ
@ .endr
@ // bx lr

@ // BRANCH-BWD from MIRACLE: MIcRo-ArChitectural Leakage Evaluation:
@ b branch
@ target:
@ .rept 200
@ eor rZ, rZ
@ .endr
@ bx lr
@ branch:
@ .rept 10
@ eor rZ, rZ
@ .endr
@ cmp rZ, rZ
@ eor rA, rB
@ beq target
@ eor rC, rD
@ eor rE, rF

@ // JUMP-FWD from MIRACLE: MIcRo-ArChitectural Leakage Evaluation:
@ eor rA, rB
@ b target
@ eor rC, rD
@ eor rE, rF
@ target:
@ .rept 10
@ eor rZ, rZ
@ .endr
@ //bx lr

@ // JUMP-BWD from MIRACLE: MIcRo-ArChitectural Leakage Evaluation:
@ b branch
@ target:
@ .rept 200
@ eor rZ, rZ
@ .endr
@ // bx lr
@ branch:
@ .rept 10
@ eor rZ, rZ
@ .endr
@ eor rA, rB
@ b target
@ eor rC, rD
@ eor rE, rF

.unreq rA
.unreq rB
.unreq rC
.unreq rD
.unreq rE
.unreq rF
.unreq rG

.unreq rX
.unreq rY

.unreq rZ