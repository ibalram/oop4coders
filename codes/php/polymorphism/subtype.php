<?php

class Person {
    public function talk(){
        echo "I am a person\n";
    }
}

class Student extends Person {}

class Professor extends Person {}

class Robot {
    public function talk(){
        echo "I am a robot\n";
    }
}

function announce($msg, $talker){
    echo "$msg: ";
    if (method_exists($talker, "talk")) $talker->talk();
    else echo "Sorry! I do not talk!\n";
}

$pe = new Person();
$st = new Student();
$pr = new Professor();
$ro = new Robot();

announce("Person", $pe);
announce("Student", $st);
announce("Professor", $pr);
announce("Robot", $ro);
announce("a number", 25);

echo "A table with different types\n";
$elements = array($pe, $st, $pr, $ro, 25);
foreach($elements as $key=>$value) {
    try {
        $value->talk();
    }
    catch (Error $e) {
        echo "The element n°$key does not talk()\n";
    }
}

?>
