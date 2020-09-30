        .data
message1: .asciiz "Enter the number:"
odd: .asciiz "The entered number is odd"
even: .asciiz "The entered number is even"
        .text

main:
        li $v0, 4 
        la $a0, message1  
        syscall

        li $v0, 5 
        syscall
        move $t0, $v0  

        li $t1 , 1
        and $t2 , $t0, $t1

        beq $t2, $t1, skip
        li $v0, 4
        la $a0, even
        syscall

        li $v0, 10
        syscall

        skip:
        li $v0, 4
        la $a0, odd
        syscall 

        li $v0, 10
        syscall
