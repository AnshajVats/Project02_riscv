OBJS = project02.o test_c.o project02_asm.o
PROG = to_upper max3

OBJS_max = project02_max.o test_c.o project02_max_asm.o


%.o: %.c

	gcc -c -g -o $@ $<  

%.o: %.s
	as -g -o $@ $<

all : $(PROG)

to_upper : $(OBJS)

	gcc -g -o $@ $^	

max3 : $(OBJS_max)
	
	gcc -g -o $@ $^	


clean:

	rm -rf $(OBJS) $(OBJS_max) $(PROG) 
