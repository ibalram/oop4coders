var Student = require("./student.js");

module.exports = GradStudent;

function GradStudent() {}

GradStudent.prototype = Object.create(Student.prototype);
GradStudent.prototype.constructor = GradStudent;

GradStudent.prototype.info2 = function(){
    console.log("GradStudent info2");
}
