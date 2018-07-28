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

	use overload  '""' => sub {
		my ($self) = @_;
		return "($self->{_name}: $self->{_byear})"
	}

}

$p = new Person("Karim", 1986);
print "As string: : $p\n";
