# WE use Perl scripts to extract the code into .tex
CSAPP=/afs/cs.cmu.edu/project/ics
#CSAPP=c:/ics
C2TEX = $(CSAPP)/bin/c2tex
D2TEX = $(CSAPP)/bin/d2tex
S2TEX = $(CSAPP)/bin/s2tex

CFILE = ../src/bufbomb.c

EXBYTES = ../solve/exbytes.pl

all: buflab.tex
	latex buflab
	dvips buflab -o buflab.ps
	ps2pdf buflab.ps

codefiles: $(CFILE) example.txt
	$(C2TEX) -n -f $(CFILE) -t getbuf-c
	$(C2TEX) -f $(CFILE) -t smoke-c
	$(C2TEX) -f $(CFILE) -t fizz-c
	$(C2TEX) -f $(CFILE) -t bang-c
	$(C2TEX) -n -f $(CFILE) -t boom-c
	$(C2TEX) -f $(CFILE) -t kaboom-c
	$(D2TEX) -b example -t example-d

example.txt: example.s
	gcc -c example.s 
	objdump -d example.o > example.d
	$(EXBYTES) -b 00 < example.d > example.txt

clean:
	rm -f *.ps *.dvi *~ *.pdf *.log *.d *.o *.aux


