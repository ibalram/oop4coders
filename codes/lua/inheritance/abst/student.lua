local Person = require "person"

local Student = {}
setmetatable(Student, Person) -- Student extends Person
Student.__index = Student

function Student.new()    -- The constructor
    local instance = Person.new()
    setmetatable(instance, Student) -- object extends Student
    return instance
end

function Student:info2()
    print("Student info2")
end

return Student
