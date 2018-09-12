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

-- Professor class
local Professor = {}
Professor.__index = Professor
setmetatable(Professor, Person) -- extends

function announce(msg, talker)
    io.write(msg .. ": ")
    if type(talker) == "table" and type(talker.talk) == "function" then
        talker:talk()
    else
        print("Sorry! I do not talk!")
    end
end

local pe = Person:new()
local st = Student:new()
local pr = Professor:new()

local cat = {
    talk = function(); print("Meow!"); end
}

announce("Person", pe)
announce("Student", st)
announce("Professor", pr)
announce("a cat", cat)
announce("a number", 25)

print("A table with different types")
local elements = {pe, st, pr, cat, 25}
for i =1, #elements do
    success, res = pcall(function() elements[i].talk(); end)
    if not success then
        print("The element n°" .. i .. " does not talk()")
    end
end
