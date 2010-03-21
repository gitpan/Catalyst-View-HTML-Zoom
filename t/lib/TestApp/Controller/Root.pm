package TestApp::Controller::Root;
our $VERSION = '0.002';
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

__PACKAGE__->config( namespace => '' );

sub main :Path {
    my ($self, $c) = @_;
    $c->stash( name => 'Dave' );
}

sub end : ActionClass('RenderView') {}

__PACKAGE__->meta->make_immutable;
