        .data
message1: .asciiz "\n"
        .text

main:

        li $t2, 0xabcd1234
        li $t3, 16

        sll $t1, $t2, 8 
        move $a0, $t1
        li $v0, 1
        syscall
        li $v0, 4 
        la $a0, message1  
        syscall

        srl $t1, $t2, 4 
        move $a0, $t1
        li $v0, 1
        syscall
        li $v0, 4 
        la $a0, message1  
        syscall

        sra $t1, $t2, 4 
        move $a0, $t1
        li $v0, 1
        syscall
        li $v0, 4 
        la $a0, message1  
        syscall

        srlv $t1, $t2, $t3 
        move $a0, $t1
        li $v0, 1
        syscall
        li $v0, 4 
        la $a0, message1  
        syscall

        li $v0, 10
        syscall
