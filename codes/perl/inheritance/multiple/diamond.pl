package Person;

sub new {
    my $class = shift;
    my $self = {name => shift};
    bless $self, $class;
    print "$class\n";
    return $self;
}

sub info {
    my ($self) = @_;
    print "Person name: $self->{name}\n";
}

1;

package Student;
our @ISA = qw(Person);

sub new {
    my $class = shift;
    my $person = $class->Person::new(shift);
    my $self = {
        %$person,
        mark => shift
    };
    bless $self, $class;
    return $self;
}

sub info {
    my ($self) = @_;
    Person::info($self);
    print "Student mark: $self->{mark}\n";
}

1;

package Professor;
our @ISA = qw(Person);

sub new {
    my $class = shift;
    my $person = $class->Person::new(shift);
    my $self = {
        %$person,
        hours => shift
    };
    bless $self, $class;
    return $self;
}

1;

package PhdStudent;
our @ISA = qw(Student Professor);

sub new {
    my ($class, $name, $hours, $mark) = @_;
    my $student = $class->Student::new($name, $mark);
    my $professor = $class->Professor::new($name, $hours);
    my $self = {%$student, %$professor};
    bless $self, $class;
    return $self;
}

sub info {
    my ($self) = @_;
    $self->Student::info();
    $self->Professor::info();
}

1;

$a = Person->new("person1");
$a->info();
print "=====================\n";
$s = Student->new("student1", 15.5);
$s->info();
print "=====================\n";
$p = Professor->new("professor1", 8);
$p->info();
print "=====================\n";
$ps = PhdStudent->new("phdStudent1", 4, 12.5);
$ps->info();
print "=====================\n";
