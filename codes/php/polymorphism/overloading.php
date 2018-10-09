<?php

class Person {
    public function read(){
        switch (func_num_args()) {
            case 0:
                echo "I am a reading\n";
                break;
            case 1:
                $arg1 = func_get_arg(0);
                if (gettype($arg1) == "string"){
                    echo "A text: $arg1\n";
                }
                break;
            default:
        }
    }
}

class Student extends Person {
    public function read(...$args){
        if (count($args) == 1 && gettype($args[0]) == "integer"){
            echo "I read on table n°: ". $args[0] . "\n";
        }
        else { parent::read(...$args); }
    }
}

echo "PERSON\n";
$pe = new Person();
$pe->read();
$pe->read("I am a person");

echo "STUDENT\n";
$st = new Student();
$st->read();
$st->read("I am a student");
$st->read(5);

?>
