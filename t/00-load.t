#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Functional::Pass' ) || print "Bail out!\n";
}

diag( "Testing Functional::Pass $Functional::Pass::VERSION, Perl $], $^X" );
