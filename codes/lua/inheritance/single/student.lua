local Person = require "person"

local Student = {}
setmetatable(Student, Person) -- Student extends Person
Student.__index = Student

function Student.new(name, grade)    -- The constructor
    local instance = Person.new(name) --get the superclass's object
    instance.grade = grade
    setmetatable(instance, Student) -- object extends Student
    return instance
end

function Student:info()
    Person.info(self)
    print("My grade: " .. self.grade)
end

return Student
