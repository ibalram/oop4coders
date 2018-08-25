#! /usr/bin/perl -w
use Person;
use Student;
use Professor;

#$pe = new Person();# cannot be instantiated
$st = Student->new();
#$pr = Professor->new();#cannot be instantiated

$st->info();
