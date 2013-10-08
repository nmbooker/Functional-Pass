use inc::Module::Install;

name     'Functional-Pass';
all_from 'lib/Functional/Pass.pm';
author   q{Nick Booker <NMBooker@gmail.com>};
license  'mit';

build_requires 'Test::More';

auto_install;

WriteAll;

