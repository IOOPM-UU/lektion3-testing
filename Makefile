CC_COMPILER = gcc
CC_FLAGS    = -Wall -g

test:	test.c set.o tree.o
	$(CC_COMPILER) $(CC_FLAGS) $^ -o $@
	./test

.PHONY: all
all: 	set.o tree.o

set.o:	set.c
	$(CC_COMPILER) $(CC_FLAGS) $? -c -o $@

tree.o:	tree.c
	$(CC_COMPILER) $(CC_FLAGS) $? -c -o $@

clean:
	rm -rf *.o set test test.dSYM
