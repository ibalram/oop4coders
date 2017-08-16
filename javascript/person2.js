function Person(name, age) {
  this.name = name;
  this.age = age;
}

Person.prototype.info = function(){
	console.log("My name: " + this.name);
	console.log("My age: " + this.age);
}

var p = new Person("Karim", 31);
p.info();
