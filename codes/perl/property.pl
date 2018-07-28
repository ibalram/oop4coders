#! /usr/bin/perl -w

package Rectangle;

sub new {
	my $class = shift;
	my $self = {
		_width => 0,
		_height => 0,
	};
	bless $self, $class;
	return $self;
}

sub w {
	my $self = shift;
	if (my $value = shift) { # setter
		if ($value < $self->{_width}) {
			$self->{_height} = $value;
		} else {
			$self->{_height} = $self->{_width};
			$self->{_width} = $value;
		}
		return $self;
	} else { # getter
		return $self->{_width} + 2;
	}
}

sub h {
	my $self = shift;
	return $self->{_height} + 1;
}

sub info {
	my( $self ) = @_;
	print "Width: $self->{_width}, Height: $self->{_height}\n";
}

1;

$r = new Rectangle();
$r->w(50);
$r->w(20);
$r->info();
print "w: " . $r->w . ", h: " . $r->h . "\n";
