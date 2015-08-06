#!/usr/bin/perl 
#!/usr/local/bin/perl

# Read configuration information
use lib ".";
use config;

#######################################################################
# buflab-reportd.pl - CS:APP buffer lab autograding daemon
#
# Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
#
#######################################################################

while (1) {
    # Scan the email spool file and summarize most recent results for each team
    # in $RESULTFILE
    system("./validate.pl"); 

    # Regenerate Web page with results contained in $RESULTFILE
    system("./genhtml.pl");

    # Wait for a bit, and then do it all over again
    sleep($SLEEPTIME);
}

