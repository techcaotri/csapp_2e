#!/usr/bin/perl
#!/usr/local/bin/perl
use lib ".";
use config;

#######################################################################
# genhtml.pl - Generates Buffer Lab Web status page
#
# Read in result file containing following information:
# cookie:team:result0:result1:result2:result3:result4
# where each result is 0: not yet, 1: invalid, 2: done
# Generate cute WWW page showing this information.
#
# Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
#
#######################################################################

# Some conventions
# Do I want the version with icons?
$useicons = 1;

# The Web page that we are creating
$htmlfile = "$WWW/bufbombstatus.html";

# Directory in $WW for diagnostic messages
$diagnosesubdir = "report";

# HTML stuff

@levelnames = ("Candle", "Sparkler", "Firecracker", "Dynamite", "Nitroglycerin");

# Scores represented as 0 (Not tried), 1 (Invalid), 2 (Done)
# Interpretation of the different fields
@text = ("Not Yet", "Invalid", "Done");

# Index icons by score and level
@icons = (["nothing.gif", "nothing.gif", "nothing.gif", "nothing.gif", "nothing.gif"],
	  ["icandle.gif", "isparkler.gif", "ifirecracker.gif", "idynamite.gif", "ikaboom.gif"],
	  ["candle.gif", "sparkler.gif", "firecracker.gif", "dynamite.gif", "kaboom.gif"]
	  );

# Count number of teams and number of students
$cnt = 0;
$scnt = 0;

# Count number of valid entries at each level
@valid_count = (0,0,0,0,0);


open(HTMLFILE, ">$htmlfile") || die("Couldn't open $htmlfile\n");

# HTML Header

$utime = scalar localtime;

print HTMLFILE <<HTML;

<TITLE> $LABTITLE </TITLE>
<BODY bgcolor="ffffff">

<H1>$LABTITLE</H1>

This page is generated automatically for generaton $BOMB_GENERATION. It was last updated $utime.
HTML

if ($useicons) {
print HTMLFILE <<HTML;
<p>
If you see an icon with a slash through it:
<br>
<center><img src="icons/no.gif"></center>
<br>
This means that the testing code thinks that your solution is invalid.  Try clicking on the
icon for a diagnostic message.  Some possible reasons are:
<ul>
<li>You somehow bypassed the protocol used by our email submission program.  In that case,
shame on you!
<li>Your solution is not sufficiently robust.  This is especially a good possibility
at the nitroglycerin level.  Try to design your code to be more tolerant of fluctuations
in the stack position.
<li>Our code isn't working properly.  We will monitor all submissions flagged as invalid and
try to diagnose them.
</ul>
By the way: looking at someone else's invalid entry is not going to help you in generating
your solution to these problems.  The exploit strings for this assignment are team-specific.
HTML
}

print HTMLFILE <<HTML;
<p>
<hr>
<table>
<bgcolor="ffffff">    
<tr>
<td Width=96><strong>Cookie</strong></td>
<td Width=80><center><strong>Candle</strong></center></td>
<td Width=80><center><strong>Sparkler</strong></center></td>
<td Width=80><center><strong>Firecracker</strong></center></td>
<td Width=80><center><strong>Dynamite</strong></center></td>
<td Width=80><center><strong>Nitroglycerin</strong></center></td>
</tr>    
HTML

open(RESULTFILE, "$RESULTFILE") || die("Couldn't open file $RESULTFILE\n");

while (<RESULTFILE>) {
    $cnt++;
    $line = $_;

    ($cookie, $team, $result[0], $result[1], $result[2], $result[3], $result[4])
	= split(/:/, $line);

    @members = split(/\+/, $team);
    $scnt+= @members;

    print HTMLFILE "<tr>\n<td><kbd>$cookie</kbd></td>\t";
    for ($j = 0; $j < 5; $j++) {
        if ($result[$j] == 2) {
             $valid_count[$j]++;
        }
	if ($result[$j] == 1) {
	    # Print HTMLFILE diagnostic information
	    print HTMLFILE "<td><center><a href=\"$diagnosesubdir/$cookie-$j.txt\">";
	} else {
	    print HTMLFILE "<td><center>";
	}
	if ($useicons && $result[$j] > 0) {
	    print HTMLFILE "<img src=\"icons/$icons[$result[$j]][$j]\" border=\"0\">";
	} else {
	    print HTMLFILE "$text[$result[$j]]";
	}
	if ($result[$j] == 1) {
	    print HTMLFILE "</a></center></td>\n";
	} else {
	    print HTMLFILE "</center></td>\n";
	}
    }
    print HTMLFILE "\n</tr>\n";
}

close RESULTFILE;

print HTMLFILE <<HTML;
</table>
<hr>

$scnt people working in $cnt teams.
<br>
Valid submissions:
Level 0: $valid_count[0],
Level 1: $valid_count[1],
Level 2: $valid_count[2],
Level 3: $valid_count[3]
Level 4: $valid_count[4]
<p>
Return to <a href=\"$homepage\">Course Home Page</a>


</body>
HTML

close HTMLFILE;






