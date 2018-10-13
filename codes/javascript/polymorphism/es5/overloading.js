#!/usr/bin/env node

function Person () {}
Person.prototype.read = function(arg1){
    switch (typeof arg1) {
        case "undefined":
            console.log("I am reading");
            break;
        case "string":
            console.log("A text: ", arg1);
            break;
        default:
    }
}

function Student() {}
Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;
Student.prototype.read = function(arg1){
    if (typeof arg1 == "number"){
        console.log("I read on table n°: ", arg1);
    } else {
        Person.prototype.read.call(this, arg1);
    }
}
Student.prototype.count = function(){
    console.log("number of arguments: ", arguments.length);
}

console.log("PERSON");
var pe = new Person();
pe.read();
pe.read("I am a person");

console.log("STUDENT");
var st = new Student();
st.read();
st.read("I am a student");
st.read(5);
st.count(5, "text", 10);
