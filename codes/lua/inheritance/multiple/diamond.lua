-- helper functions
-- A function to merge objects from parents
function get_object(parents)
    local object = {}
    for i=#parents, 1, -1 do
        local object2 = parents[i]
        for k,v in pairs(object2) do -- Merge the two objects
            object[k] = v
        end
    end
    return object
end

-- A function to return an index function based on parents
function get_index(parents)
    return function(self, key)
        for i=1, #parents do
            member = parents[i][key]
            if member ~= nil then
                rawset(self, key, member) -- next time it will be its own key
                return member
            end
        end
    end
end

-- Person class
local Person = {}
Person.__index = Person

function Person.new(name)    -- The constructor
    local instance = {name = name}
    setmetatable(instance, Person)
    print("Person")
    return instance
end

function Person:info()
    print("my name is: " .. self.name)
end

-- Student class
local Student = {}
Student.__index = get_index({Student, Person})

function Student.new(name, mark)    -- The constructor
    local instance = get_object({Person.new(name), {mark = mark}})
    setmetatable(instance, Student)
    print("Student");
    return instance
end

function Student:info()
    Person.info(self)
    print("my mark is: " .. self.mark)
end

-- Professor class
local Professor = {}
Professor.__index = get_index({Professor,Person})

function Professor.new(name, hours)    -- The constructor
    local instance = get_object({Person.new(name), {hours=hours}})
    setmetatable(instance, Professor)
    print("Professor");
    return instance
end

-- PhdStudent class
local PhdStudent = {}
PhdStudent.__index = get_index({PhdStudent,Student, Professor})

function PhdStudent.new(name, hours, mark)    -- The constructor
    local instance = get_object({Student.new(name, mark), Professor.new(name, hours)})
    setmetatable(instance, PhdStudent)
    print("PhdStudent");
    return instance
end

-- Main

local a = Person.new("person1")
a:info()
print("=====================")
local s = Student.new("student1", 15.5)
s:info()
print("=====================")
local p = Professor.new("professor1", 8)
p:info()
print("=====================")
local ps = PhdStudent.new("phdStudent1", 4, 12.5)
ps:info()
print("=====================")
