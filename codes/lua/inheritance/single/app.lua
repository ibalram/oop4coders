local Person = require "person"
local Student = require "student"
local Professor = require "professor"

local pe = Person.new("person1");
local st = Student.new("student1", 15);
local pr = Professor.new();
local pr2 = Professor.new{name="professor2", luckyNumber = 13};

pe.luckyNumber = 10;
st.luckyNumber = 20;

pe:info();
st:info();
pr:info();
pr2:info();
