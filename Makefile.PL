use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

my $this_version = 'v0.0.3_main_d20190124-2108';

WriteMakefile(
    NAME             => 'Range::Validator',
    AUTHOR           => q{abrahamdsl <adsllave@outlook.com>},
    VERSION_FROM     => 'lib/Range/Validator.pm',
    ABSTRACT_FROM    => 'lib/Range/Validator.pm',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    MIN_PERL_VERSION => '5.006',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => '0',
    },
    BUILD_REQUIRES => {
        'Test::More' => '0',
    },
    PREREQ_PM => {
        #'ABC'              => '1.6',
        #'Foo::Bar::Module' => '5.0401',
        'Carp' => '0'',  # --- new line
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Range-Validator-*' },
);
