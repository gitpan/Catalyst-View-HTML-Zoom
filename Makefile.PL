
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Catalyst::View::HTML::Zoom',
                       'DISTNAME' => 'Catalyst-View-HTML-Zoom',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Oliver Charles <oliver.g.charles@googlemail.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Catalyst view to HTML::Zoom',
                       'EXE_FILES' => [],
                       'VERSION' => '0.001',
                       'PREREQ_PM' => {
                                        'namespace::autoclean' => '0.09',
                                        'Method::Signatures::Simple' => '0.05',
                                        'MooseX::Types' => '0.21',
                                        'MooseX::Lexical::Types' => '0.01',
                                        'HTML::Zoom' => '0.9',
                                        'MooseX::Types::Common' => '0.001',
                                        'Catalyst::Runtime' => '5.8',
                                        'Moose' => '0.98'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



