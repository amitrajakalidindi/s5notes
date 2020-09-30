        .data
message1: .asciiz "Enter any number n:"
result: .asciiz "The product of first n natural numbers is:"
        .text

main:
        li $v0, 4 
        la $a0, message1  
        syscall

        li $v0, 5 
        syscall

        move $t0, $v0  
        li $t1, 0
        li $t2, 1

        loop:addi $t1, $t1, 1
            mul $t2, $t2, $t1 
            beq $t0, $t1, exit
            j loop 

        exit: 
        li $v0, 4 
        la $a0, result 
        syscall

        move $a0, $t2
        li $v0, 1
        syscall

        li $v0, 10
        syscall

        jr $ra