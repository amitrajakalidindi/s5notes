        .data
message1: .asciiz "The result of $s1 + $s2 + $s3 - $s4: "
        .text

main:   
        li $v0, 4 
        la $a0, message1  
        syscall 

        li $s1, 1
        li $s2, 2
        li $s3, 3
        li $s4, 4

        add $s1, $s1, $s2;
        add $s1, $s1, $s3;
        sub $s1, $s1, $s4;

        move $a0, $s1
        li $v0, 1
        syscall

        li $v0, 10
        syscall
