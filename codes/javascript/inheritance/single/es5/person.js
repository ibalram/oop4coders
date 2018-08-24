module.exports = Person;

function Person(name) {
    this.luckyNumber = 0;
    this._name = name;
}

Person.prototype.info = function(){
    console.log("My name: ", this._name);
    console.log("My lucky number is: ", this.luckyNumber);
}
