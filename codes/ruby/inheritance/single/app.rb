#!/usr/bin/ruby -w

require_relative "person"
require_relative "student"
require_relative "professor"
require_relative "gradstudent"

pe = Person.new("person1")
st = Student.new("student1", 15)
pr = Professor.new("professor1")

pe.info
st.info
pr.info
pr.info1

gs = GradStudent.new("gradstudent1", 14)
