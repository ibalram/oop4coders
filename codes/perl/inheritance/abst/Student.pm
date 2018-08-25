package Student;
use Person;
our @ISA = qw(Person);

sub new {
    my ($class, @args) = @_;
    $self = $class->SUPER::new(@args);
    bless $self, $class;
    return $self;
}

sub info2 {
    print "Student info2\n";
}

1;
