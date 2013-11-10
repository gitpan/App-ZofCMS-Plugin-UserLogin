use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::ZofCMS::Plugin::UserLogin',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/App/ZofCMS/Plugin/UserLogin.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'DBI'               => 1.602,
        'HTML::Template'    => 2.9,
        'URI::Escape'       => 3.29,
        'perl' => '5.006',
    },
    configure_requires => { 'Module::Build' => 0 },
    add_to_cleanup      => [ 'App-ZofCMS-Plugin-UserLogin-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
