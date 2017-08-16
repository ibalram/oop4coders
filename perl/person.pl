#! /usr/bin/perl -w 

{
	package Person;

	sub new {
		my $class = shift;
		my $self = {
			_name => shift,
			_age => shift,
		};
		bless $self, $class;
		return $self;
	}
	
	sub info {
		my( $self ) = @_;
		print "My name: $self->{_name}\n";
		print "My age: $self->{_age}\n";
	}
}

$p = new Person("Karim", 31);

$p->info();
