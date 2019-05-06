#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

my $this_version = 'v0.0.12_main_d20190506-0957';

unless ( $ENV{RELEASE_TESTING} ) {
    plan( skip_all => "Author tests not required for installation" );
}

my $min_tcm = 0.9;
eval "use Test::CheckManifest $min_tcm";
plan skip_all => "Test::CheckManifest $min_tcm required" if $@;

ok_manifest( { exclude => [ '/home/pi/software/Range-Validator/.git/*'] });
