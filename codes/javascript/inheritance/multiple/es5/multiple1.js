function Person() {
    console.log("I am a person");
}

Person.prototype.info = function() {
    console.log("Person");
}

function Machine() {
    console.log("I am a machine");
}

Machine.prototype.info = function() {
    console.log("Machine");
}

function Android() {
    Person.call(this);
    Machine.call(this);
}

Android.prototype = Object.assign(
                        Object.create(Person.prototype),
                        Object.create(Machine.prototype)
                    );
Android.prototype.constructor = Android;

function Cyborg() {
    Machine.call(this);
    Person.call(this);
}

Cyborg.prototype = Object.assign(
                        Object.create(Machine.prototype),
                        Object.create(Person.prototype)
                    );
Cyborg.prototype.constructor = Cyborg;


var p = new Person();
p.info();
console.log("=====================");
var m = new Machine();
m.info();
console.log("=====================");
var a = new Android();
a.info();
console.log("=====================");
var c = new Cyborg();
c.info();
console.log("=====================");
