package Person;
sub new { return bless {}, shift; }
sub talk { print "I am talking\n"; }
1;

package Student;
our @ISA = qw(Person);
sub learn { print "I am learning\n"; }
1;

package Professor;
our @ISA = qw(Person);
sub new { return bless {nbr => 5}, shift; }
sub teach { print "I am teaching\n"; }
1;

$pe = Person->new();
$st = Student->new();
$pr = Professor->new();

print "==========================\n";
print "Object type\n";
print "==========================\n";
print "ref(pe): " . ref($pe)  . "\n";
print "ref(st): " . ref($st)  . "\n";
print "ref(pr): " . ref($pr)  . "\n";
print "ref(25): " . ref(25)  . "\n";

print "==========================\n";
print "Instance of\n";
print "==========================\n";

use Scalar::Util qw(blessed);
sub instanceof {
    my ($obj, $cls) = @_;
    return (blessed($obj) and $obj->isa($cls));
}

print "instanceof(pe, Person) " . instanceof($pe, "Person") . "\n";
print "instanceof(st, Person) " . instanceof($st, "Person") . "\n";
print "instanceof(25, Person) " . instanceof(25, "Person") . "\n";
print "instanceof(st, Student) " . instanceof($st, "Student") . "\n";
print "instanceof(st, Professor) " . instanceof($st, "Professor") . "\n";

print "==========================\n";
print "Member existance\n";
print "==========================\n";

sub testMembers {
    my ($msg, $obj) = @_;
    print "$msg: ";
    if (blessed($obj) and $obj->can("learn")) {$obj->learn();}
    else { print "Method learn does not exist!\n";}

    print "$msg: ";
    if (blessed($obj) and exists($obj->{nbr})) {
        print "Field nbr = $obj->{nbr}\n";
    }
    else { print "Field nbr does not exist!\n";}
}

testMembers("Person", $pe);
testMembers("Student", $st);
testMembers("Professor", $pr);
testMembers("25", 25);
