<?php

require_once "person.php";
require_once "student.php";

$p = new Person("Karim_p");
$s = new Student("Karim_s");

$p->info();
$s->info();

$p->luckyNumber = 5;
$p->luckyNumber2 = 6;
//$p->num = 6;//error: private
//$p->t = "admin"; //error: protected

$p->info();
$s->info();

$p->copy($s);
$p->info();

?>
