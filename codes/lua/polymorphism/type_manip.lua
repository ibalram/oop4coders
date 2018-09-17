-- Person class
local Person = {__NAME = "Person"}
Person.__index = Person

function Person:new()    -- The constructor
    local instance = {}
    setmetatable(instance, self) --self, here, will refer to the calling class
    return instance
end

function Person:talk()
    print("I am talking")
end

-- Student class
local Student = {__NAME = "Student"}
Student.__index = Student
setmetatable(Student, Person) -- extends

function Student:learn()
    print("I am learning")
end

-- Professor class
local Professor = {__NAME = "Professor"}
Professor.__index = Professor
setmetatable(Professor, Person) -- extends

function Professor:teach()
    print("I am teaching")
end

local pe = Person:new()
local st = Student:new()
local pr = Professor:new()

local cat = {
    __NAME = "Person",
    nbr = 13,
    learn = function(); print("I am a cat; I cannot learn"); end
}

print("==========================")
print("Object type")
print("==========================")

function typeOf(obj)
    if type(obj) ~= "table" then return type(obj) end
    if type(obj.__NAME) ~= "string" then return "table" end
    return obj.__NAME
end

print("type(pe): " .. type(pe) .. ", typeOf(pe): " .. typeOf(pe))
print("type(st: " .. type(st) .. ", typeOf(st): " .. typeOf(st))
print("type(pr): " .. type(pr) .. ", typeOf(pr): " .. typeOf(pr))
print("type(cat):" .. type(cat) .. ", typeOf(cat): " .. typeOf(cat))
print("type(25):" .. type(25) .. ", typeOf(25): " .. typeOf(25))

print("==========================")
print("Instance of")
print("==========================")

function instanceof(obj, cls)
    local mt = getmetatable(obj)
    if type(mt) ~= "table" or type(cls) ~= "table" then return false end
    if type(mt.__NAME) ~= "string" or type(cls.__NAME) ~= "string" then
        return false
    end
    if mt.__NAME == cls.__NAME then return true end
    return instanceof(mt, cls)
end

print("instanceof(pe, Person) " .. tostring(instanceof(pe, Person)))
print("instanceof(st, Student) " .. tostring(instanceof(st, Student)))
print("instanceof(st, Person) " .. tostring(instanceof(st, Person)))
print("instanceof(st, Professor) " .. tostring(instanceof(st, cat)))

print("==========================")
print("Member existance")
print("==========================")

function testMembers(msg, obj)
    io.write(msg .. ": ")
    if type(obj) == "table" and type(obj.talk) == "function" then
        obj:talk()
    else
        print("Method learn does not exist!")
    end

    io.write(msg .. ": ")
    if type(obj) == "table" and obj.nbr ~= nil then
        print("Field nbr = " .. tostring(obj.nbr))
    else
        print("Field nbr does not exist!")
    end
end

testMembers("Person", pe)
testMembers("Student", st)
testMembers("Professor", pr)
testMembers("cat", cat)
testMembers("25", 25)
