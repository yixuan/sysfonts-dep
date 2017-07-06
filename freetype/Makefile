STATICLIB = libfreetype.a

EXTRA_CFLAGS = -DHAVE_FSSPEC=0 -DHAVE_ATS=0 \
	-DFT_CONFIG_OPTION_SYSTEM_ZLIB \
	-DFT2_BUILD_LIBRARY

CP = cp -fp
RM = rm -f

LD = $(CC)
AR_RC = $(AR) rcs

LDRELEASE = -s
LDFLAGS = $(LDRELEASE)

OBJS = base/ftsystem.o base/ftdebug.o base/ftinit.o base/ftbase.o \
	base/ftbitmap.o base/ftglyph.o \
	cff/cff.o cid/type1cid.o sfnt/sfnt.o truetype/truetype.o \
   	type1/type1.o type42/type42.o winfonts/winfnt.o \
	smooth/smooth.o autofit/autofit.o psaux/psaux.o \
	pshinter/pshinter.o psnames/psnames.o gzip/ftgzip.o

.PHONY: all clean

all: $(STATICLIB)

.c.o:
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) -I./include -I../zlib -c $< -o $@

$(STATICLIB): $(OBJS)
	@$(RM) $@
	$(AR_RC) $@ $(OBJS)

clean:
	$(RM) $(STATICLIB)
	$(RM) $(OBJS)
	$(RM) *.o
