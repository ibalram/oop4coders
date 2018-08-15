#! /usr/bin/perl -w
use Person;
use Student;

$p = new Person("Karim_p");
$s = Student->new("Karim_s");

$p->info();
# $p->_info_private(); #_info_private is private!
# $p->_info_protected(); #_info_protected is protected!

$p->info();
$s->info();
$s->use_protected();
