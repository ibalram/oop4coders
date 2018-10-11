-- Person class
local Person = {}
Person.__index = Person

function Person:new()    -- The constructor
    local instance = {}
    setmetatable(instance, self) --self, here, will refer to the calling class
    return instance
end

function Person:talk()
    print("I am a person")
end

-- Student class
local Student = {}
Student.__index = Student
setmetatable(Student, Person) -- extends

function Student:talk()
    print("I am a student")
end

local pe = Person:new()
local st = Student:new()
pe:talk() -- I am a person
st:talk() -- I am a student
