CC = gcc
VPATH = src
CFLAGS = -I include -c
HEADERS = $(wildcard include/*.h)
SRC = $(wildcard src/*.c)
OBJ = xkcdrandom.o
LIB = libxkcdrandom.a

all :
	$(CC) $(CFLAGS) $(SRC) -o $(OBJ)
	ar -cvq $(LIB) $(OBJ)
tests :
	$(CC) -o test.o test/test.c -L. -lxkcdrandom
clean :
	-rm $(LIB) $(OBJ)
