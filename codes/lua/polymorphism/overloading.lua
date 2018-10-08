-- Person class
local Person = {}
Person.__index = Person

function Person:new()    -- The constructor
    local instance = {}
    setmetatable(instance, self) --self, here, will refer to the calling class
    return instance
end

function Person:read(arg1)
    if not arg1 then
        print("I am reading")
    else
        if type(arg1) == "string" then
            print("A text: " .. arg1)
        end
    end
end

-- Student class
local Student = {}
Student.__index = Student
setmetatable(Student, Person) -- extends

function Student:read(arg1)
    if type(arg1) == "number" then
        print("I read on table n°: " .. arg1)
    else
        Person.read(self, arg1)
    end
end

print("PERSON");
local pe = Person:new()
pe:read()
pe:read("I am a person")

print("STUDENT");
local st = Student:new()
st:read()
st:read("I am a student")
st:read(5)
