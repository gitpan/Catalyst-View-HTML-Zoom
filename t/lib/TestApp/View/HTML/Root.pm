package TestApp::View::HTML::Root;
our $VERSION = '0.002002';
use Moose;
use Method::Signatures::Simple;

method main ($stash) {
    $_->select("#name")->replace_content($stash->{name});
}

1;