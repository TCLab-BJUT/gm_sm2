

LIBNAME=libsm2So.so
OBJECTS=sm2.o
CC=gcc
CPP=g++

CFLAGS  =  -I./ -fPIC  -g #-D_DEBUG

all: $(LIBNAME)


$(LIBNAME):  $(OBJECTS)
	$(CC) $(CFLAGS)  $(OBJECTS) ../libtommath-0.42.0/libtommath.a -shared -o $(LIBNAME) -ldl
	

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@ -c
.c.o:
	$(CC) $(CFLAGS) $< -o $@ -c 

.PHONY:clean
clean:
	rm -rf $(LIBNAME) $(OBJECTS)
