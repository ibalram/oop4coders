#!/usr/bin/env node

function Person() {}
Person.prototype.talk = function() {
    console.log("I am a person");
}

function Student() {}
Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;

function Professor() {}
Professor.prototype = Object.create(Person.prototype);
Professor.prototype.constructor = Professor;

function Robot() {
    this.talk = function() {
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
let people = [pe, st, pr, ro, cat, 25];
for (let i = 0; i < people.length; i++){
    try {
        people[i].talk();
    }
    catch(error){
        console.log("The element n° ", i, " does not talk()");
    }
}
