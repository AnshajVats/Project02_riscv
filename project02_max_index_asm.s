.global max_index_return
/*
	a0 = number
	a1 = number
	a2 = number
*/


max_index_return:

	BLT a0, a1, done		# a0 < a1
	BLT a0, a2, work		# a0 < a2 
	li a0, 0				# a0 = 0
	ret

work:
	li a0, 2				# a0 = 2
	ret


done:
	BLT a1, a2, last		# a1 < a2
	li a0, 1				# a0 = 1
	ret

last:
	li a0, 2				# a0 = 2
	ret
	

