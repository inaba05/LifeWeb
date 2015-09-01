package Life::Web::Controller::User;
use Mojo::Base 'Mojolicious::Controller';

sub seeion {
    my $self = shift;
    my $seesion = 'テスト';
    # $seesion = undef;

    if ( $seesion ) {
        $self->redirect_to('login', msg => 'login Hello World');
    } else {
        $self->redirect_to('index', msg => 'index Hello World');
    }
}

sub login {
    my $self = shift;

    $self->render('user/login', msg => 'login Hello World');
}

sub index {
    my $self = shift;

    $self->render('user/index', msg => 'index Hello World');
}

1;
