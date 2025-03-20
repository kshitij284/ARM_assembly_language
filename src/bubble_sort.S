.global bubble_sort
.type bubble_sort, %function

bubble_sort:
    push {r4-r7, lr}       @ Save registers and link register to stach
    mov r4, r0             @ move the address of the array to r4
    mov r5, r1             @ move the size of the array to r5
    sub r6, r5, #1        @ r6 = outer loop counter

outer_loop:
    cmp r6, #0             @ check if the counter has reached 0
    ble end                @ if true, branch to end

    mov r7, r6             @ r7 = inner loop counter
    mov r3, r4             @ r3 = address of the array i.e array pointer
    
inner_loop:
    ldr r1, [r3]           @ load the value at current address to r3 i.e array[i]
    ldr r2, [r3, #4]      @ load the next value to r2 i.e array[i+1]
    cmp r1, r2            @ compare the two values
    ble dont_swap          @ if r1<= r2, branch to dont_swap

    @ if above condition is false i.e r9 > r10, swap the values
    str r10, [r8]          @ store the value of r10 at current address i.e array[i]
    str r9, [r8, #4]       @ store the value of r9 at next address i.e array[i+1]

dont_swap:
    add r8, r8, #4         @ increment the address for next value in the array
    subs r7, r7, #1        @ decrement the inner loop counter
    bgt inner_loop         @ if inner loop counter > 0, continue the loop

    subs r6, r6, #1        @ decrement the outer loop counter
    b outer_loop           @ if outer loop counter > 0, continue the loop

end:
    pop {r4-r7, pc}       @ restore registers and return
