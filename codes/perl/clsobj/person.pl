#! /usr/bin/perl -w

{
    package Person;

    my $nbr = 0;

    sub new {
        my $class = shift;
        my $self = {
            _name => shift,
            _byear => shift,
        };
        $nbr++;
        bless $self, $class;
        return $self;
    }

    sub DESTROY {
        my ($self) = @_;
        $nbr--;
        print "$self->{_name} is out\n";
    }

    sub info {
        my( $self ) = @_;
        print "My name: $self->{_name}, My birth year: $self->{_byear}\n";
    }

    sub population {
        return $nbr;
    }

}

$p = new Person("Karim", 1986);
$p2 = Person->new("Karim+1", 1987);

$p->info();
$p2->info();
$nbr = Person::population();

print "The number of persons: $nbr\n";
undef($p2);
$nbr = Person::population();
print "The number of persons: $nbr\n";
