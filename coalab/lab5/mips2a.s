        .data
        .text

main:   
        li $t9, -1
        li $t8, 5
        li $t1, 1
        li $t2, 1
        li $s0, 0

        bgez $t9, skip

        if:
                sub $s0, $s0, $t8
                addi $t1, $t1, 2
                j exit
        skip:
                move $s0, $t8
                addi $t2, $t2, 1
                j exit

        exit:  

        li $v0, 10
        syscall
