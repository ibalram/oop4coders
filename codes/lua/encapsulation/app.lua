local Person = require "person"

local p = Person.new("Karim_p")
p:info()

p.luckyNumber = 6
-- print("name outside= " .. p.name) -- error: nil value
p.name = "other name"
p:info()
