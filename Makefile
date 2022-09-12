OBJS = project02.o test_c.o project02_asm.o
PROG = to_upper max3 find_max_index sort

OBJS_max = project02_max.o test_c.o project02_max_asm.o

OBJS_max_index = project02_max_index.o test_c.o project02_max_index_asm.o

OBJS_sort = project02_sort.o test_c.o project02_sort_asm.o

%.o: %.c

	gcc -c -g -o $@ $<  

%.o: %.s
	as -g -o $@ $<

all : $(PROG)

to_upper : $(OBJS)

	gcc -g -o $@ $^	

max3 : $(OBJS_max)
	
	gcc -g -o $@ $^	

find_max_index : $(OBJS_max_index)
	
	gcc -g -o $@ $^

sort : $(OBJS_sort)

	gcc -g -o $@ $^


clean:

	rm -rf $(OBJS) $(OBJS_max) $(OBJS_sort) $(OBJS_max_index) $(PROG) 
