.global max_return

/* finds the max between three numbers*/


max_return:
	li t0, 0 		#index to more the pointer
	li t1, 0		#max number
loop:
	beq t0, a1, done
	lw t2, (a0)			# loads the number from the t2 = *a0
	blt t1, t2, continue
	addi a0, a0, 4		# walk arr next 4 bytes elem 
	addi t0, t0, 1 		# incereses the t0++
	j loop 

continue:
	mv t1, t2
	j loop

done:
	mv a0, t1
	ret
	
	
