local Person = {}
Person.__index = Person

function Person:new(name, byear)    -- The constructor
  return setmetatable({name = name, byear = byear}, Person)
end

function Person:info()
  print("My name: " .. self.name)
  print("My birth year: " .. self.byear)
end

local p = Person:new("Karim", 1986)

p:info()
