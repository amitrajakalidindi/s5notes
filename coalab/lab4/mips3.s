        .data
message1: .asciiz "Enter a number: "
message2: .asciiz "Not of entered number: "
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

        nor $a0, $t0, $0

        li $v0, 1
        syscall

        li $v0, 10
        syscall
