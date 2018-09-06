local Person = {luckyNumber = 0}
Person.__index = Person

function Person:new(name)    -- The constructor
    local instance = {name = name}
    setmetatable(instance, self)
    return instance
end

function Person:info()
    print("My name: " .. self.name);
end

local Student = {}
setmetatable(Student, Person) -- Student extends Person
Student.__index = Student

local pe = Person:new("person1");
local st = Student:new("student1");
                       
pe:info();
st:info();

print(getmetatable(pe))
print(getmetatable(st))


