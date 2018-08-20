<?php
class Person {

    private $name;
    private $byear;

    public function __construct( $name, $byear ) {
        $this->name = $name;
        $this->byear = $byear;
    }

    public function __toString() {
        return "($this->name: $this->byear)";
    }

    public function __clone() {
        $this->byear ++;
    }

}

$p = new Person("Karim", 1986);

print "As string: $p\n";

$p3 = clone $p;
print "P3: $p3\n";

$b = ($p==$p3)? "true": "false";
print "p == p3? " . $b . "\n";

?>
