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

	sub info {
		my( $self ) = @_;
		print "My name: $self->{_name}\n";
		print "My birth year: $self->{_byear}\n";
	}
}

$p = new Person("Karim", 1986);

$p->info();
