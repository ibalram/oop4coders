<?php
class Person {

    public $luckyNumber = 0;
    var $luckyNumber2 = 0;//public by default
    protected $t;
    private $name;
    private $num;
    private static $nbr = 0;

    public function __construct( $name) {
        $this->name = $name;
        $this->num = (self::$nbr++);
        $this->t = "person";
    }

    public function info() {
        echo "My name: $this->name\n";
        echo "My number: $this->num\n";
        echo "I am a: $this->t\n";
        echo "My lucky number is: $this->luckyNumber\n";
        echo "My lucky number 2 is: $this->luckyNumber2\n";
        echo "--------------------------\n";
    }

    public function copy($other) {
        $this->name =$other->name;
        $this->t = $other->t;
    }

}

?>
