#!/usr/bin/env node

class Person {
    talk() {
        console.log("I am a person");
    }
}

class Student extends Person {}

class Professor extends Person {}

class Robot {
    talk() {
        console.log("I am a robot");
    }
}

function announce(msg, talker) {
    process.stdout.write(msg + ": ");
    talker.talk();
}

let pe = new Person(),
    st = new Student(),
    pr = new Professor();

let ro = new Robot();
let cat = {
    talk: function(){
        console.log("Meow!");
    }
};

announce("Person", pe);
announce("Student", st);
announce("Professor", pr);
announce("Robot", ro);
announce("a cat", cat);
