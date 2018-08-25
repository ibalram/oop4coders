package Professor;
use Person;
our @ISA = qw(Person);

sub new {
    my ($class, @args) = @_;
    $self = $class->SUPER::new(@args);
    bless $self, $class;
    return $self;
}

1;
