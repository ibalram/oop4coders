package Student;
use Person;
our @ISA = qw(Person);

sub new {
	my ($class, @args) = @_;
	$self = $class->SUPER::new(@args);
	#$self->{t} = "student";#error the object is not a HASH
	#$self->("t", "student");#limited the direct access
	$self->t("student");
	bless $self, $class;
	return $self;
}

sub use_protected {
	my( $self, @args ) = @_;
	# $self->_info_private(@args); #_info_private is private!
	$self->_info_protected(@args);
}

1;
