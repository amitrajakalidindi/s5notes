        .data
message1: .asciiz "Enter the length of rectangle:"
message2: .asciiz "Enter the breadth of rectangle:"
result: .asciiz "The area:"
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

        mul $a0, $t1, $t0 
        li $v0, 1
        syscall

        li $v0, 10
        syscall
