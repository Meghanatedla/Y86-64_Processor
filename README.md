 ---
# **_Y86-64 Processor_**

 A Y86-64 processor implemented using verilog that is able to execute all the instructions in the Y86-64 Instruction set architecture.

 This repository contains the implementation of both a sequential as well as a 5-stage pipeline Y86-64 processor

## _Contents_
---
```
_
├── ALU
│   ├── ADDSUB
│   │   ├── addsub.v
│   │   ├── addsub_tb
│   │   ├── addsub_tb.v
│   │   └── addsub_tb.vcd
│   │
│   ├── AND
│   │   ├── and.v
│   │   ├── and_tb
│   │   ├── and_tb.v
│   │   └── and_tb.vcd
│   │
│   ├── XOR
│   │   ├── xor.v
│   │   ├── xor_tb
│   │   ├── xor_tb.v
│   │   └── xor_tb.vcd
│   │
│   ├── alu.v
│   ├── alu_tb
│   ├── alu_tb.v
│   ├── alu_tb.vcd
│   ├── README.md
│   └── Report.pdf
│
├── PIPE
│   ├── alu.v
│   ├── decode.v
│   ├── decode_tb.v
│   ├── decode_tb.vcd
│   ├── execute.v
│   ├── execute_tb.v
│   ├── execute_tb.vcd
│   ├── fetch.v
│   ├── fetch_tb.v
│   ├── fetch_tb.vcd
│   ├── memory.v
│   ├── memory_tb.v
│   ├── memory_tb.vcd
│   ├── pipe.v
│   ├── pipe.vcd
│   ├── pipe_control.v
│   ├── reg_file.txt
│   ├── write_back.v
│   ├── write_back_tb.v
│   └── write_back_tb.vcd
│
├── SEQ
│   ├── decode
│   │   ├── decode.v
│   │   ├── decode_tb.v
│   │   ├── decode_tb.vcd
│   │   └── reg_file.txt
│   │
│   ├── execute
│   │   ├── alu.v
│   │   ├── execute.v
│   │   ├── execute_tb.v
│   │   └── execute_tb.vcd
│   │ 
│   ├── fetch
│   │   ├── fetch.v
│   │   ├── fetch_tb.v
│   │   └── fetch_tb.vcd  
│   │ 
│   ├── memory
│   │   ├── memory.v
│   │   ├── memory_tb.v
│   │   └── memory_tb.vcd   
│   │ 
│   ├── pc_update
│   │   ├── pc_update.v
│   │   ├── pc_update_tb.v
│   │   └── pc_update_tb.vcd  
│   │ 
│   ├── seq
│   │   ├── alu.v
│   │   ├── decode.v
│   │   ├── execute.v
│   │   ├── fetch.v
│   │   ├── memory.v
│   │   ├── pc_update.v
│   │   ├── reg_file.txt
│   │   ├── seq.v
│   │   ├── seq.vcd
│   │   └── write_back.v
│   │
│   └── write_back
│       ├── reg_file.txt
│       ├── write_back.v
│       ├── write_back_tb.v
│       └── write_back_tb.vcd  
│
├── Project_Report.pdf
└── README.md 

```

## _Processor Features_
---
* The frequency of the processor is 1Ghz
* The data memory and instruction memory are separated. 
    * The instruction memory has 256-32 bit words, that is, 1024 bytes.This is equivalent to 1kB of instruction memory. 
    * The data memory has 1024-64 bits which is 8kB of data memory.

## _Instructions_
---
```
halt
nop
rrmovq
irmovq
rmmovq
mrmovq
addq
subq
and
xorq
jmp
jle
jl
je
jne
jge
jg
cmovle
cmovl
cmove
cmovne
cmovge
cmovg
call
ret
pushq
popq
```
> For more details on the working of the processor please refer to the [Project Report](Project_Report.pdf)

## _Command to Run `seq`_
---
```
    cd SEQ/seq
    iverilog –o seq seq.v
    vvp seq
```
## _Command to Run `pipe`_
---
```
    cd PIPE
    iverilog –o pipe pipe.v
    vvp pipe
```

Note: 
- The implementation of Y86-64 processor was a group project made in my second year.
- By: Meghana Tedla and Anushka Agrawal

