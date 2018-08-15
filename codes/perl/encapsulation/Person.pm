package Person;

sub new {
	my $class = shift;
	my $self = {
		name => shift,
		t => "person"
	};

	my $closure = sub {
		die "cannot access fields outside the class" unless caller eq __PACKAGE__;
		my ($field, $value) = @_;
		die "no field called: $field" unless exists $self->{$field};
		if ($value) {#setter
			$self->{$field} = $value;
		}
		return $self->{$field};#getter
	};

	bless $closure, $class;
	return $closure;
}

sub t {
	die "t is protected!" unless caller->isa(__PACKAGE__);
	my($self, $value )= @_;
	return $self->("t", $value);
}

sub _info_private {
	die "_info_private is private!" unless caller eq __PACKAGE__;
	my( $self ) = @_;
	print "My name: ",$self->("name"),"\n";
}

sub _info_protected {
	die "_info_protected is protected!" unless caller->isa(__PACKAGE__);
	my( $self ) = @_;
	print "I am a: ",$self->("t"),"\n";
}

sub info {
	my( $self ) = @_;
	_info_private(@_);
	_info_protected(@_);
	print "----------------------------\n";
}

1;
