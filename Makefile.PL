use inc::Module::Install;

name     'Functional-Pass';
all_from 'lib/Functional/Pass.pm';
author   q{Nick Booker <NMBooker@gmail.com>};
license  'mit';

requires 'Exporter';
build_requires 'Test::Most';

auto_install;

WriteAll;

