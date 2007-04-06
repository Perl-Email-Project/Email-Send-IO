use strict;
use ExtUtils::MakeMaker;

WriteMakefile (
  AUTHOR        => 'Casey West <casey@geeknest.com>',
  ABSTRACT      => "Send mail via IO::All",
  NAME          => 'Email::Send::IO',
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM     => {
    'Email::Send'           => '2.186', # IO.pm removed then
    'IO::All'               => '0.32',  # avoid some minor bugs
  },
  VERSION_FROM  => 'lib/Email/Send/IO.pm',
);
