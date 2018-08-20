local Person = {}
Person.__index = Person

function Person:new(name, byear)    -- The constructor
    return setmetatable({name = name, byear = byear}, Person)
end

function Person:__tostring()
    return "(" .. self.name .. ": " .. self.byear .. ")"
end

function Person.__eq (p1, p2)
    return p1.name == p2.name
end

function Person.__lt (p1, p2)
    return (p1.byear < p2.byear) or (p1.byear == p2.byear and p1.name < p2.name)
end

function Person.__le (p1, p2)
    return (p1.byear < p2.byear) or (p1.byear == p2.byear and p1.name <= p2.name)
end

local p = Person:new("Karim", 1986)
local p2 = Person:new("Karim+1", 1986)
local p3 = {name = "Karim", byear = 1987}

print("As string: " .. tostring(p))
print("p == p3? " .. tostring(p==p3))
print("p ~= p3? " .. tostring(p~=p3))
print("p <= p2? " .. tostring(p <= p2))
print("p > p2? " .. tostring(p > p2))
print("p > p3? " .. tostring(p > p3))
