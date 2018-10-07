#!/usr/bin/env node

class Person {
    read(arg1) {
        switch (typeof arg1) {
            case "undefined":
                console.log("I am a reading");
                break;
            case "string":
                console.log("A text: ", arg1);
                break;
            default:
        }
    }
}

class Student extends Person {
    read(arg1){
        if (typeof arg1 == "number"){
            console.log("I read on table n°: ", arg1);
        } else {
            super.read(arg1);
        }
    }
    count(){
        console.log("number of arguments: ", arguments.length);
    }
}

console.log("PERSON");
let pe = new Person();
pe.read();
pe.read("I am a person");

console.log("STUDENT");
let st = new Student();
st.read();
st.read("I am a student");
st.read(5);
st.count(5, "text", 10);
