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
    if (typeof talker.talk == "function") talker.talk();
    else console.log("Sorry! I do not talk!");
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
announce("a number", 25);

console.log("A table with different types");
let elements = [pe, st, pr, ro, cat, 25];
for (let i = 0; i < elements.length; i++){
    try {
        elements[i].talk();
    }
    catch(error){
        console.log("The element n° ", i, " does not talk()");
    }
}
