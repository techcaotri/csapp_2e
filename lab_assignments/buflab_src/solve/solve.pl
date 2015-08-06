#!/usr/bin/perl 
#!/usr/local/bin/perl

use Getopt::Std;
use lib "../grade";
use config;

#######################################################################
# solve.pl - automatically solves a buffer bomb
#
# Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
#
#######################################################################

$| = 1; # autoflush output on every print statement

#
# usage - print help message and terminate
#
sub usage 
{
    printf STDERR "$_[0]\n";
    printf STDERR "Usage: $0 [-hs] -t <teamname> -l <level>\n";
    printf STDERR "Options:\n";
    printf STDERR "  -t <teamname> Team name\n";
    printf STDERR "  -l <level>    Level to solve\n";
    printf STDERR "  -s            Submit solution to grading server\n";
    printf STDERR "  -h            Print this message\n";
    die "\n";
}

$flags = "";

# Get specified team and level
getopts('hst:l:');
if ($opt_h) {
    usage();
}

if (!$opt_t) {
    usage("Missing team name (-t)\n");
}

if ($opt_s) {
    $flags = "-s";
}

$team = $opt_t;
$level = $opt_l;
($level >= 0 && $level <= 4) || usage("Can only have levels 0-4");

# Make sure the makecookie binary is there 
system("cd $BINDIR; make > /dev/null 2>&1"); 

# Solve buffer bomb for specified team and level
$cookie = `$BINDIR/makecookie $team`;
chomp($cookie);

@levelnames = ("smoke", "fizz", "bang", "boom", "kaboom");

$cmd = "make $levelnames[$level] TEAM=$team COOKIE=$cookie BFLAGS=$flags";
print "Calling $cmd\n";
print `$cmd`;

exit;

