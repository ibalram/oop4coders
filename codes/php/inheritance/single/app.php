<?php

require_once "person.php";
require_once "student.php";
require_once "gradstudent.php";
require_once "professor.php";

$pe = new Person("person1");
$st = new Student("student1", 15);
$pr = new Professor("Professor1");

$pe->luckyNumber = 10;
$st->luckyNumber = 20;
$pr->luckyNumber = 30;

$pe->info();
$st->info();
$pr->info();
$pr->info2();

$gs = new GradStudent("gradstudent1", 14);

?>
