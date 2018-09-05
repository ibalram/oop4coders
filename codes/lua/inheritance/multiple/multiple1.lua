-- Person class
local Person = {}
Person.__index = Person

function Person.new()    -- The constructor
    local instance = {}
    setmetatable(instance, Person)
    print("I am a person");
    return instance
end

function Person:talk()
    print("I can talk")
end

-- Machine class
local Machine = {}
Machine.__index = Machine

function Machine.new()    -- The constructor
    local instance = {}
    setmetatable(instance, Machine)
    print("I am a machine");
    return instance
end

function Machine:analyse()
    print("I can analyse")
end

-- ...
-- Index function
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

-- Android class
local Android = {}
Android.__index = get_index({Android, Machine, Person})

function Android.new()    -- The constructor
    local instance2 = Machine.new() -- first parent
    local instance = Person.new() -- second parent
    for k,v in pairs(instance2) do -- Merge the two objects
        instance[k] = v
    end
    setmetatable(instance, Android)
    print("I am an android");
    return instance
end

-- Cyborg class
local Cyborg = {}
Cyborg.__index = get_index({Cyborg, Person, Machine})

function Cyborg.new()    -- The constructor
    local instance2 = Person.new() -- first parent
    local instance = Machine.new() -- second parent
    for k,v in pairs(instance2) do -- Merge the two objects
        instance[k] = v
    end
    setmetatable(instance, Cyborg)
    print("I am a cyborg");
    return instance
end

-- Main

local p = Person.new()
p:talk()
print("=====================")
local m = Machine.new()
m:analyse()
print("=====================")
local a = Android.new()
a:talk()
a:analyse()
print("=====================")
local c = Cyborg.new()
c:talk()
c:analyse()
print("=====================")
