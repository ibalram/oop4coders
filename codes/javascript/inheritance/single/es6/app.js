var Person = require("./person.js");
var Student = require("./student.js");
var Professor = require("./professor.js");

var pe = new Person("person1");
var st = new Student("student1", 15);
var pr = new Professor();

pe.luckyNumber = 10;
st.luckyNumber = 20;
pr.luckyNumber = 30;

pe.info();
st.info();
pr.info();
