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
	addi sp, sp, -32	# alloc stack space
	sd ra, 0(sp)		#preserve ra

	li t0, 0			#index for the loop
	mv t1, a0
	li t2, 0			# stores max index
	li s2, 4			# help move index
	li t4, 0			# index of the largest number from start of the array
	li t5, 0			# largest number in array 
	li t6, 0			# hold arr[0]

loop:
	beq t0, a1, done
	sd a0, 8(sp)		#preserve a0	
	sd a1, 16(sp)		#preserve a1
	sd t0, 24(sp)		#preserve t0

	
	
	call  max_index_return
	mv t2, a0 


	

	ld a0, 8(sp)		#restore a0
	ld t0, 24(sp)		#restore t0
	
	mul t4, s2, t2

	ADD a0, t4, a0

	lw t5, (a0)
	
	sd a0, 32(sp)		# put the addresh on stack
	
	ld a0, 8(sp)		#restore a0

	lw t6, (a0)
	
	bge t5, t6, swap 	#t5 >= t6
	addi a0, a0,4
	addi t0, t0, 1
	j loop

swap:
	sw t5, (a0)
	ld a0, 32(sp)		#restore a0[32]
	sw t6, (a0)
	ld a0, 8(sp)		#restore a0
	addi a0, a0,4
	addi t0, t0, 1
	
	j loop


done:
						#epilogue
	ld ra, 0(sp)		#restore ra
	addi sp, sp, 32 	# dealloc the memory
	ret
	
