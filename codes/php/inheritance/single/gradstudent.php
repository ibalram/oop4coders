<?php

require_once "student.php";

class GradStudent extends Student {

    private $grade;

    public function __construct($name, $grade) {
        parent::__construct($name, $grade);
        $this->grade = $grade + 2;
        //parent::parent::info(); //cannot do this
        parent::info();
        //echo parent::luckyNumber;
    }

}

?>
