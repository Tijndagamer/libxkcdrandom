CC = gcc
VPATH = src
CFLAGS = -I include
HEADERS = $(wildcard include/*.h)
SRC = $(wildcard src/*.c)
OBJ = xkcdrandom.o
LIB = libxkcdrandom.a

$(LIB) :
	$(CC) $(CFLAGS) -c $(SRC) -o $(OBJ)
	ar -cvq $(LIB) $(OBJ)
tests :
	$(LIB)
	$(CC) -o tests test/test.c -L. -lxkcdrandom -Iinclude
clean :
	-rm $(LIB) $(OBJ) tests
