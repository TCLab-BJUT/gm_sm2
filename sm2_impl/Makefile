

LIBNAME=libsm2So.so
OBJECTS=sm2.o sm3.o sm2_Intrfs_test.o
CC=g++
CPP=g++

CFLAGS  =  -I./ -fPIC  -g #-D_DEBUG

all: $(LIBNAME)


$(LIBNAME):  $(OBJECTS)
	$(CPP) $(CFLAGS)  $(OBJECTS) ../libtommath-0.42.0/libtommath.a -shared -o $(LIBNAME) -ldl

.cpp.o:
	$(CPP) $(CFLAGS) $< -o $@ -c
.c.o:
	$(CC) $(CFLAGS) $< -o $@ -c 

.PHONY:clean
clean:
	rm -rf $(LIBNAME) $(OBJECTS)
