.global to_upper_s

/*
	 Contains string to be worked on at a0
*/


to_upper_s:

	li t0, 32		# t0 = 32

	mv t5, a0		# store first value
	li t3, 97		# start of small letters
	li t4, 123		# end of small letters
loop:
	lb t1, (a0)			# t1 = *a0
	beq t1, zero, done 
	
	blt t1, t3, ignore	# checks if it is a small letter or not
	bge t1, t4, ignore	# check if it is a small letter or not

	
	sub t2, t1, t0		# convertind 'f' to 'F'	
	sb t2, (a0)			# saves t2 at a[0]
	addi a0, a0, 1		# moves a0 to point to next char
	j loop	

ignore:
	addi a0, a0, 1		# moves a0 to point to next char
	j loop
done:
	mv a0, t5
	ret
