#!/usr/bin/env node

class Person {
    talk(){ console.log("I am a person"); }
}

class Student extends Person {
    talk(){ console.log("I am a student"); }
}

let pe = new Person(),
    st = new Student();
pe.talk(); // I am a person
st.talk(); // I am a student
