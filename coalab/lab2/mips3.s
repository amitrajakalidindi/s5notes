        .data
message1: .asciiz "Enter the first number:"
message2: .asciiz "Enter the second number:"
result: .asciiz "Result when divided:"
        .text

main:
        li $v0, 4 
        la $a0, message1  
        syscall

        li $v0, 5 
        syscall

        move $t0, $v0  
        li $v0, 4
        la $a0, message2
        syscall

        li $v0,5        
        syscall

        move $t1,$v0
        li $v0, 4
        la $a0, result
        syscall

        div $a0, $t0, $t1
        li $v0, 1
        syscall

        li $v0, 10
        syscall
