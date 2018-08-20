function Person(name, byear) {
    this.name = name;
    this.byear = byear;
}

Person.prototype.toString = function(){
    return "(" + this.name + ": " + this.byear + ")";
}

var p = new Person("Karim", 1986);

console.log("As string: " + p);
