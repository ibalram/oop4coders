module.exports = Person;

function Person() {
    if (this.constructor == Person) {
        throw new Error("Cannot instanciate abstract class");
    }
}

Person.prototype.info = function(){
    console.log("====INFO===");
    this.info2();
}

Person.prototype.info2 = function(){
    throw new Error("Cannot call abstract method");
}
