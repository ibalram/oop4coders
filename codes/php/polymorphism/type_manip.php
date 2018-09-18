<?php

class Person {
    public function talk(){ echo "I am talking\n"; }
}

class Student extends Person {
    public function learn(){ echo "I am learning\n"; }
}

interface Worker {}

class Professor extends Person implements Worker {
    public function teach(){ echo "I am teaching\n"; }
}

$pe = new Person();
$st = new Student();
$pr = new Professor();

echo "==========================\n";
echo "Object type\n";
echo "==========================\n";
echo "gettype(pe): " . gettype($pe) . ", get_class(pe): " . get_class($pe) . "\n";
echo "gettype(st): " . gettype($st) . ", get_class(st): " . get_class($st) . "\n";
echo "gettype(pr): " . gettype($pr) . ", get_class(pr): " . get_class($pr) . "\n";
echo "gettype(25): " . gettype(25) . "\n";

echo "==========================\n";
echo "Instance of\n";
echo "==========================\n";
echo "pe instanceof 'Person': " . ($pe instanceof Person);
echo ", is_a(pe, 'Person'): " . is_a($pe, 'Person') . "\n";
echo "st instanceof Person: " . ($st instanceof Person);
echo ", is_a(st, 'Person'): " . is_a($st, 'Person') . "\n";
echo "st instanceof Professor: " . ($st instanceof Professor);
echo ", is_a(st, 'Professor'): " . is_a($st, 'Professor') . "\n";
echo "pr instanceof Professor: " . ($pr instanceof Professor);
echo ", is_a(pr, 'Professor'): " . is_a($pr, 'Professor') . "\n";
echo "pr instanceof Worker: " . ($pr instanceof Worker);
echo ", is_a(pr, 'Worker'): " . is_a($pr, 'Worker') . "\n";

echo "==========================\n";
echo "Member existance\n";
echo "==========================\n";

function testMembers($msg, $obj) {
    echo "$msg: ";
    if (is_object($obj) && method_exists($obj, "learn")) {$obj->learn();}
    else { echo "Method learn does not exist!\n";}

    echo "$msg: ";
    if (is_object($obj) && property_exists($obj, "nbr")) {
        echo "Field nbr = $obj->{nbr}\n";
    }
    else { echo "Field nbr does not exist!\n";}
}

testMembers("Person", $pe);
testMembers("Student", $st);
testMembers("Professor", $pr);
testMembers("a number", 25);

?>
