class Person {
	constructor(name, byear) {
    this.name = name;
    this.age = byear;
  }

	info(){
		console.log("My name: " + this.name);
		console.log("My birth year: " + this.byear);
	}
}

var p = new Person("Karim", 1986);
p.info();
