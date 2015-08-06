# Builds the CS:APP Data Lab

# Instructor: Change DEST to the public directory where you want 
# the handout files copied to, and where the students will access them 
# from. Or you can set it when you invoke make: "make dist DEST=/foo/bar"
DEST = 

# Writeup files and tar files will use this name.
LABNAME = buflab

# No need to change anyting below here 
PROGS = {bufbomb,makecookie,sendstring}

all: bufbomb labwriteup handout handout-tarfile

bufbomb:
	#########################
	# Build the bufbomb codes
	#########################
	(cd src; make)

labwriteup:
	########################
	# Format the lab writeup
	########################
	(cd writeup; make)

handout: bufbomb labwriteup
	###################################################
	# Copy the necessary files to the handout directory
	###################################################
	(rm -rf buflab-handout; mkdir buflab-handout)
	cp -p ./src/$(PROGS) buflab-handout

handout-tarfile: handout
	########################################
	# Build tarfile of the handout directory
	########################################
	(cd buflab-handout; tar cvf ../$(LABNAME)-handout.tar *)

dist: 
	#####################
	# Update distribution
	#####################
	cp -p $(LABNAME)-handout.tar $(DEST)
	cp -p writeup/$(LABNAME).ps $(DEST)
	cp -p writeup/$(LABNAME).pdf $(DEST)

clean:
	#########################################
	# Clean the entire buflab directory tree
	#########################################
	rm -f *.tar *~
	rm -rf buflab-handout
	(cd src; make clean)
	(cd writeup; make clean)
	(cd grade; make clean)
	(cd solve; make clean)
