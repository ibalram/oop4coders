local Person = require "person"
local Student = require "student"
local Professor = require "professor"

local pe = Person.new();
local st = Student.new();
local pr = Professor.new();

-- pe:info(); -- cannot call abstract method
st:info();
-- pr:info(); -- cannot call abstract method
