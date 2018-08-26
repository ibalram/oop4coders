class Person {
    constructor() {
        if (this.constructor !== Person) {
            throw new Error("Cannot extend final class");
        }
    }
}

class Student extends Person {}

var pe = new Person();
//var st = new Student();//Error: final class
