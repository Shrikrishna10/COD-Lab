
# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
programs-135/l1_ws.s

### Observation - Single Cycle
1. Storing the address from .data part of the code to register using la.
2. lw fetches the data into register on the basis of offset and base address for words
3. add these values into x13 register and sends it back to the data section of the memory using sw
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x80001234
- **x12:** 0x00000123
- **x13:** 0x80001357

### Data Mapping
- **0x10000000:** 0x80001234
- **0x10000004:** 0x00000123
- **0x10000008:** 0x80001357

---

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
programs-135/l1_hs.s
### Observation - Single Cycle
1. Storing the address from .data part of the code to register using la.
2. lh fetches the data into register on the basis of offset and base address for words
3. add these values into x13 register and sends it back to the data section of the memory using sw
- Major differences with respect to program 1
	- .word -> .half (so we will have 2 bytes instead of 4)
	- lw -> lh
	- offset of 4 -> 2
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x1234
- **x12:** 0x0123
- **x13:** 0x1357

### Data Mapping
- **0x10000000:** 0x01231234
- **0x10000004:** 0x00001357


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
programs-135/l1_bs.s

### Observation - Single Cycle
1. Storing the address from .data part of the code to register using la.
2. lb fetches the data into register on the basis of offset and base address for words
3. add these values into x13 register and sends it back to the data section of the memory using sw
- Major differences with respect to program 1
	- .word -> .byte
	- lw -> lb
	- offset of 4 -> 1
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00000034
- **x12:** 0x00000023
- **x13:** 0x00000057

### Data Mapping
- **0x10000000:** 0x57002334


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
programs-135/l1_hus.s
### Observation - Single Cycle
- RISCV defaults to signed loading when it is not specified this can be seen during exectution where extra `f`s are added after the stored word
- This can be avoided by specifying the type of loading.
- For example: `lhu` instead of `lh` gives unsigned loading of data # Unsigned data type is forced hence no sign extension
- Stores a signed number by default to preserve sign (sign extension)
- For full length words, it doesn't matter because there's no space for sign extension
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00001234
- **x12:** 0x0000ff23
- **x13:** 0x00011157

### Data Mapping
- **0x10000000:** 0xff231234
- **0x10000004:** 0x00001157
