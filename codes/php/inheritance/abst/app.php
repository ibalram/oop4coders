<?php

require_once "person.php";
require_once "student.php";
require_once "gradstudent.php";
require_once "professor.php";

//$pe = new Person();//is abstract; cannot be instantiated
//$st = new Student();//is abstract; cannot be instantiated
$pr = new Professor();
$gs = new GradStudent();

$pr->info();
$gs->info();

?>
