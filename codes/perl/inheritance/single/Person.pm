package Person;

sub new {
    my $class = shift;
    my $self = {
        name => shift,
        luckyNumber => 0
    };
    bless $self, $class;
    return $self;
}

sub info {
    my( $self ) = @_;
    print "My name: $self->{name}\n";
    print "My luckyNumber: $self->{luckyNumber}\n";
}

1;
