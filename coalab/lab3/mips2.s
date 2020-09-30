        .data
message1: .asciiz "Enter the first number:"
message2: .asciiz "Enter the second number:"
message3: .asciiz "The numbers after swapping are\n"
message4: .asciiz "The first number:"
message5: .asciiz "\nThe second number:"
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
        la $a0, message3
        syscall

        move $t2, $t0
        move $t0, $t1
        move $t1, $t2

        li $v0, 4
        la $a0, message4
        syscall

        move $a0, $t0
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, message5
        syscall

        move $a0, $t1
        li $v0, 1
        syscall

        li $v0, 10
        syscall
