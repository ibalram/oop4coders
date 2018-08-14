var Person = require("person.js");
var Student = require("student.js");

var p = new Person("Karim_p");
var s = new Student("Karim_s");

console.log(p.luckyNumber);
console.log(p._name);
console.log(p.num);//undefined
console.log(p.t);

p.info();
s.info();
