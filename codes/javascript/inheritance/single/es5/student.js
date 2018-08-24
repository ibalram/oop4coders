var Person = require("./person.js");

module.exports = Student;

function Student(name, grade) {
    Person.call(this, name);
    this._grade = grade;
}

Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;

Student.prototype.info = function(){
    Person.prototype.info.call(this)
    console.log("My grade: ", this._grade);
}
