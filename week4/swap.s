.data
a: .byte 0x12, 0x13

.text
la x10,a

    lw x12, 0(x10)       # Load the value of 
    lw x13, 1(x10)       # Load the value of 

    sw x13, 0(x10)       # Store the value of 
    sw x12, 1(x10)       # Store the value of 
