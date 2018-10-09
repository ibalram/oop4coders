package Person;
sub new { return bless {}, shift; }
sub read {
    if (@_< 2 ) {
        print "I am reading\n";
        return;
    }
    my ($self, $arg1) = @_;
    print "I am reading: $arg1\n";
}
1;

package Student;
our @ISA = qw(Person);
sub read {
    if (@_ == 3) {
        my ($self, $arg1, $arg2) = @_;
        print "I am reading: $arg1 for $arg2 times\n";
    }
    else {
        $self = shift;
        $self->SUPER::read(@_);
    }
}
1;

print "PERSON\n";
$pe = Person->new();
$pe->read();
$pe->read("Book");
$pe->read("Book", 5);

print "STUDENT\n";
$st = Student->new();
$st->read();
$st->read("Book");
$st->read("Book", 5);
