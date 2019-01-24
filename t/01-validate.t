#!/usr/bin/perl
use 5.006;
use strict;
use warnings;
use Test::More qw(no_plan);
use Test::Exception;

my $this_version = 'v0.0.4_main_d20190124-2122';

use_ok( 'Range::Validator' );

ok ( scalar Range::Validator::validate( '0..2') == 3,
     'ok valid string produces correct number of elements' );

note ( 'starting test of forbidden characters in the string form' );

dies_ok { Range::Validator::validate( 'xxxinvalidstringxxx' ) }
  "expected to die with invalid character";

note ( 'start checks about incorrect dots in string' );
dies_ok {
  Range::Validator::validate( '1.2' ) }
  'expected to die with a lone dot';

dies_ok {
  Range::Validator::validate( '0..2,5.6,8' ) }
  'expected to die with a lone dot ??' ;

