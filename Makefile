CC = gcc
AR = ar
CFLAGS = -O2

.PHONY: all clean

all: zlib/libz.a libpng/libpng.a freetype/libfreetype.a
	cp zlib/libz.a libz.a
	cp libpng/libpng.a libpng.a
	cp freetype/libfreetype.a libfreetype.a

zlib/libz.a:
	cd zlib && $(MAKE) all CC="$(CC)" AR="$(AR)" CFLAGS="$(CFLAGS)"

libpng/libpng.a:
	cd libpng && $(MAKE) all CC="$(CC)" AR="$(AR)" CFLAGS="$(CFLAGS)"

freetype/libfreetype.a:
	cd freetype && $(MAKE) all CC="$(CC)" AR="$(AR)" CFLAGS="$(CFLAGS)"

clean:
	$(RM) *.a
	$(RM) *.o
	$(RM) *.dll
	$(RM) *.so
	cd zlib && $(MAKE) clean
	cd libpng && $(MAKE) clean
	cd freetype && $(MAKE) clean

