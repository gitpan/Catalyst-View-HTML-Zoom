package TestApp::View::HTML::Foo;
our $VERSION = '0.002';
use Moose;
use namespace::autoclean;

sub bar {
    my ($self, $stash) = @_;
    $_->select('#name')->replace_content($stash->{name});
}

__PACKAGE__->meta->make_immutable;
