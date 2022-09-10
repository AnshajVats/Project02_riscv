.global upper_case_return

/*
	 Contains string to be worked on at a0
*/


upper_case_return:

	li t0, 32		# t0 = 32

	la t5, (a0)

loop:
	lb t1, (a0)	# t1 = *a0

	beq t1, zero, done 
	sub t2, t1, t0		# convertind 'f' to 'F'	
	sw t2, (a0)			# saves t2 at a[0]
	addi a0, a0, 1		# moves a0 to point to next char
	j loop	



done:
	mv a0, t5
	ret
