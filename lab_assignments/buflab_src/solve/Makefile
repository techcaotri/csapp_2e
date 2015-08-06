####################################################################### 
# CS:APP buffer lab
#
# This is the Makefile that solve.pl uses to solve arbitrary buffer bombs.
#
# Copyright (c) 2003, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
#
######################################################################

CC = gcc
CPP = cpp
ICS = ..
CFLAGS = -Wall -O2 
# For Cygwin, files end with .exe
# EXE = .exe
EXE =
# Flags for bufbomb
BFLAGS =

BINDIR = ../src

BUFBOMB = $(BINDIR)/bufbomb$(EXE)
SENDSTRING = $(BINDIR)/sendstring$(EXE)
MAKECOOKIE = $(BINDIR)/makecookie$(EXE)

TEAM = csapp

cookie: $(MAKECOOKIE)
	$(MAKECOOKIE) $(TEAM)

smoke: $(SENDSTRING) smoke-$(TEAM).txt
	$(SENDSTRING) -f smoke-$(TEAM).txt | $(BUFBOMB) $(BFLAGS) -t $(TEAM)

smoke-$(TEAM).txt: smoke.pl 
	./smoke.pl -t $(TEAM) > smoke-$(TEAM).txt

fizz: $(SENDSTRING) $(BUFBOMB) fizz-$(TEAM).txt
	$(SENDSTRING) -f fizz-$(TEAM).txt | $(BUFBOMB) $(BFLAGS) -t $(TEAM)

fizz-$(TEAM).txt: fizz.pl
	./fizz.pl -t $(TEAM) > fizz-$(TEAM).txt

bang: $(SENDSTRING) $(BUFBOMB) bang-$(TEAM).txt
	$(SENDSTRING) -f bang-$(TEAM).txt | $(BUFBOMB) $(BFLAGS) -t $(TEAM)

bang-$(TEAM).txt: $(BUFBOMB) bang.pl
	./bang.pl -t $(TEAM)
	$(CC) -c bang-$(TEAM).s -o bang.o
	objdump -d bang.o > bang.d
	./exbytes.pl -b 90 < bang.d > bang-$(TEAM).txt

boom: $(SENDSTRING) $(BUFBOMB) boom-$(TEAM).txt
	$(SENDSTRING) -f boom-$(TEAM).txt | $(BUFBOMB) $(BFLAGS) -t $(TEAM)

boom-$(TEAM).txt: $(BUFBOMB) boom.pl
	./boom.pl -t $(TEAM)
	$(CC) -c boom-$(TEAM).s -o boom.o
	objdump -d boom.o > boom.d
	./exbytes.pl -b 90 < boom.d > boom-$(TEAM).txt

kaboom: $(BUFBOMB) $(SENDSTRING) kaboom-$(TEAM).txt
	$(SENDSTRING) -n 5 -f kaboom-$(TEAM).txt | $(BUFBOMB) $(BFLAGS) -t $(TEAM) -n

kaboom-$(TEAM).txt: $(BUFBOMB) kaboom.pl
	./kaboom.pl -t $(TEAM)
	$(CC) -c kaboom-$(TEAM).s -o kaboom.o
	objdump -d kaboom.o > kaboom.d
	./exbytes.pl -b 90 < kaboom.d > kaboom-$(TEAM).txt


$(BUFBOMB): $(BINDIR)/bufbomb.o $(BINDIR)/gencookie.o 
	(cd $(BINDIR); make)

clean:
	rm -f *~ *.txt *.d *.o *.s *.gdb










