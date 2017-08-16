local Person = {}
Person.__index = Person

function Person:new(name, age)    -- The constructor
  return setmetatable({name = name, age = age}, Person)
end

function Person:info()
  print("My name: " .. self.name)
  print("My age: " .. self.age)
end

local p = Person:new("Karim", 31)

p:info()
