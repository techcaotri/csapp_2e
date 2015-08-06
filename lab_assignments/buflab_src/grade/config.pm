# Configuration information for buffer bomb autograders.  


#########################################
# These are either site- or term-specific
#########################################

# What email spool file should programs look in to find bufbomb submissions?
# You'll only need to change this once.
$MAILFILE = "/var/spool/mail/bomb";

# What is the current generation of the buffer bomb? 
# You'll need to change this each time you offer the lab.
$BOMB_GENERATION = 15215;

# What is the name of this lab?
# This is another one you'll need to change each time time you offer the lab.
$LABTITLE = "15-213 Fall, 2002 Buffer Lab Status";

# What is the URL for the class home page?
# You might need to change this each time you offer the lab.
$HOMEPAGE = "";


#############################################
# You probably won't need to modify any these
#############################################

# What keyword is used to indicate a buffer bomb submission in the mail file?
$BOMBKEY = "BUFBOMB-$BOMB_GENERATION-KEY";

# Where should validate.pl store the processed results?
$RESULTFILE = "result.txt";

# (Optional) file containing names of teams to exclude from validation
$EXCLUDEFILE = "EXCLUDE";

# Where are the buffer bomb binaries?
$BINDIR = "../src";

# What executable file should be used in generating a solution string?
$EXECUTABLE = "$BINDIR/bufbomb";

# If there are different versions of the buffer bomb binary, 
# what are they called? (for lab debugging only)
@PROGRAMS = ("bufbomb", "bufbomb");

# In what directory is the web status page? 
# Icons are in $WWW/icons and diagnostic reports for
# invalid submissions are in $WWW/report.
$WWW = "/afs/cs/usr/droh/www";

# How often should we try to update the Web status page? (seconds)
$SLEEPTIME = 5;


