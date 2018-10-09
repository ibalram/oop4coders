-- Person class
local Person = {}
Person.__index = Person

function Person:new()    -- The constructor
    local instance = {}
    setmetatable(instance, self) --self, here, will refer to the calling class
    return instance
end

function Person:read(...)
    local arg1 = select(1, ...)
    if not arg1 then -- select("#", ...) for parameters number
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

function Student:read(...)
    local args = {...}
    if type(args[1]) == "number" then
        print("I read on table n°: " .. args[1])
    else
        Person.read(self, ...)
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
