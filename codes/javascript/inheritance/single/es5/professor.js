var Person = require("./person.js");

module.exports = Professor;

function Professor() {
    //Person.call(this, "Professor");
}

Professor.prototype = Object.create(Person.prototype);
Professor.prototype.constructor = Professor;
