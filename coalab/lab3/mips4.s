        .data
message1: .asciiz "Enter the value of x: "
message2: .asciiz "Enter the value of y: "
message3: .asciiz "Enter the value of z: "
result1: .asciiz "The value of 4x*x + 2x + 3: "
result2: .asciiz "\nThe value of 5x + 3y +z: "
result3: .asciiz "\nThe value of ((5x + 3y + z) / 2) * 3 : "
result4: .asciiz "\nThe value of (4x / 3) * y : "

        .text

main:
        li $v0, 4 
        la $a0, message1  
        syscall

        li $v0, 5 
        syscall
        move $t1, $v0 

        li $v0, 4 
        la $a0, message2 
        syscall

        li $v0, 5 
        syscall
        move $t2, $v0 

        li $v0, 4 
        la $a0, message3 
        syscall

        li $v0, 5 
        syscall
        move $t3, $v0  



        mul $t0, $t1, $t1
        li $t4, 4
        mul $t0, $t0, $t4
        li $t4, 2
        mul $t5, $t1, $t4
        add $t0, $t0, $t5
        addi $t0, $t0, 3

        li $v0, 4
        la $a0, result1
        syscall

        move $a0, $t0
        li $v0, 1
        syscall


        li $t4, 5
        mul $t0, $t1, $t4
        li $t4, 3
        mul $t5, $t2, $t4
        add $t0, $t0, $t5
        add $t0, $t0, $t3

        li $v0, 4
        la $a0, result2
        syscall

        move $a0, $t0
        li $v0, 1
        syscall


        li $t4, 2
        div $t0, $t0, $t4
        li $t4, 3
        mul $t0, $t0, $t4

        li $v0, 4
        la $a0, result3
        syscall

        move $a0, $t0
        li $v0, 1
        syscall

        li $t4, 4
        mul $t0, $t4, $t1
        li $t4, 3
        div $t0, $t0, $t4
        mul $t0, $t0, $t2

        li $v0, 4
        la $a0, result4
        syscall

        move $a0, $t0
        li $v0, 1
        syscall

        li $v0, 10
        syscall

