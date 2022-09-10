.global upper_case_return

/*
	 Contains string to be worked on at a0
*/


upper_case_return:

	li t0, 32		# t0 = 32

loop:
	lb t1, (a0)	# t1 = *a0

	beq t1, zero, done 
	sub t2, t1, t0
	addi a0, a0, 1		# moves a0 to point to next char
	j loop	



done:

	mv t2, a0
	ret
