
use strict;
use warnings;

use 5.012;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Plack Middleware to integrate with Mozilla Persona, cross-browser login system for the Web.",
  "AUTHOR" => "J. Bolila <joao\@bolila.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Plack-Middleware-Auth-BrowserID",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Plack::Middleware::Auth::BrowserID",
  "PREREQ_PM" => {
    "Carp" => "1.32",
    "JSON" => "2.59",
    "LWP::UserAgent" => "6.05",
    "Mozilla::CA" => 20130114,
    "Plack::Middleware" => 0,
    "Plack::Response" => "1.0029",
    "Plack::Session" => "0.20",
    "Plack::Util::Accessor" => 0,
    "parent" => "0.228",
    "warnings" => "1.18"
  },
  "TEST_REQUIRES" => {
    "Dancer2" => "0.10",
    "ExtUtils::MakeMaker" => "6.78",
    "File::Spec::Functions" => "3.40",
    "List::Util" => "1.32",
    "Mojo::Base" => 0,
    "Mojo::Template" => 0,
    "Mojolicious::Commands" => 0,
    "Plack::Builder" => 0,
    "Test::More" => "0.98",
    "lib" => "0.63",
    "strict" => "1.07"
  },
  "VERSION" => "0.0.1_01",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



