-- helper functions
-- A function to merge objects from parents
function get_object(parents)
    local object = {}
    for i=#parents, 1, -1 do
        local object2 = parents[i]
        for k,v in pairs(object2) do -- Merge the two objects
            object[k] = v
        end
    end
    return object
end

-- A function to return an index function based on parents
function get_index(parents)
    return function(self, key)
        for i=1, #parents do
            local member = parents[i][key]
            if member ~= nil then
                rawset(self, key, member) -- next time it will be its own key
                return member
            end
        end
    end
end

-- Person class
local Person = {}
Person.__index = Person

function Person.new(name)    -- The constructor
    local instance = {
        name = name,
        serial = 5
    }
    setmetatable(instance, Person)
    return instance
end

function Person:say_name()
    print("my name is: " .. self.name)
end

function Person:say_serial()
    print("my serial is: " .. self.serial)
end

-- Machine class
local Machine = {}
Machine.__index = Machine

function Machine.new(serial)    -- The constructor
    local instance = {serial = serial}
    setmetatable(instance, Machine)
    return instance
end

function Machine:say_serial()
    print("my serial is: " .. self.serial)
end

-- Android class
local Android = {}
Android.__index = get_index({Android, Machine, Person})

function Android.new(name, serial)    -- The constructor
    local instance = get_object({Machine.new(serial), Person.new(name)})
    setmetatable(instance, Android)
    return instance
end

-- Cyborg class
local Cyborg = {}
Cyborg.__index = get_index({Cyborg, Person, Machine})

function Cyborg.new(name, serial)    -- The constructor
    local instance = get_object({Person.new(name), Machine.new(serial)})
    setmetatable(instance, Cyborg)
    print("I am a cyborg");
    return instance
end

-- Main

local p = Person.new("person")
p:say_name()
p:say_serial()
print("=====================")
local m = Machine.new(15)
m:say_serial()
print("=====================")
local a = Android.new("android", 16)
a:say_name()
a:say_serial()
print("=====================")
local c = Cyborg.new("cyborg", 17)
c:say_name()
c:say_serial()
print("=====================")
