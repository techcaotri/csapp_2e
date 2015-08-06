#!/usr/bin/perl 
#!/usr/local/bin/perl 
use Getopt::Std;

#######################################################################
# killbuflab.pl - kills all running instances of buflab-reportd.pl
#
# Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
#
#######################################################################

$reportd = "buflab-reportd";

open(PS, "ps -e|")
    or die "$0: ERROR: Couldn't execute the ps command\n";	

while ($line = <PS>) {
    chomp($line);
   ($pid, $tty, $time, $cmd) = split(" ", $line);
#   print "pid=$pid tty=$tty time=$time cmd=$cmd\n";

    # Kill all reportd processes
    if ($cmd =~ /$reportd/) {
	if (system("kill -9 $pid") != 0) {
	    warn "$0: WARNING: Couldn't kill '$reportd' process $pid\n";
	} else {
	    print "$0: killed process $pid\n";
	}
    }

}	

exit;



