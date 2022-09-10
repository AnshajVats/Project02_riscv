OBJS = project02.o test_c.o project02_asm.o
PROG = to_upper_1


%.o: %.c

	gcc -c -g -o $@ $<  

%.o: %.s
	as -g -o $@ $<

all : $(PROG)

to_upper_1 : $(OBJS)

	gcc -g -o $@ $^	

clean:

	rm -rf $(OBJS) $(PROG) 
