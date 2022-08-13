.data
arr: .space 80

.text
add $s0, $zero, $zero					# a = 0
addi $s1, $zero, 1					# b = 1
addi $s2, $zero, 20					# n = 20

	add $s3 , $zero, $zero
FOR: 
	slt $t0, $s3, $s2
	beq $t0, $zero, SAIFOR
	
	add $t1, $s0, $s1
	add $s0, $zero, $s1
	sw $s1, arr($s3)
	li $v0, 1
	la $a0, arr($s3)
	syscall
	add $s1, $zero, $t1
	addi $s3, $s3, 1
	j FOR
SAIFOR: