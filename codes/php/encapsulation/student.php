<?php

require_once "person.php";

class Student extends Person {

    public function __construct($name) {
        parent::__construct($name);
        $this->t = "student";
        $this->luckyNumber = 1;
        $this->luckyNumber2 = 2;
        //$this->name = "other name";//cannot be accessed: private
    }

}

?>
