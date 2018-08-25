var Student = require("./student.js");

class GradStudent extends Student {
    info2() {
        console.log("GradStudent info2");
    }
}

module.exports = GradStudent;
