#! /usr/bin/perl -w
print "Please enter an integer value: ";
chomp($n = <>);
$f = fact($n);
print "Fact($n)= $f\n";

sub fact {
    my $i = shift;
    if ($i <= 1){
        return 1;
    }
    return $i * fact($i - 1);
}
