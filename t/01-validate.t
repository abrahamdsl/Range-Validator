#!/usr/bin/perl -T
use 5.006;
use strict;
use warnings;
use Test::More qw(no_plan);
use Test::Exception;

my $this_version = 'v0.0.5_main_d20190124-2135';

use_ok( 'Range::Validator' );

ok ( scalar Range::Validator::validate( '0..2') == 3,
     'ok valid string produces correct number of elements' );

note ( 'starting test of forbidden characters in the string form' );

dies_ok { Range::Validator::validate( 'xxxinvalidstringxxx' ) }
  "expected to die with invalid character";

note ( 'start checks about incorrect dots in string' );
=doc
dies_ok {
  Range::Validator::validate( '1.2' ) }
  'expected to die with a lone dot';

dies_ok {
  Range::Validator::validate( '0..2,5.6,8' ) }
  'expected to die with a lone dot ??' ;
=cut

foreach my $string ( '1.2', '0..2,5.6,8', '1,2,.,3', '.' ) {
  dies_ok { Range::Validator::validate( $string ) }
    "expected to die with a lone dot in range[$string]";
}
