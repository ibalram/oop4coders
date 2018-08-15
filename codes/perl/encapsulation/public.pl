package Person;

sub new {
	my $class = shift;
	my $self = {
		name => shift,
	};
	bless $self, $class;
	return $self;
}

sub info {
	my( $self ) = @_;
	print "My name: ", $self->{name},"\n";
	print "----------------------------\n";
}

1;

$p = new Person("Karim_p");
$p->info();
$p->{name} = "other name";
$p->info();
