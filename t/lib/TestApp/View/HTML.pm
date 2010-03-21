package TestApp::View::HTML;
our $VERSION = '0.002';
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::HTML::Zoom';

__PACKAGE__->meta->make_immutable;
