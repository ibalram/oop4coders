local Index = {
  local private =  {}
  local protected = {}
}

Index.__index = function(self, key)
  local member = Rectangle[key]
  if member ~= nil then
    return member
  end
  if key == "w" then
    return self.width + 2
  elseif key == "h" then
    return self.height + 1
  end
end

Index.__newindex = function(self, key, value)
  if string.sub(key,1,2) == "__" then

  elseif string.sub(key,1,1) == "_" then
  end
end

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
