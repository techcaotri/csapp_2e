#!/usr/bin/perl 
#!/usr/local/bin/perl
use Getopt::Std;
# Read configuration information
use lib ".";
use config;

#######################################################################
# validate.pl - validates each CS:APP Buffer Lab email submission
#
# Read in mail file.  Extract submissions & validate them.
# Create file containing aggregate results for each team of the form:
# cookie:team:res0:res1:res2:res3:res4
# where score is 0 for no entry, 1 for invalid, 2 for valid.
# Write diagnostic files for all invalid entries. These will be 
# linked to the web page created by genhtml.pl.
# Optional EXCLUDE file can exclude certain teams from consideration.
#
# Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
#
#######################################################################

# setup
$stringfile = "msg.txt";
$invalidfile = "invalid.log";
$foundinvalid = 0;
@levelnames = ("candle", "sparkler", "firecracker", "dynamite", "nitroglycerin");

# parse the command line arguments
getopts('hm:r:e:w:');

if ($opt_h) {
    print STDERR "Usage: validate.pl [-h] [-m mailfile] [-r resultfile] [-e excludefile] [-w wwwdir]\n";
    print STDERR "Options\n";
    print STDERR "  -m <file> specify mail file containing submissions\n";
    print STDERR "  -r <file> specify output file\n";
    print STDERR "  -e <file> specify excluded teams file\n";
    print STDERR "  -w <www>  specify www directory.  Diagnostic files stored in <www>/report\n";
    print STDERR "  -h        print help information\n";
    die "\n";
}

if ($opt_m) {
    $MAILFILE = $opt_m;
}
if ($opt_r) {
    $RESULTFILE = $opt_r;
}

if ($opt_e) {
    $EXCLUDEFILE = $opt_e;
}

if ($opt_w) {
    $WWW = $opt_w;
}

$diagnosedir = "$WWW/report";

@keywords = ("Smoke", "Fizz", "Bang", "Boom", "KABOOM");

$cnt = 0;

# Build up list of names to exclude
@exclude = ();

if (open(EXCLUDEFILE, $EXCLUDEFILE)) {
    $ecnt = 0;
    while(<EXCLUDEFILE>) {
	$line = $_;
	chomp($line);
	$exclude[$ecnt++] = $line;
    }
    close(EXCLUDEFILE);
}

# First run through the mail file.  Extract most recent submission
# for each combination of team and level.  Create array 
# @entry containing entries of the form
# cookie:team:level:version:string
# where version is either 0 (old) or 1 (new).
open(MAILFILE, $MAILFILE) || die "Couldn't open file $MAILFILE\n";

while (<MAILFILE>) {
    $line = $_;
    $ok = $line =~ /$BOMBKEY/;
    if ($ok) {
	($junk, $team, $level, $cookie, $string, $version) = 
	    split(/:/, $line);
	if (!$version) {
	    $version = 0;
	}

	# See if team excluded
	foreach $ename (@exclude) {
	    if ($ename eq $team) {
		$ok = 0;
	    }
	}
    }
    if ($ok) {
	# See if there is already an entry for this team/level
	$found = 0;
	for ($i = 0; !$found && $i < $cnt; $i++) {
	    ($ecookie, $eteam, $elevel, $estring, $eversion) =
		split(/:/, $entry[$i]);
	    if ($eteam eq $team && $elevel == $level) {
		$entry[$i] = "$cookie:$team:$level:$string:$version";
		$found = 1;
	    }
	} if (!$found) {
	    $entry[$cnt++] = "$cookie:$team:$level:$string:$version";	    
	}
    }
}
close MAILFILE;

#print "$cnt unique entries\n";

# Now test each entry
for ($i = 0; $i < $cnt; $i++) {
    ($cookie, $team, $level, $string, $version) = split(/:/, $entry[$i]);

    open(STRINGFILE, ">$stringfile")
	|| die "Couldn't open file $stringfile\n";

    $realcookie = `$BINDIR/makecookie $team`;
    chomp($realcookie);
    $realcookie =~ s/0x//;
    print STRINGFILE $string;
    close STRINGFILE;

    if ($level == 4) {
	$result = `$BINDIR/sendstring -n 5 -f msg.txt | $BINDIR/$PROGRAMS[$version] -g -n -t $team\n`;
    } 
    else {
	$result = `$BINDIR/sendstring -f msg.txt | $BINDIR/$PROGRAMS[$version] -g -t $team\n`;
    }
    
    if (hex($realcookie) == hex($cookie) &&
	$result =~ /VALID/
	&& !($result =~ /Better luck next time/)
	&& $result =~ $keywords[$level]) {
	$entry[$i] = "$cookie:$team:$level:2";
    } 

    else {
	$entry[$i] = "$realcookie:$team:$level:1";
	if (!$foundinvalid) {
	    $foundinvalid = 1;
	    open(INVALIDFILE, ">$invalidfile") || die "Can't open $invalidfile\n";
	}
	print INVALIDFILE $line;
	$dfile = "$diagnosedir/$realcookie-$level.txt";
	open(DIAGNOSEFILE, ">$dfile")
	    || die "Couldn't open file $dfile\n";
	$message = $result; 
	$message =~ s/Team: [+0-9a-zA-Z]*/Team: XXX/; 
	if (hex($realcookie) != hex($cookie)) {
	    print DIAGNOSEFILE
		"Cookie for team $team should be $realcookie, not $cookie\n";
	}
	elsif (!($result =~ /VALID/)) {
	    print DIAGNOSEFILE
		"failed to pass test for level $levelnames[$level]\n";
	}
	elsif (!($result =~ $keywords[$level])) {
	    print DIAGNOSEFILE
		"Passed, but not for level $levelnames[$level]\n";
	}
	print DIAGNOSEFILE
	    "$PROGRAMS[$version] gave the following result:\n$message";
	print DIAGNOSEFILE
	    "It was tested with string:\n$string";
	close DIAGNOSEFILE;
    }
}

# Sort the test results by cookie.  
# Also places invalid ones ahead of valid ones

@entry = sort @entry;


open(RESULTFILE, ">$RESULTFILE") || die("Couldn't open $RESULTFILE\n");

# Aggregate test results by cookie.  Generate .html and grading data
$lastcookie = 0;
$lastteam = "Noone";

@result = (0, 0, 0, 0, 0);

# Scores represented as 0 (Not tried), 1 (Invalid), 2 (Done)

for ($i = 0; $i < $cnt; $i++) {
    ($cookie, $team, $level, $outcome) = split(/:/, $entry[$i]);
    if (hex($cookie) != hex($lastcookie)) {
	if ($i > 0) {
	    print RESULTFILE "$lastcookie:$lastteam:$result[0]:$result[1]:$result[2]:$result[3]:$result[4]\n";
	}
	$lastcookie = $cookie;
	$lastteam = $team;
	@result = (0, 0, 0, 0, 0);
    }
    $result[$level] = $outcome;
}

if ($cnt > 0) {
    print RESULTFILE "$lastcookie:$lastteam:$result[0]:$result[1]:$result[2]:$result[3]:$result[4]\n";
}

close RESULTFILE;


