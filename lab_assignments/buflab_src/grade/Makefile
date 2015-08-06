# Makefile for Buffer Lab Autograder/Web status page generator

# Start the autograder daemon
start:
	./buflab-reportd.pl &

# Stop the autograder/status page generator
stop:
	./killbuflab.pl

# Grade the submissions
grades:
	(rm -rf www/report; mkdir www/report)
	./validate.pl
	./genhtml.pl
	./gengrades.pl > grades.txt 

clean:
	rm -f grades.txt result.txt msg.txt *.log *~
	rm -rf www/*.html www/report

