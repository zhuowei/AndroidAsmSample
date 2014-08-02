// There are plenty of references on what GNU AS (which is the assembler for this file) takes for pseudo-instructions
// for example, a quick Google search for 
// GNU AS .globl
// turns up http://www.coranac.com/files/gba/re-ejected-gasref.pdf which isn't completely awful.

// Unified syntax (enables a few more Thumb instructions)
.syntax unified

// put the following into the text section (the section with executable code. Don't ask me why it's called text)
.text
// declare a global - this will create a symbol, which the C code can use to refer to this code
.globl addThreeNumbers
// our own label
addThreeNumbers:
// document your method with comments
// add three numbers (passed in r0, r1, and r2) together
// result returned in r0

// note that, since this is called from C, we need to observe the EABI calling convention, i.e.
// r0, r1, r2, and r3 are used to pass arguments,
// extra arguments passed on the stack,
// Wikipedia has more info on ARM EABI.
	add r0, r0, r1		// r0 += r1
	add r0, r0, r2		// r0 += r2
	bx lr			// return
