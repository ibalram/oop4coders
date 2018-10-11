#!/usr/bin/env node

function Person() {}
Person.prototype.talk = function(){ console.log("I am a person"); }

function Student() {}
Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;
Student.prototype.talk = function(){ console.log("I am a student"); }

var pe = new Person(),
    st = new Student();
pe.talk(); // I am a person
st.talk(); // I am a student
