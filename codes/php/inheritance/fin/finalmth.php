<?php
class Person {
    public function method() {
        echo "Person method\n";
    }
    final public function finalMethod() {
        echo "Person finalMethod\n";
    }
}

class Student extends Person {
    public function method() {
        echo "Student method\n";
    }
    //final public function finalMethod() {}//error: final function
}

$pe = new Person();
$st = new Student();

$pe->method();
$st->method();

$pe->finalMethod();
$st->finalMethod();

?>
