var Person = require("./person.js");
var Student = require("./student.js");
var GradStudent = require("./gradstudent.js");
var Professor = require("./professor.js");

//var pe = new Person();//Error: abstract class
var st = new Student();
var pr = new Professor();
var gs = new GradStudent();

//st.info();//Error: abstract method info2
pr.info();
gs.info();
