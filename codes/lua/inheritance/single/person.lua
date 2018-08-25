local Person = {luckyNumber = 0}
Person.__index = Person

function Person.new(name)    -- The constructor
    local instance = {name = name}
    setmetatable(instance, Person)
    return instance
end

function Person:info()
    print("My name: " .. self.name);
    print("My lucky number: " .. self.luckyNumber)
end

return Person
