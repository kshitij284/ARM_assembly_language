.global factorial
.type factorial, %function
    
@ Implementing factorial function using recursion

factorial:
    push {lr} @ pushing the link register to the Stack
    mov r1, r0 @ moving the argument value to r4
    
    cmp r0, #1 @ comparing the value to be less than / equal to 1
    ble base_case @ if true, branch to base_case

    sub r0, r0, #1 @ decrement the argument value by 1
    bl factorial @ calling the factorial function recursively

    mul r0, r1, r0 @ r0 = n * factorial(n-1)
    pop {pc} @ return from the function

base_case:
    mov r0, #1 
