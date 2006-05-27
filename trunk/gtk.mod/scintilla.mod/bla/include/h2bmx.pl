#!/usr/bin/perl
# Converts the "#define"-s in Sci*.h to BlitzMax-"Const"-s
# (C) 2006 Philipp Kerling
# 
use strict;
use warnings;

# open(IN, "Scintilla.iface") or die("Couldn´t open Scintilla.iface: $! $?");
while (my $line = <>) {
	if ($line =~ m/^#define /i) {
		my @values_one = split(/ /, $line);
		if (scalar @values_one > 2) {
			if ($values_one[2] =~ m/^0x/) {
				$values_one[2] =~ s/^0x/\$/;
			}
			print "Const " . $values_one[1] . ":Int = " . $values_one[2];
		}
	}
}
