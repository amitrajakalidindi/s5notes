        .data
message1: .asciiz "Enter any number n:"
result: .asciiz "The binary representation is:"
nextline: .asciiz "\n"

        .text

main:  
        li $t2, 0
        li $t6, 0
        li $t4, 8
        loop:
            li $t1, 0x00000080
            li $v0, 4 
            la $a0, message1  
            syscall

            li $v0, 5 
            syscall
            move $t0, $v0

            beq $t0, $t2, exit

            li $v0, 4 
            la $a0, result 
            syscall

            li $t3, 0 
            loop1:
                addi $t3, $t3, 1
                and $t5, $t0, $t1

                beq $t5 , $t6 , skip
                li $t5, 1
                
                skip:
                move $a0, $t5
                li $v0, 1
                syscall

                srl $t1, $t1, 1

                beq $t3, $t4, exit1
                j loop1
            exit1:

            li $v0, 4 
            la $a0, nextline
            syscall


            j loop 

        exit: 

        li $v0, 10
        syscall