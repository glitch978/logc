CC = gcc
AR = ar r

CFLAGS  = -std=c99 -g -Wall -Wpedantic -Wno-missing-braces -pthread -O2
CFLAGS += -Iinclude/.

build:
	@ echo ==== Building liblogc ====
	@ gcc $(CFLAGS) -o src/log.o -c src/log.c
	@ ar r liblogc.a src/log.o
	@ echo ==== Done ====

clean:
	@ rm -f lib/log.o ./liblogc.a
	@ echo ==== Done ====