#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

my $this_version = 'v0.0.5_main_d20190124-2135';

plan tests => 1;

BEGIN {
    use_ok( 'Range::Validator' ) || print "Bail out!\n";
}

diag( "Testing Range::Validator $Range::Validator::VERSION, Perl $], $^X" );
