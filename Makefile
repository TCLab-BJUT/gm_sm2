
all:
	rm -rf bin include
	mkdir bin
	mkdir include
	make -C libtommath-0.42.0
	make -C sm2_impl
	cp sm2_impl/libsm2So.so bin
	cp sm2_impl/sm2.h sm2_impl/sm3.h sm2_impl/tommath.h sm2_impl/tommath_class.h sm2_impl/tommath_superclass.h include

.PHONY: clean
clean:
	rm -rf bin
	rm -rf include
	make clean -C sm2_impl
	make clean -C libtommath-0.42.0

