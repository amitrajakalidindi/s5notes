        .data
        .text

main:   
        li $a0, 0

        li $t0, 8
        loop: 
                add $a0, $a0, $t0
                addi $t0, $t0, -1 
                bgtz $t0, loop 

        li $v0, 10
        syscall
