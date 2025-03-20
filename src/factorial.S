.global factorial
.type factorial, %function

factorial:
    push {r4, r5, r6, lr}   @ Save callee-saved registers
    
    @ Handle base case
    cmp r0, #1
    ble base_case           @ If n <= 1, return 1
    
    mov r4, r0              @ r4 = counter (n)
    mov r5, #1              @ r5 = accumulator (result)
    sub sp, sp, #4          @ Allocate space on stack
    str r5, [sp]            @ Store initial value on stack
    
    mov r6, #0              @ r6 = count of stack items
    
loop:
    ldr r5, [sp]            @ Load current result from stack
    mul r5, r5, r4          @ Multiply by counter
    sub r4, r4, #1          @ Decrement counter
    
    sub sp, sp, #4          @ Allocate more stack space
    str r5, [sp]            @ Store new result on stack
    add r6, r6, #1          @ Increment stack item counter
    
    cmp r4, #1              @ Check if we're done
    bgt loop                @ If counter > 1, continue loop
    
    @ Retrieve final result
    ldr r0, [sp]            @ Load final result
    
    @ Clean up the stack (without using shifted register)
    add r6, r6, #1          @ Include the initial value we pushed
    
cleanup_loop:
    add sp, sp, #4          @ Move stack pointer (one word at a time)
    subs r6, r6, #1         @ Decrement counter and set flags
    bne cleanup_loop        @ Continue until all items are popped
    
    pop {r4, r5, r6, pc}    @ Restore registers and return
    
base_case:
    mov r0, #1              @ Base case: return 1
    pop {r4, r5, r6, pc}    @ Restore registers and return
