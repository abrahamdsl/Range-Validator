#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Range::Validator' ) || print "Bail out!\n";
}

diag( "Testing Range::Validator $Range::Validator::VERSION, Perl $], $^X" );
