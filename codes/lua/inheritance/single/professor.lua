local Person = require "person"

local Professor = {}
setmetatable(Professor, Person) -- Professor extends Person
Professor.__index = Professor

function Professor.new(instance)    -- The constructor
    instance = instance or {name = "professor"}
    setmetatable(instance, Professor)
    return instance
end

return Professor
