package Person;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    print "I am a person\n";
    return $self;
}

1;

package Machine;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    print "I am a machine\n";
    return $self;
}

1;

package Android;
our @ISA = qw(Machine Person);

sub new {
    my $class = shift;
    my $self = $class->Person::new();
    my $self2 = $class->Machine::new();
    $self = { %$self, %$self2};
    bless $self, $class;
    print "So, I am an android\n";
    return $self;
}

1;

package Cyborg;
our @ISA = qw(Person Machine);

sub new {
    my $class = shift;
    my $self = $class->Machine::new();
    my $self2 = $class->Person::new();
    $self = { %$self, %$self2};
    bless $self, $class;
    print "So, I am a cyborg\n";
    return $self;
}

1;

$p = Person->new();
print "=====================\n";
$m = Machine->new();
print "=====================\n";
$a = Android->new();
print "=====================\n";
$c = Cyborg->new();
print "=====================\n";
