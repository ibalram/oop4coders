local Person = {}
Person.__index = Person

function Person.new(name)    -- The constructor
  local self = {}
  local _name = name;
  self.luckyNumber = 1;
  self.info1 = function()
    print("My name: " .. _name)
  end
  return setmetatable(self, Person)
end

function Person:info()
  self.info1()
  print("My lucky number: " .. self.luckyNumber)
end

return Person
