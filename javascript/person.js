class Person {
	constructor(name, age) {
    this.name = name;
    this.age = age;
  }

	info(){
		console.log("My name: " + this.name);
		console.log("My age: " + this.age);
	}
}

var p = new Person("Karim", 31);
p.info();
