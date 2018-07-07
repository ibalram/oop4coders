function Person(name, byear) {
  this.name = name;
  this.byear = byear;
}

Person.prototype.info = function(){
	console.log("My name: " + this.name);
	console.log("My birth year: " + this.byear);
}

var p = new Person("Karim", 1986);
p.info();
