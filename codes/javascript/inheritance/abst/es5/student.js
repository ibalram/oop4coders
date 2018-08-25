var Person = require("./person.js");

module.exports = Student;

function Student() {}

Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;
