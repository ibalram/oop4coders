var Person = require("./person.js");

module.exports = Professor;

function Professor() {}

Professor.prototype = Object.create(Person.prototype);
Professor.prototype.constructor = Professor;

Professor.prototype.info2 = function(){
    console.log("Professor info2");
}
