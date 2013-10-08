requires 'perl', '5.12.4';

requires 'Plack::Builder', '0';
requires 'Plack::Middleware', '0';
requires 'Plack::Response', '0';
requires 'Plack::Session', '0';
requires 'Plack::Util::Accessor', '0';
requires 'File::Spec::Functions', '0';
requires 'ExtUtils::MakeMaker', '0';
requires 'List::Util', '0';
requires 'Carp', '0';
requires 'JSON', '0';
requires 'LWP::UserAgent', '0';
requires 'Mozilla::CA', '0';

on develop => sub {
    requires "Plack", "0";
    requires "Starman", "0";

    requires 'Dancer2', '0';
    requires 'Mojo::Base', '0';
    requires 'Mojo::Template', '0';
    requires 'Mojolicious::Commands', '0';
    requires 'Test::More', '0';
}
