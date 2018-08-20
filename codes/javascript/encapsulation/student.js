var Person = require("./person.js");

module.exports = Student;

function Student(name) {
    Person.call(this, name);
    this._name = name + "2";//can be accessed
    //console.log("Student => num = ", num, ", this.num = ", this.num); //error
    luckyNumber = 1;
}

Student.prototype = Object.create(Person.prototype);
Student.constructor = Student;
