<?php

interface iPerson {
    public function info();
}

interface iMachine {
    public function info();
}

trait tPerson {
    public function info() {
        echo "My name: $this->name\n";
    }
}

trait tMachine {
    public function info() {
        echo "My serial number: $this->serial\n";
    }
}

class Person implements iPerson {
    use tPerson;
    private $name;
    public function __construct($name) {
        $this->name = $name;
    }
}

class Machine implements iMachine {
    use tMachine;
    private $serial;
    public function __construct($serial) {
        $this->serial = $serial;
    }
}

class Android extends Machine implements iPerson {
    use tPerson { info as private pinfo;}
    private $name;

    public function __construct($name, $serial) {
        parent::__construct($serial);
        $this->name = $name;
    }

    public function info() {
        parent::info();
        $this->pinfo();
    }

}

class Cyborg extends Person implements iMachine {
    use tMachine { info as private minfo;}
    private $serial;

    public function __construct($name, $serial) {
        parent::__construct($name);
        $this->serial = $serial;
    }

    public function info() {
        parent::info();
        $this->minfo();
    }

}

$p = new Person("person1");
$p->info();
echo "=====================\n";
$m = new Machine(15);
$m->info();
echo "=====================\n";
$a = new Android("android1", 16);
$a->info();
echo "=====================\n";
$c = new Cyborg("cyborg1", 17);
$c->info();
echo "=====================\n";

?>
