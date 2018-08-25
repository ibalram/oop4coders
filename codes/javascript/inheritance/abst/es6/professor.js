var Person = require("./person.js");

class Professor extends Person {
    info2() {
        console.log("Professor info2");
    }
}

module.exports = Professor;
