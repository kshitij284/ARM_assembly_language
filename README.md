# Assembly Programming on STM32

## Introduction

This repository documents my journey of learning ARM Assembly on the **STM32 Discovery Board** with the **Cortex-M4** processor. Initially, I avoided Assembly due to its complexity, but revisiting it with more programming experience provided valuable insights into low-level programming and processor architecture.

## Why Learn Assembly?

While higher-level languages abstract hardware interactions, Assembly allows direct control over the processor, making it indispensable for:

- **Embedded Systems:** Optimizing performance and memory usage.
- **Real-Time Applications:** Ensuring precise timing and deterministic execution.
- **Low-Level Debugging:** Understanding how the CPU executes instructions.

## Key Lessons Learned

### 1. Pseudocode is Essential

Unlike higher-level languages, Assembly requires a structured approach. Writing pseudocode before coding helps break down logic and improves code clarity.

### 2. Memory Management is Critical

Understanding memory allocation and usage is crucial. Using **fixed-width data types** like `uint32_t` instead of `int` helps maintain control over memory.

### 3. Thinking in Binary

Operations like bitwise shifts and masking become second nature in Assembly:

- **Check if a number is odd:** Inspect the **least significant bit (LSB)**.
- **Multiply by 2:** Perform a **left shift operation** (`LSL`).

## Working with STM32 and Cortex-M4

The Cortex-M4 runs in **Thumb mode**, supporting both **16-bit and 32-bit** instructions (Thumb-2). While some instructions are restricted to registers `r0–r7`, Thumb-2 extends access to `r8–r12`, with special roles for `r13 (SP)`, `r14 (LR)`, and `r15 (PC)`.

## Repository Structure

```
.
├── src/
│   ├── bubbel_sort.S     # Implementation of bubble sort
│   ├── factorial.S       # Implementation to find factorial of nth value
│   ├── fibonacci.S       # Factorial of nth number
│   ├── insertion_sort.S  # Implementation of insertion sort
│   ├── main.cpp          # C++ file calling the Assembly function
└── README.md             # This file
```

## Resources

Here are some materials that helped me understand ARM Assembly:

- **Books:**
  - _ARM Assembly Language_ by Pete Cockerell
- **YouTube Channels:**
  - [Low-Level](https://www.youtube.com/c/LowLevel) – Assembly concepts explained clearly.
  - [LaurieWired](https://www.youtube.com/@LaurieWired) – Great ARM Assembly tutorials.
- **ARM Documentation:**
  - [Cortex-M4 Technical Reference Manual](https://developer.arm.com/documentation/ddi0439/b/)
  - [ARMv7-M Architecture Reference Manual](https://developer.arm.com/documentation/ddi0403/latest/)

## Conclusion

Revisiting Assembly has been a rewarding experience, helping me develop a deeper understanding of embedded systems and processor architecture. This repository serves as a reference for others looking to explore Assembly programming on STM32.

---

### 🚀 Feel free to contribute or share your insights!
