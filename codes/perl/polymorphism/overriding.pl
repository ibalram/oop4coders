package Person;
sub new { return bless {}, shift; }
sub talk { print "I am a person\n"; }
1;

package Student;
our @ISA = qw(Person);
sub talk { print "I am a student\n"; }
1;

$pe = Person->new();
$st = Student->new();
$pe->talk(); # I am a person
$st->talk(); # I am a student
