#!/usr/bin/env node

class Person {
    talk() { console.log("I am talking"); }
}

class Student extends Person {
    learn() { console.log("I am learning"); }
}

class Professor extends Person {
    constructor(){ super(); this.nbr = 5; }
    teach() { console.log("I am teaching"); }
}

function PhdStudent() {
    Object.assign(this, new Professor(), new Student());
}
PhdStudent.prototype = Object.assign(
                        Object.create(Professor.prototype),
                        Object.create(Student.prototype)
                    );
PhdStudent.prototype.constructor = PhdStudent;

function testMembers(msg, obj) {
    process.stdout.write(msg + ": ");
    if (typeof obj.learn == "function") obj.learn();
    else console.log("Method learn does not exist!");

    process.stdout.write(msg + ": ");
    if (obj.hasOwnProperty("nbr")) console.log("Field nbr = " + obj.nbr);
    else console.log("Field nbr does not exist!");
}

let pe = new Person(),
    st = new Student(),
    pr = new Professor(),
    phd = new PhdStudent();


console.log("==========================");
console.log("Object type");
console.log("==========================");
console.log("Typeof pe: " + (typeof pe) + ", class: " + (pe.constructor.name));
console.log("Typeof st: " + (typeof st) + ", class: " + (st.constructor.name));
console.log("Typeof pr: " + (typeof pr) + ", class: " + (pr.constructor.name));
console.log("Typeof phd: " + (typeof phd) + ", class: " + (phd.constructor.name));

console.log("==========================");
console.log("Instance of");
console.log("==========================");
console.log("pe instanceof Person: " + (pe instanceof Person)); //true
console.log("st instanceof Person: " + (st instanceof Person)); //true
console.log("st instanceof Student: " + (st instanceof Student)); //true
console.log("st instanceof Professor: " + (st instanceof Professor)); //false
console.log("pr instanceof Person: " + (pr instanceof Person)); //true
console.log("pr instanceof Student: " + (pr instanceof Student)); //false
console.log("pr instanceof Professor: " + (pr instanceof Professor)); //true
console.log("phd instanceof Person: " + (phd instanceof Person)); //true
console.log("phd instanceof PhdStudent: " + (phd instanceof PhdStudent)); //true
console.log("phd instanceof Student: " + (phd instanceof Student)); //false
console.log("phd instanceof Professor: " + (phd instanceof Professor)); //true

console.log("==========================");
console.log("Member existance");
console.log("==========================");
testMembers("Person", pe);
testMembers("Student", st);
testMembers("rofessor", pr);
testMembers("PhdStudent", phd);
testMembers("25", 25);
