.data
	startMessage: .asciiz "Your number is: "
	ask: .asciiz "Please enter a number: "

.text
	la $a0, startMessage
	jal print
	li $v0, 1
	li $a0, 15
	syscall
	li $v0, 11
	li $a0, '\n'
	syscall
	la $a0, ask
	jal print
	li $v0, 5
	syscall
	move $a1, $v0
	la $a0, startMessage
	jal print
	li $v0, 1
	move $a0, $a1
	syscall
	li $v0, 10
	syscall

print: #a0 contains the address of a message
	li $v0, 4
	syscall
	jr $ra