#!/usr/bin/perl

use strict;
use warnings;

if (@ARGV == 0) {
    print "not exec\n";
}

my $word = $ARGV[0];


my @ret = `grep -rc '$word' *`;

foreach my $line (@ret) {
    if ($line =~ /.*:0/) {
        next;
    }
    print $line;
}
