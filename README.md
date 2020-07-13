# Tiny-VM

A very simple virtual machine that runs on LC-3 Computer and LC-3 assembly language.

## Compile and Run

<b>To compile:</b>

> make

<b>To run an object file:</b>

> ./tvm maze.obj, or

> ./tvm 2048.obj

<b> Note: </b> <code>maze.asm</code> is provided just to understand how a LC-3 assembly program looks like. Virtual machine itself executes image files, i.e. object files.

## Intruction Set Architecture (ISA)

* <b>Memory Address Space:</b> 16-bit address space that addresses 65,535 words, each word is 16 bits.
  * Certain sections of memory is reserved for special uses such as:
    - Trap vector table
    - Interrupt vector table
    - Operating system
    - Device register addresses.

* <b>Bit Numbering:</b> Bits are numbered from right to left.

* <b>Instructions:</b> Each instruction is 16 bits, \[15:12] are opcode and \[11:0] contains further information about the instruction.

* <b>Program Counter:</b> A 16-bit register containing the next instruction to be executed.

* <b>General use registers:</b> Eight 16-bit registers for general use to store values. Hence, each register needs 3 bits for addressing in machine code.

* <b>Condition Codes:</b> Three 1-bit registers to store negative,positive and zero conditions. These bits are declared to obtain needed conditions for branch operations, i.e. BR. Branch operations can have multiple forms based on the combinations of these condition flags.

* <b> Immediate Values:</b> Some instructions can take constant values such as ADD and AND operations. This VM uses 5-bit constant values.

<h4> Numerical Notations </h4>

* xNumber: number in hexadecimal format

* #Number: number in decimal format

<h2> Instructions </h2>

<h4> ADD (0001) </h4>

Arithmetic Addition

```c
ADD DES SRC1 SRC2
```

```c
ADD DES SRC1 IMM
```

<h4> AND (0101) </h4>

Bit-wise Logical and

```c
AND DES SRC1 SRC2
```

```c
AND DES SRC1 IMM
```

<h4> BR (0000) </h4>

Conditional Branch

```c
BR n z p LABEL
```

<h4> JMP (1100) </h4>

Jump

```c
JMP BaseR
```

<h4> JSR & JSRR (0100) </h4>

Jump to Subroutine

```c
JSR LABEL
```

```c
JSRR BaseR
```

<h4> LD (0010) </h4>

Load

```c
LD DST LABEL
```

<h4> LDI (1010) </h4>

Load Indirect

```c
LDI DST LABEL
```

<h4> LDR (0110) </h4>

Load Base + offset

```c
LDR DST BaseR offset
```

<h4> LEA (1110) </h4>

Load Effective Address

```c
LEA DST LABEL
```

<h4> NOT (1001) </h4>

Bit-wise Logical NOT

```c
NOT DST SRC1
```

<h4> RET (1100) </h4>

Return

```c
RET
```

<h4> RTI (1000) </h4>

Return Indirect

```c
RTI
```

<h4> ST (0011) </h4>

Store

```c
ST SRC1 LABEL
```

<h4> STI (1011) </h4>

Store Indirect

```c
STI SRC1 LABEL
```

<h4> STR (0111) </h4>

Store Base + offset

```c
STR SRC1 BaseR offset
```

<h4> TRAP (1111) </h4>

Trap operations

```c
TRAP trapvector
```

<h4> Unused opcode (1101) </h4>

* Initiate an illegal opcode exception.
