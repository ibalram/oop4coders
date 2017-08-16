<?php
class Person {
	var $name;
	var $age;
	function __construct( $name, $age ) {
		$this->name = $name;
		$this->age = $age;
	}
	
	function info() {
		echo "My name: $this->name \n";
		echo "My age: $this->age \n";
	}
}

$p = new Person("Karim", 31);
$p->info();

?>
