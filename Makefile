all: test_time test_mem
dummy: clean
test_time.o: test_time.c
	gcc -c -g -O0 -o $@ test_time.c
test_time: test_time.o
	gcc -o $@ test_time.o
test_mem.o: test_mem.c
	gcc -c -g -O0 -o $@ test_mem.c
test_mem: test_mem.o
	gcc -o $@ test_mem.o
clean:
	rm -f test_time.o test_time test_mem.o test_mem
