.global sort_array
/* max_return returns the index of largest number.
	a0 = s
	a1 = c
*/

/* 
	a0 = *array
	a1 = len
  	
*/

sort_array:
						#prologue 
	addi sp, sp, -16	# alloc stack space
	sd ra, 0(sp)		#preserve ra

	li t0, 0
	mv t2, a0
	li t3, 0

loop:
	beq t0, a1, done
	sd a0, 8(sp)		#preserve a0	
	sd a1, 16(sp)		#preserve a1

	
	
	call  max_index_return

	mv t3, a0 

	ld a0, 8(sp)		#restore a0


done:
						#epilogue
	ld ra, 0(sp)		#restore ra
	addi sp, sp, 16
	ret
	
