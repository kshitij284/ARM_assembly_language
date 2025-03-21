.global insertion_sort
.type insertion_sort, %function

@ r0 -> address of the array
@ r1 -> size of the array
@ r2 -> outerloop counter register(i)
@ r3 -> innerloop counter register(j)
@ r4 -> array[i]
 

insertion_sort:
    push {lr}        @ pushing the link register to the stack

    mov r2, #1       @ counter register starting from 1
    b loop_outer     @ jump to outerloop

loop_outer:
    cmp r2, r1       @ comparing input argument is greater than/equal to counter, if true, branch to end
    bge end

    lsl r6, r2, #2          @ r6 = 4*i (Converrt i to byte offset)
    ldr r4, [r0, r6]        @ load array[i] to r4
    mov r3, r2                @ innerloop counter register = outerloop counter register (j = i)

loop_inner: 
    cmp r3, #0               @ comparing innerloop counter with 0, if true, branch to insert
    beq insert  

    sub r6, r3, #1          @ r6 = j-1
    lsl r6, r6, #2          @ r6 = 4*j (Converrt j-1 to byte offset)
    ldr r5, [r0, r6]        @ load array[j-1] to r5

    cmp r5, r4                @ compare array[j-1] with key
    ble insert                @ if array[j-1] <= key, branch to insert

    lsl r6, r3, #2          @ r6 = 4*j (Converrt j to byte offset)
    str r5, [r0, r6]        @ store array[j-1] at array[j]

    sub r3, r3, #1          @ decrement innerloop counter
    b loop_inner             @ repeat the innerloop
    
insert:
    lsl r6, r3, #2          @ r6 = 4*j (Converrt j to byte offset)
    str r4, [r0, r6]        @ store key at array[j]
    
    add r2, r2, #1            @ increment outerloop counter
    b loop_outer               @ repeat the outerloop

end:
    pop {pc}                  @ return from the function