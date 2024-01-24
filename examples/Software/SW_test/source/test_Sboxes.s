.syntax unified
.thumb

.text

.align 4
.global   test_Sboxes
.type   test_Sboxes, %function;
test_Sboxes:

    push {r4-r11,lr}

    eor r1, r2, r3
    eor r2, r3, r4
    eor r3, r4, r5
    eor r4, r5, r6
    eor r5, r6, r7
    eor r6, r7, r8
    eor r7, r8, r9
    eor r8, r9, r10
    eor r9, r10, r11

    pop {r4-r11,lr}
    bx lr
