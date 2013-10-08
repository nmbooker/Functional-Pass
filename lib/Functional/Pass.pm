package Functional::Pass;

use 5.006;
use strict;
use warnings;
use Exporter qw(import);

our @EXPORT_OK = qw(pass_undef pass_false);

=head1 NAME

Functional::Pass - Bypass calls on incompatible values.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Call a function on compatible values, but pass through incompatible
values unchanged.

Perhaps a little code snippet.

    use Functional::Pass qw(pass_undef);

    my $value_1 = pass_undef { uc $_ } 'abc';
    # $value_1 will be 'ABC'
    my $value_2 = pass_undef { uc $_ } undef;
    # $ value_2 will be undef

=head1 EXPORT

pass_undef

=head1 FUNCTIONS

=head2 pass_undef

=cut

sub pass_undef(&$) {
    my ($function, $value) = @_;
    local $_ = $value;
    return defined($value) ? $function->($value) : $value;
}

=head2 pass_false

=cut

sub pass_false(&$) {
    my ($function, $value) = @_;
    local $_ = $value;
    return $value ? $function->($value) : $value;
}

=head1 AUTHOR

Nick Booker, C<< <NMBooker at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests on L<http://github.com/nmbooker/Functional-Pass/issues>.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Functional::Pass

=head1 LICENSE AND COPYRIGHT

Copyright 2013 Nick Booker.

This program is distributed under the MIT (X11) License:
L<http://www.opensource.org/licenses/mit-license.php>

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.


=cut

1; # End of Functional::Pass
