# Tiny-VM

A very simple virtual machine that runs on LC-3 Computer and LC-3 assembly language.

## Compile and Run

* To compile:

> make

* To run an object file:

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

* <b>General use registers:</b> Eight 16-bit registers for general use to store values.

* <b>Condition Codes:</b> Three 1-bit registers to store negative,positive and zero conditions.
