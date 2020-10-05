        .data
list: .space 80
        .text

main:
        la $s1, list
        li $t0, 60
        li $t1, 20

        srl $t3, $t1, 2
        addi $t3, $t3, 210
        sll $t3, $t3, 4

        sub $t3, $t0, $t3

        sw $t3, 80($s1)
        lw $a0, 80($s1)

        li $v0, 1
        syscall

        li $v0, 10
        syscall
