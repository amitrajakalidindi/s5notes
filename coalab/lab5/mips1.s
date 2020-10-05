        .data
message1: .asciiz "Enter the first number:"
message2: .asciiz "Enter the second number:"
message3: .asciiz "First number is divisible by second number\n"
message4: .asciiz "Second number is divisible by first number"
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

        li $t3, 0
        rem $t2, $t0, $t1
        bne $t2, $t3, skip
        li $v0, 4
        la $a0, message3
        syscall

        skip:
        rem $t2, $t1, $t0
        bne $t2, $t3, skip1
        li $v0, 4
        la $a0, message4
        syscall

        skip1:
        li $v0, 10
        syscall
