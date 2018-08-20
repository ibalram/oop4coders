#! /usr/bin/perl -w

my $n = $ARGV[0];
die "Please enter an integer value" unless (defined $n);

print "Fact($n)= ${\fact($n)}\n";
print "Fact(" . $n . ")= ". fact($n) . "\n";

sub fact {
    my $i = shift;
    return 1 if ($i <= 0);
    return $i * fact($i - 1);
}
