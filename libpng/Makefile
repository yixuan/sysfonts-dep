ZLIBINC = ../zlib
ZLIBLIB = ../zlib
ZLIB = $(ZLIBLIB)/libz.a

STATICLIB = libpng.a

CPPFLAGS = -I../include

CP = cp -fp
RM = rm -f

LD = $(CC)
AR_RC = $(AR) rcs

LDRELEASE = -s
LDFLAGS = $(LDRELEASE)

OBJS =  png.o pngerror.o pngget.o pngmem.o pngpread.o \
	pngread.o pngrio.o pngrtran.o pngrutil.o pngset.o \
	pngtrans.o pngwio.o pngwrite.o pngwtran.o pngwutil.o

.PHONY: all clean

all: $(STATICLIB)

.c.o:
	$(CC) $(CFLAGS) -I$(ZLIBINC) $(CPPFLAGS) -c $< -o $@

$(STATICLIB): $(OBJS)
	@$(RM) $@
	$(AR_RC) $@ $(OBJS)

clean:
	$(RM) $(STATICLIB)
	$(RM) *.o 

