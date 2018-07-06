#! /usr/bin/perl -w

my $n = $ARGV[0];
die "Please enter an integer value" unless (defined $n);

eval {
	my $f = fact($n);
	print "Fact($n)= $f\n";
}
or do {
	print "The error: $@\n";
};

sub fact {
	my $i = shift;
	die("Negative numbers don't have a factorial!") if ($i < 0);
	die("The number is too big!") if ($i > 5);

	return 1 if ($i == 0);
	return $i * fact($i - 1);
}
