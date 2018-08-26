var Person = require("./person.js");

module.exports = Student;

function Student() {
    Person.call(this);
}

Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;
