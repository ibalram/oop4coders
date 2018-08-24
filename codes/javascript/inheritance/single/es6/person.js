class Person {
    constructor(name) {
        this.luckyNumber = 0;
        this._name = name;
    }

    info() {
        console.log("My name: ", this._name);
        console.log("My lucky number is: ", this.luckyNumber);
    }
}

module.exports = Person;
