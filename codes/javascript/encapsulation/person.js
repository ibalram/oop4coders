module.exports = Person;

function Person(name) {
    this.luckyNumber = 0;
    this._name = name;
    var num = Person.nbr;
    Person.nbr++;

    this.info1 = function(){
        console.log("My number is: ", num);
    }
}

Person.nbr = 0;

Person.prototype.info = function(){
    console.log("My name: ", this._name);
    this.info1();
    console.log("My lucky number is: ", luckyNumber);
    console.log("--------------------------");
}
