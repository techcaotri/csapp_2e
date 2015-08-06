CC = gcc

CFLAGS = -Wall -O2 -m32 -D__USE_GNU
# For Cygwin must have extension .exe on executable file
# EXE = .exe
EXE =

PROGS = bufbomb$(EXE)\
	bufbomb_new$(EXE)\
	sendstring$(EXE)\
	makecookie$(EXE)

all: $(PROGS)

sendstring$(EXE): sendstring.c $(OTHERS)
	$(CC) $(CFLAGS) -o sendstring sendstring.c $(OTHERS)

makecookie$(EXE): gencookie.o makecookie.c gencookie.h
	$(CC) $(CFLAGS) -o makecookie makecookie.c gencookie.o

bufbomb$(EXE): bufbomb.c gencookie.o gencookie.h config.h $(OTHERS)
	$(CC) -Wall -O2 -m32 bufbomb.c gencookie.o $(OTHERS) -o bufbomb
	objdump -d bufbomb$(EXE) > bufbomb-exe.d

bufbomb_new$(EXE): bufbomb_new.c gencookie.o gencookie.h config.h $(OTHERS)
	$(CC) -Wl,--section-start=bstack=0x55586000 -Wall -O2 -m32 bufbomb_new.c gencookie.o $(OTHERS) -o bufbomb_new
	objdump -d bufbomb_new$(EXE) > bufbomb_new-exe.d

.c.s:
	$(CC) $(CFLAGS) -S $*.c

.c.o:
	$(CC) $(CFLAGS) -c $*.c

clean:
	rm -f $(PROGS) *.o core *~ *.d









