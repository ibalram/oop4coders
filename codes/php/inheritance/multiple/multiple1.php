<?php

interface iPerson { public function info(); }

interface iMachine { public function info(); }

trait tPerson {
    public function info() { echo "I am a person\n"; }
}

trait tMachine {
    public function info() { echo "I am a machine\n";}
}

trait tConstruct {
    public function __construct() {
        if (get_parent_class()) { parent::info(); }
        $this->info();
        $this->moreInfo();
    }
    public function moreInfo(){}
}

class Person implements iPerson { use tPerson, tConstruct;}

class Machine implements iMachine { use tMachine, tConstruct; }

class Android extends Machine implements iPerson {
    use tPerson, tConstruct;
    public function moreInfo(){ echo "So, I am an android\n";}
}

class Cyborg extends Person implements iMachine {
    use tMachine, tConstruct;
    public function moreInfo(){ echo "So, I am a cyborg\n";}
}


$p = new Person();
echo "=====================\n";
$m = new Machine();
echo "=====================\n";
$a = new Android();
echo "=====================\n";
$c = new Cyborg();
echo "=====================\n";



?>
