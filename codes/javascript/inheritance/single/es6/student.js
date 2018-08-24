var Person = require("./person.js");

class Student extends Person {

    constructor(name, grade) {
        super(name);
        this._grade = grade;
    }

    info(){
        super.info();
        console.log("My grade: ", this._grade);
    }

}

module.exports = Student;
