.global fibonacci
.type fibonacci, %function

fibonacci:
    push {lr} @ saving link register
    @ sanity check , we pass the known argument & check if it is imported correctly _in the function
    cmp r0, #10
    beq return_1
    bne return_0

return_1:
    mov r0, #1
    b end_function

return_0:
    mov r0, #0
    b end_function

end_function:
    pop {pc} @ restoring link register
    


    
