# Program 1: 
### Statement: Addition of double word using RV32I

### Name of file:
programs-135/add_double.s

### Observation - Single Cycle
- We are storing the 64 bits of the 2 double words in two 32 bit registers each
- After that we add the values in the 4 register 
- We store the values with a offset value of 4 to make sure they will be able to be read as a double word. 

### Register Mapping
x10 : 0x10000000
x11 : 0x22311234
x12 : 0x23245543
x13 : 0x32345611
x14 : 0x23456754
x15 : 0x54656845
x16 : 0x4669bc97


### Data Mapping
0x10000000 : 0x22311234
0x10000004 : 0x23245543
0x10000008 : 0x32345611
0x1000000c : 0x23456754
0x10000010 : 0x54656845
0x10000014 : 0x4669bc97
