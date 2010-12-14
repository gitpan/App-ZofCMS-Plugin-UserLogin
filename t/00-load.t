#!/usr/bin/env/perl

use Test::More tests => 4;

BEGIN {
    use_ok('DBI');
    use_ok('HTML::Template');
    use_ok( 'App::ZofCMS::Plugin::UserLogin' );
    use_ok('URI::Escape');
}

diag( "Testing App::ZofCMS::Plugin::UserLogin $App::ZofCMS::Plugin::UserLogin::VERSION, Perl $], $^X" );
