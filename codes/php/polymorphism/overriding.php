<?php

class Person {
    public function talk(){ echo "I am a person\n"; }
}

class Student extends Person {
    public function talk(){ echo "I am a student\n"; }
}

$pe = new Person();
$st = new Student();
$pe->talk(); // I am a person
$st->talk(); // I am a student

?>
