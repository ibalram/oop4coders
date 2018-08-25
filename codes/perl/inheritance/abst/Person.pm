package Person;

sub new {
    die "cannot be instantiated" unless caller->isa(__PACKAGE__);
    my $class = shift;
    my $self = {}; #fields
    bless $self, $class;
    return $self;
}

sub info {
    my( $self ) = @_;
    print "====INFO====\n";
    $self->info2();
}

sub info2 {
    die "abstract method"
}

1;
