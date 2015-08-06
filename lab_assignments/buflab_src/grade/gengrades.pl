#!/usr/bin/perl
#!/usr/local/bin/perl
use Getopt::Std;

# Read configuration information
use lib ".";
use config;

#######################################################################
# gengrades.pl - Creates a gradefile for each team in CS:APP Buffer Lab
#
# Read in file containing following information:
#
# cookie:team:result0:result1:result2:result3:result4
#
# where each result is 0: not yet, 1: invalid, 2: done
# Generate grades based on weighted score for results.
#
# Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
#
#######################################################################

# How many points for each phase?
@weight  = (10, 20, 30, 40, 10);

# For values 0 (not yet), 1 (invalid), 2 (done), how much do they count?
@correctness = (0.0, 0.25, 1.0);

$cnt = 0;

# parse the command line arguments
getopts('hr:');

if ($opt_h) {
    print STDERR "Usage: gengrades.pl [-h] [-r resultfile]\n";
    print STDERR "Options\n";
    print STDERR "  -r <file> specify output file\n";
    print STDERR "  -h        print help information\n";
    die "\n";
}

if ($opt_r) {
    $RESULTFILE = $opt_r;
}

# Open result file
open(RESULTFILE, "$RESULTFILE") || die("Couldn't open file $RESULTFILE\n");

# Step through and build up record for each student
# Record of form name team s0 s1 s2 s3 s4 tot
$gcnt = 0;
$scnt = 0;
$stotal = 0;
$gtotal = 0;
while (<RESULTFILE>) {
    $line = $_;
    ($cookie, $team, $result[0], $result[1], $result[2], $result[3], $result[4])
	= split(/:/, $line);
    @members = split(/\+/, $team);
    $gcnt++;
    $total = 0;
    for ($j = 0; $j < 5; $j++) {
	$score[$j] = $correctness[$result[$j]]*$weight[$j];
	$total += $score[$j];
    }
    $gtotal += $total;
    foreach $m (@members) {
	$grade[$scnt] = "$m\t$team\t$score[0]\t$score[1]\t$score[2]\t$score[3]\t$score[4]\t$total";
	$stotal += $total;
	$scnt++;
    }
}
close RESULTFILE;
print "$gcnt groups, $scnt students\n";

$gavg = $gtotal/$gcnt;
$savg = $stotal/$scnt;

print "Averages: $gavg (group) $savg (individual)\n";


@grade = sort @grade;

foreach $g (@grade) {
    print "$g\n";
}
    

