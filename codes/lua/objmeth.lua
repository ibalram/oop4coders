local Person = {}
Person.__index = Person

function Person:new(name, byear)    -- The constructor
  return setmetatable({name = name, byear = byear}, Person)
end

function Person:__tostring()
  return "(" .. self.name .. ": " .. self.byear .. ")"
end

local p = Person:new("Karim", 1986)
print("As string: " .. tostring(p))
