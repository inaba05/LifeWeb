use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
use Mojo::Server::PSGI;
use Plack::Builder;
use Life::Web;

my $psgi = Mojo::Server::PSGI->new(app => Life::Web->new);
my $app = $psgi->to_psgi_app;

builder {


  $app;
};
