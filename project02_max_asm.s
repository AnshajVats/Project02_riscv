.global max_return


max_return:

	li t0, 1 	#index to move the array

	li t1, 0	#the max value known

loop: 

	BLT t0, a0, done
	BLT a0, t1, else
	mv t1, a0
	j loop


else:
	addi t0, t0, 1
	j loop
	



done:
	mv a0, t1
	ret
