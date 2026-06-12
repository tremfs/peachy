# Type `make` to build, `make run` to build and run, `make clean` to remove the binary.

CFLAGS = -Wall -Wextra -pedantic -std=c11

peachy: peachy.c
	$(CC) peachy.c -o peachy $(CFLAGS)

run: peachy
	./peachy

clean:
	rm -f peachy
