#!/usr/bin/perl

use strict;

my $max  = shift;
my $file = shift;

die "not a number" unless $max =~ m/\d+/;
die "not a file"   unless -f $file;

my $count;
my @lines;

while (<>) {
    chomp;
    next unless s/^commit\s+(.*)//;
    my $commit = $1;
    push @lines, sprintf "%s:%s", substr($commit,0,6),$file;
    if (@lines == 2) {
        printf "git diff %s %s\n", @lines;
        @lines = ();
    }
    last if ++$count >= $max *2;
}
