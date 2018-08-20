let Person = function(name) {
    this.name = name;
}

function create(name, members) {
    let p = new Person(name);
    p = Object.assign(p, members);
    return p;
}

let student = create ("Karim_s", {
    year: 2
});

let teacher = create ("Karim_t", {
    courses: ["C1", "C2"]
});

function info (person) {
    console.log(person.name);
    for(let member in person){
        if (typeof member != "function") {
            console.log(member, " = ", person[member]);
        }
    }
}

info(student);
info(teacher);
