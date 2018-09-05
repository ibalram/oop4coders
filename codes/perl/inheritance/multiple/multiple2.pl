package Person;

sub new {
    my $class = shift;
    my $self = {
        name => shift,
        serial => 5
    };
    bless $self, $class;
    return $self;
}

sub info {
    my ($self) = @_;
    print "Person name: $self->{name}\n";
    print "Person serial: $self->{serial}\n";
}

1;

package Machine;

sub new {
    my $class = shift;
    my $self = {serial => shift};
    bless $self, $class;
    return $self;
}

sub info {
    my ($self) = @_;
    print "Machine serial: $self->{serial}\n";
}

1;

package Android;
our @ISA = qw(Machine Person);

sub new {
    my ($class, $name, $serial) = @_;
    my $self = $class->Person::new($name);
    my $self2 = $class->Machine::new($serial);
    $self = { %$self, %$self2};
    bless $self, $class;
    return $self;
}

1;

package Cyborg;
our @ISA = qw(Person Machine);

sub new {
    my ($class, $name, $serial) = @_;
    my $self = $class->Machine::new($serial);
    my $self2 = $class->Person::new($name);
    $self = { %$self, %$self2};
    bless $self, $class;
    return $self;
}

1;

$p = Person->new("person");
$p->info();
print "=====================\n";
$m = Machine->new(15);
$m->info();
print "=====================\n";
$a = Android->new("android", 17);
$a->info();
print "=====================\n";
$c = Cyborg->new("cyborg", 20);
$c->info();
print "=====================\n";
