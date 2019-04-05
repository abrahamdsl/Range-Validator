package Range::Validator;

use 5.006;
use strict;
use warnings;
use Carp;

my $this_version = 'v0.0.5_main_d20190124-2135';

our $VERSION = '0.05';

sub validate {
  my $range = undef;
  my @range_arr = ();

  # @comment abrahmdsl 20190124-2054: assume we have a  string if we
  #   receive only one argument
  if ( scalar( @_ ) == 1 ) {
    $range = $_[0];
  }
  # .. otherwise received a list
  else{
    # ...
  }
  $range =~ s/\s+//g;
  #die if invalid characters
  Carp::croak "[e] Invalid character passed in string [$range]!"
    if ( $range =~ /[^\s,.\d]/ ); # --- new line
  # @comment abrahamdsl 20190124-2119: not allowed a lone '.'
  Carp::croak "\[e\] Invalid range \[$range\] (single '.')!"
    if ( $range =~ /[^.]+\.{1}[^.]+/ );
  # not allowed more than 2.
  Carp::croak "\[e\] Invalid  range \[$range\] (more than 2 '.')!"
    if ( $range =~ /[^.]+\.{3}/ );
  @range_arr = eval( $range );
  return @range_arr;
}

1;

__DATA__

=head1 NAME

Range::Validator - a simple module to verify array and list range

=head1 VERSION

Version 0.01

=cut

=head1 SYNOPSIS
  
  use Range::Validator;

    my @range = Range::Validator->validate(0..3);      # a valid range
	
	my @range = Range::Validator->validate(0..3,2);    # a overlapping range
	
	my @range = Range::Validator->validate('1,3,7');   # a valid range passed as a string
    
	my @range = Range::Validator->validate('1,XXX,3'); # an invalid range  passed as a string
	
# more POD ...

=cut


=head1 SUBROUTINES

=head2 validate

  This function accepts a string or a list (range) and returns an array.
  In the string form the accepted characters are: positive integers, dots,
    commas and spaces. Every space will be removed.
=cut

sub function1 {
}

=head2 function2

=cut

sub function2 {
}

=head1 AUTHOR

abrahamdsl, C<< <adsllave at outlook.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-range-validator at rt.cpan.org>, or through
the web interface at L<https://rt.cpan.org/NoAuth/ReportBug.html?Queue=Range-Validator>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Range::Validator


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=Range-Validator>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Range-Validator>

=item * CPAN Ratings

L<https://cpanratings.perl.org/d/Range-Validator>

=item * Search CPAN

L<https://metacpan.org/release/Range-Validator>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2019 abrahamdsl.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut

1; # End of Range::Validator
