use strict;
use warnings;

use Test::Most;

use Functional::Pass qw(pass_undef pass_false);

is((pass_undef { uc($_) } "abc"), "ABC", 'pass_undef { uc($_) } "abc" should return "ABC"');
is((pass_undef { uc($_) } undef), undef, 'pass_undef { uc($_) } undef should return undef');

is((pass_undef { $_->{a} } {a=>1}), 1);
is((pass_undef { $_->{a} } undef), undef);

is((pass_false { $_ + 1 } 0), 0);
is((pass_false { $_ + 1 } ''), '');
is((pass_false { $_ + 1 } undef), undef);
is((pass_false { $_ + 1 } 1), 2);
done_testing;
