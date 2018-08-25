#!/usr/bin/ruby -w

require_relative "person"
require_relative "student"
require_relative "professor"
require_relative "gradstudent"

#pe = Person.new()#abstract class
st = Student.new()
pr = Professor.new()
gs = GradStudent.new()

#st.info #abstract method
pr.info
gs.info
