<?php
class Person {

    private $name;
    private $byear;
    private static $nbr = 0;

    public function __construct( $name, $byear ) {
        $this->name = $name;
        $this->byear = $byear;
        self::$nbr++;
    }

    function __destruct() {
        self::$nbr--;
        print "$this->name is out\n";
    }

    public function info() {
        echo "My name: $this->name, My birth year: $this->byear \n";
    }

    public function population() {
        return self::$nbr;
    }

}

$p = new Person("Karim", 1986);
$p2 = new Person("Karim+1", 1987);

$p->info();
$p2->info();
$nbr = Person::population();

print "The number of persons: $nbr\n";
unset($p2);
$nbr = Person::population();
print "The number of persons: $nbr\n";

?>
