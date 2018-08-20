class Person {
    constructor(name, byear) {
        this.name = name;
        this["byear"] = byear;
        Person.nbr++;
    }

    info(){
        console.log("My name: " + this.name + ", My birth year: " + this.byear);
    }

    static population() {
        return Person.nbr;
    }
}

Person.nbr = 0;

var p = new Person("Karim", 1986);
var p2 = new Person("Karim+1", 1987);

p.info();
p2.info();
var nbr = Person.population();

console.log("The number of persons: " + nbr);
p2 = null;
nbr = Person.population();
console.log("The number of persons: " + nbr);
