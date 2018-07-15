local Person = {}
Person.__index = Person

setmetatable(Person, {
  __call = function (cls, name, byear)
    Person.nbr = Person.nbr + 1
    return setmetatable({name = name, byear = byear}, Person)
  end,
})

Person.nbr = 0

function Person:info()
  print("My name: " .. self.name .. ", My birth year: " .. self.byear)
end

function Person.population()
  return Person.nbr
end

local p = Person("Karim", 1986)
local p2 = Person("Karim+1", 1987)

p:info()
p2:info()
local nbr = Person.population()

print("The number of persons: " .. nbr)
p2 = nil
nbr = Person.population()
print("The number of persons: " .. nbr)
