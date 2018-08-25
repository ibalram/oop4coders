local Person = require "person"

local Professor = {}
setmetatable(Professor, Person) -- Student extends Person
Professor.__index = Professor

function Professor.new()    -- The constructor
    local instance = Person.new()
    setmetatable(instance, Professor) -- object extends Student
    return instance
end

return Professor
