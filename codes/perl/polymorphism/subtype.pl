package Person;
sub new { return bless {}, shift; }
sub talk { print "I am a person\n"; }
1;

package Student;
our @ISA = qw(Person);
1;

package Professor;
our @ISA = qw(Person);
1;

package Robot;
sub new { return bless {}, Robot; }
sub talk { print "I am a robot\n";}
1;

sub announce {
    my ($msg, $talker) = @_;
    print "${msg}: ";
    if ( $talker->can("talk")) {$talker->talk();}
    else {print "Sorry! I do not talk!\n";}
}

$pe = Person->new();
$st = Student->new();
$pr = Professor->new();
$ro = Robot->new();

announce("Person", $pe);
announce("Student", $st);
announce("Professor", $pr);
announce("Robot", $ro);
announce("a number", 25);

print "A table with different types\n";
my @elements = ($pe, $st, $pr, $ro, 25);
foreach my $i (0 .. scalar @elements - 1) {
    eval { $elements[$i]->talk(); };
    if ($@) { print "The element n°$i does not talk()\n"; }
}
