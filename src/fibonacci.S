.global fibonacci
.type fibonacci, %function

fibonacci:
    push {lr} @ pushing the link register to the Stack
    cmp r0, #1 @ comparing the argument value to be less than _or equal to 1
    ble end

    mov r1, #0
    mov r2, #1
    mov r3, #2 @ Counter register starting from 2

loop:
    cmp r3, r0 @ comparing the counter with argrument value
    bgt end  @ if counter is greater than argument value, go to end

    add r4 , r1, r2 @ adding the last two values
    mov r1, r2 @ update last values
    mov r2 , r4 @ update current value
    add r3 , r3 , #1 @ increment counter
    b loop @ loopback & repeat till counter reaches argument value

end:
    mov r0, r2 @ update the return value
    pop {pc} @ return from the function





    
