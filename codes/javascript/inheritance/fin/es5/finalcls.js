function Person() {
    if (this.constructor !== Person) {
        throw new Error("Cannot extend final class");
    }
}

function Student() {
    Person.call(this);
}

Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;

var pe = new Person();
//var st = new Student();//Error: final class
