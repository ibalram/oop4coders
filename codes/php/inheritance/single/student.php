<?php

require_once "person.php";

class Student extends Person {

    private $grade;

    public function __construct($name, $grade) {
        parent::__construct($name);
        $this->grade = $grade;
    }

    public function info(){
        parent::info();
        echo "My grade is: $this->grade\n";
    }

}

?>
