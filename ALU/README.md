 ---
# ALU 
 The ALU unit takes as input the control signal and two 64-bit inputs, and returns a 64-bit output corresponding to the control signal chosen.

## Contents
---
```
   _
   ├── ADDSUB
   │   ├── addsub.v
   │   ├── addsub_tb
   │   ├── addsub_tb.v
   │   └── addsub_tb.vcd
   │
   ├── AND
   │   ├── and.v
   │   ├── and_tb
   │   ├── and_tb.v
   │   └── and_tb.vcd
   │
   ├── XOR
   │   ├── xor.v
   │   ├── xor_tb
   │   ├── xor_tb.v
   │   └── xor_tb.vcd
   │
   ├── alu.v
   ├── alu_tb
   ├── alu_tb.v
   ├── alu_tb.vcd
   ├── README.md
   └── Report.pdf
```
## Control Inputs and Functionality
---
```
    Control 0 - ADD x and y
    Control 1 – Subtract y from x
    Control 2 – AND x and y
    Control 3 – XOR x and y
```
## Run Instructions
---
### ADD and SUB
``` 
    cd ADDSUB
    iverilog -o addsub_tb addsub_tb.v addsub.v
    vvp addsub_tb
    gtkwave addsub_tb.vcd
```
### AND
```
    cd AND
    iverilog -o and_tb and_tb.v and.v
    vvp and_tb
    gtkwave and_tb.vcd
```

### XOR
```
    cd XOR
    iverilog -o xor_tb xor_tb.v xor.v
    vvp xor_tb
    gtkwave xor_tb.vcd
```

## ALU
```
    iverilog -o alu_tb alu_tb.v alu.v
    vvp alu_tb
    gtkwave alu_tb.vcd
```
> For more details on the working of the ALU please refer to the [Report](Report.pdf)