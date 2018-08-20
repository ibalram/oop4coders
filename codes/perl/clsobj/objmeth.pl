#! /usr/bin/perl -w

{
    package Person;

    sub new {
        my $class = shift;
        my $self = {
            _name => shift,
            _byear => shift,
        };
        bless $self, $class;
        return $self;
    }

    use overload
    '""' => sub {
        my ($self) = @_;
        return "($self->{_name}: $self->{_byear})"
    },
    '==' => sub {
        my ($self, $other) = @_;
        return ($self->{_name} eq $other->{_name})
    }

}

$p = new Person("Karim", 1986);
$p2 = new Person("Karim+1", 1986);
$p3 = {
    _name => "Karim",
    _byear => 1987,
};

sub boolval {
    my $bool = shift;
    return $bool? "true": "false";
}
print "As string: $p\n";
print "As string: " . $p2 . "\n";
print "p == p2: " . boolval($p == $p2) . "\n";
print "p == p3: " . boolval($p == $p3) . "\n";
