package Student;
use Person;
our @ISA = qw(Person);

sub new {
    my ($class, $name, $grade) = @_;
    $self = $class->SUPER::new($name);
    $self->{grade} = $grade;
    bless $self, $class;
    return $self;
}

sub info {
    my( $self ) = @_;
    $self->SUPER::info();
    print "My grade: $self->{grade}\n";
}

1;
