package Person;

sub new {
    my $class = shift;
    die "final class" unless $class eq __PACKAGE__;
    my $self = {}; #fields
    bless $self, $class;
    return $self;
}

1;

package Student;
our @ISA = qw(Person);

sub new {
    my ($class, @args) = @_;
    $self = $class->SUPER::new(@args);
    bless $self, $class;
    return $self;
}

1;

$pe = new Person();
$st = new Student();# final class

# didn't find this in any reference
# since I'm not a Perl expert,
# I don't know its limits
