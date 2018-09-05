<?php

interface iPerson {
    public function info();
}
interface iStudent extends iPerson {}
interface iProfessor extends iPerson {}

class Person implements iPerson {
    protected $name;
    public function __construct($name) {
        $this->name = $name;
    }
    public function info() { echo "my name: $this->name\n"; }
}

trait tStudent {
    protected $mark;
    public function __construct($name, $mark) {
        parent::__construct($name);
        $this->mark = $mark;
    }
    public function info() { echo "my mark: $this->mark\n"; }
}

trait tProfessor {
    protected $hours;
    public function __construct($name, $hours) {
        parent::__construct($name);
        $this->hours = $hours;
    }
    public function info() { echo "my work hours: $this->hours\n"; }
}

class Student extends Person implements iStudent {
    use tStudent {tStudent::info as private sinfo;}
    public function info() {
        parent::info();
        $this->sinfo();
    }
}

class Professor extends Person implements iProfessor {
    use tProfessor {tProfessor::info as private pinfo;}
    public function info() {
        parent::info();
        $this->pinfo();
    }
}

class PhdStudent extends Person implements iStudent, iProfessor {
    use tStudent {
        tStudent::__construct as private __sconstruct;
        tStudent::info as private sinfo;
    }
    use tProfessor {
        tProfessor::__construct as private __pconstruct;
        tProfessor::info as private pinfo;
    }
    public function __construct($name, $hours, $mark) {
        $this->__pconstruct($name, $hours);
        $this->__sconstruct("$name modified", $mark);
    }
    public function info() {
        parent::info();
        $this->sinfo();
        $this->pinfo();
    }
}


$a = new Person("person1");
$a->info();
echo "=====================\n";
$s = new Student("student1", 15.5);
$s->info();
echo "=====================\n";
$p = new Professor("professor1", 8);
$p->info();
echo "=====================\n";
$ps = new PhdStudent("phdStudent1", 4, 12.5);
$ps->info();
echo "=====================\n";

?>
