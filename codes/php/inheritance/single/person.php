<?php
class Person {

    public $luckyNumber = 0;
    private $name;

    public function __construct( $name) {
        $this->name = $name;
    }

    public function info() {
        echo "My name: $this->name\n";
        echo "My lucky number is: $this->luckyNumber\n";
    }

    private function info2() {
        echo "Person.info2\n";
    }

}

?>
