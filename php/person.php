<?php
class Person {
	var $name;
	var $byear;
	function __construct( $name, $byear ) {
		$this->name = $name;
		$this->byear = $byear;
	}

	function info() {
		echo "My name: $this->name \n";
		echo "My birth year: $this->byear \n";
	}
}

$p = new Person("Karim", 1986);
$p->info();

?>
