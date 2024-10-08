.data
a: .word 0x0f00

.text
la x10, a
addi x11, x0, 5
jal x1, fact
addi x12, x11, 0

same: j same

fact:
    addi sp, sp, -8
    sw x1, 4(sp)
    sw x11, 0(sp)
    addi x5, x11, -1
    bge x5, x0, loop1
    addi x11, x0, -1
    addi sp, sp, 8
    jalr (x1)