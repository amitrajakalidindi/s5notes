        .data
message1: .asciiz "Enter any number:"
result: .asciiz "The result after left shift of 2bits:"
        .text

main:
        li $v0, 4 
        la $a0, message1  
        syscall

        li $v0, 5 
        syscall

        move $t0, $v0  

        li $v0, 4
        la $a0, result
        syscall

        sll $a0, $t0, 2
        li $v0, 1
        syscall

        li $v0, 10
        syscall
