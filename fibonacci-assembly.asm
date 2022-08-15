.data
 esp: .asciiz " "
 
.text
add $s0, $zero, $zero					# a = 0
addi $s1, $zero, 1					# b = 1
addi $s2, $zero, 20					# n = 20


	add $s3 , $zero, $zero				# i = 0
FOR: 
	slt $t0, $s3, $s2				# t0 = se i < n 
	beq $t0, $zero, SAIFOR				# se t0 == 0, saifor
	
	add $t1, $s0, $s1				# temp = a+b	
	add $s0, $zero, $s1				# a = b
	li $v0, 1
	la $a0, 0($s1)					#printf ("%d",b)
	syscall
	li $v0, 4
	la $a0, esp
	syscall
	add $s1, $zero, $t1				# b = temp
	addi $s3, $s3, 1				# i++
	j FOR
SAIFOR:
