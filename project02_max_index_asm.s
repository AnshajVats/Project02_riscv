.global max_index_return
/*
	a0 = array of numbers
	a1 = len
*/


max_index_return:
	li t0, 0			#loopindex variable
	li t2, 0			# stores max index
	li t3, 0			# stores max number

loop:
	beq t0, a1, done
	lw t1, (a0)				# t1 = *a0
	blt t3, t1, continue 	# t3 < t1
	addi t0, t0, 1
	addi a0, a0,4
	j loop
	
	
	

continue:
	mv t3, t1
	mv t2, t0
	j loop

done:
	mv a0, t2
	ret
	

