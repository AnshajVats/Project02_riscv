.global max_return


max_return:

	BLT a0, a1, done
	BLT a0, a2, work
	ret

work:
	mv a0, a2
	ret


done:
	BLT a1, a2, last
	mv a0, a1
	ret

last:
	mv a0, a2
	ret
	

/*
loop: 
	lw t3, a1
	BLT a0, t0, done			# a0 < t0
	BLT t3, t1, else	
	mv t1, t3
	addi a1, a1, 4
	addi t0, t0, 1
	j loop


else:
	addi a1, a1, 4
	addi t0, t0, 1
	j loop
	



done:
	mv a0, t1
	ret
*/

