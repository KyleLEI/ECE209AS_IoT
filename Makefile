all: raspberry_loops
dummy: clean
raspberry_loops.o: raspberry_loops.c
	gcc -c -g -O0 -o $@ raspberry_loops.c
	gcc -S raspberry_loops.c
raspberry_loops: raspberry_loops.o
	gcc -o $@ raspberry_loops.o
clean:
	rm -f raspberry_loops.o raspberry_loops
