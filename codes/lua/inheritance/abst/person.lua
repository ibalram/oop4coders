local Person = {}
Person.__index = Person

function Person.new()    -- The constructor
    local instance = {}
    setmetatable(instance, Person)
    return instance
end

function Person:info()
    print("====INFO====");
    self:info2()
end

function Person:info2()
    error("Cannot call abstract method")
end

return Person
