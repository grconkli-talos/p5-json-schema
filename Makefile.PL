#!/usr/bin/env  perl
use strict;
use warnings;
use lib 'local/lib/perl5';
use 5.008;

use ExtUtils::MakeMaker;

my $BUILD = {
  'NAME' => 'JSON::Schema',
  'PREREQ_PM' => {
    'match::simple' => '0.0',
    'autovivification' => '0.0',
    'JSON::Path' => '0.0',
    'HTTP::Link::Parser' => '0.0',
    'JSON::Hyper' => '0.0'
  },
  'EXE_FILES' => undef,
  'VERSION' => '0.016',
  'META_ADD' => {
    'provides' => {
      'JSON::Schema' => {
        'version' => '0.016',
        'file' => 'lib/JSON/Schema.pm'
      }
    }
  },
  'META_MERGE' => {
    'meta-spec' => {
      'version' => 2
    },
    'resources' => {
      'bugtracker' => {
        'web' => undef
      },
      'homepage' => undef,
      'repository' => {
        'type' => undef,
        'web' => undef,
        'url' => 'git@github.com:grconkli-talos/p5-json-schema.git'
      }
    }
  },
  'AUTHOR' => 'Toby Inkster <tobyink@cpan.orgE>',
  'ABSTRACT_FROM' => 'lib/JSON/Schema.pm'
};


WriteMakefile(%$BUILD);

sub MY::postamble {
    return <<"MAKE_FRAG";
distname:
	\@echo \$(DISTNAME)

distvname:
	\@echo \$(DISTVNAME)

MAKE_FRAG
}

