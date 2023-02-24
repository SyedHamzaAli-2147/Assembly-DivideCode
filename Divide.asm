.data
msg1: .asciiz "\n Enter the 1st Number :"
msg2: .asciiz "\n Enter 2nd Number :"
msg3: .asciiz "\n The division is :"
.text
li $v0,4
la $a0,msg1
syscall
li $v0,5
syscall
move $t1,$v0
li $v0,4
la $a0,msg2
syscall
li $v0,5
syscall
move $t2,$v0
div $t3,$t1,$t2
li $v0,4
la $a0,msg3
syscall
li $v0,1
move $a0,$t3
syscall
li $v0,10
syscall