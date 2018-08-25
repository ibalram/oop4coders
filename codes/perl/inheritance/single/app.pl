#! /usr/bin/perl -w
use Person;
use Student;
use Professor;

$pe = new Person("person1");
$st = Student->new("student1", 15);
$pr = Professor->new("professor1");

$pe->info();
$st->info();
$pr->info();
