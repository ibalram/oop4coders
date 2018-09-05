function Person(name) {
    this.name = name;
    console.log("Person called");
}

Person.prototype.info = function() {
    console.log("my name is: ", this.name);
}

function Student(name, mark) {
    Person.call(this, name);
    this.mark = mark;
    console.log("Student called");
}

Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;

function Professor(name, hours) {
    Person.call(this, name);
    this.hours = hours;
    console.log("Professor called");
}

Professor.prototype = Object.create(Person.prototype);
Professor.prototype.constructor = Professor;

function PhdStudent(name, hours, mark) {
    Professor.call(this, name, hours);
    Student.call(this, name + "_student", mark);
    console.log("PhdStudent called");
}

PhdStudent.prototype = Object.assign(
                        Object.create(Professor.prototype),
                        Object.create(Student.prototype)
                    );
PhdStudent.prototype.constructor = PhdStudent;
PhdStudent.prototype.info = function() {
    console.log("my name is: ", this.name);
}



var a = new Person("person");
a.info();
console.log("=====================");
var s = new Student("student", 15.5);
s.info();
console.log("=====================");
var p = new Professor("professor", 8);
p.info();
console.log("=====================");
var ps = new PhdStudent("phdStudent", 4, 12.25);
ps.info();
console.log("=====================");
