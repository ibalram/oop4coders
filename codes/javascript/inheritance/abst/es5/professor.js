var Person = require("./person.js");

module.exports = Professor;

function Professor() {
    Person.call(this);
}

Professor.prototype = Object.create(Person.prototype);
Professor.prototype.constructor = Professor;

Professor.prototype.info2 = function(){
    console.log("Professor info2");
}
