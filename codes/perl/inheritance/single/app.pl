#! /usr/bin/perl -w
use Person;
use Student;
use Professor;

$pe = new Person("person1");
$st = Student->new("student1", 15);
$pr = Professor->new("professor1");

$pe->{luckyNumber} = 10;
$st->{luckyNumber} = 20;
$pr->{luckyNumber} = 30;

$pe->info();
$st->info();
$pr->info();
