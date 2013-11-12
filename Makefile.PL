
use strict;
use warnings;

use 5.012;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Plack Middleware to integrate with Mozilla Persona (Auth by email)",
  "AUTHOR" => "J. Bolila <bolila\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Plack-Middleware-Auth-BrowserID",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Plack::Middleware::Auth::BrowserID",
  "PREREQ_PM" => {
    "Carp" => 0,
    "JSON" => "2.90",
    "LWP::Protocol::https" => "6.04",
    "LWP::UserAgent" => "6.05",
    "Mozilla::CA" => 20130114,
    "Plack::Middleware" => 0,
    "Plack::Response" => "1.0029",
    "Plack::Session" => "0.21",
    "Plack::Util::Accessor" => 0,
    "parent" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "File::Spec::Functions" => 0,
    "HTTP::Request::Common" => "6.04",
    "List::Util" => 0,
    "Plack::Builder" => 0,
    "Plack::Test" => 0,
    "Test::More" => 0,
    "strict" => 0
  },
  "VERSION" => "0.0.1_03",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec::Functions" => 0,
  "HTTP::Request::Common" => "6.04",
  "JSON" => "2.90",
  "LWP::Protocol::https" => "6.04",
  "LWP::UserAgent" => "6.05",
  "List::Util" => 0,
  "Mozilla::CA" => 20130114,
  "Plack::Builder" => 0,
  "Plack::Middleware" => 0,
  "Plack::Response" => "1.0029",
  "Plack::Session" => "0.21",
  "Plack::Test" => 0,
  "Plack::Util::Accessor" => 0,
  "Test::More" => 0,
  "parent" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



