#!/usr/bin/ruby -w

class Person
    def talk; puts "I am talking" end
end

class Student < Person
    def learn; puts "I am learning" end
end

class Professor < Person
    attr_reader :nbr
    def initialize; @nbr = 5 end
    def teach; puts "I am teaching" end
end

module LearnerMixin
    def learn; puts "I am a learner" end
end

class Robot
    include LearnerMixin
end

pe = Person.new
st = Student.new
pr = Professor.new
ro = Robot.new

puts "=========================="
puts "Object type"
puts "=========================="
puts "pe.class: " + pe.class.to_s
puts "st.class: " + st.class.to_s
puts "pr.class: " + pr.class.to_s
puts "ro.class: " + ro.class.to_s
puts "25.class: " + 25.class.to_s

puts "=========================="
puts "Instance of"
puts "=========================="
puts "pe.is_a?(Person): " + pe.is_a?(Person).to_s
puts "st.is_a?(Person): " + st.is_a?(Person).to_s
puts "st.kind_of?(Person): " + st.kind_of?(Person).to_s
puts "st.instance_of?(Person): " + st.instance_of?(Person).to_s
puts "25.is_a?(Person): " + 25.is_a?(Person).to_s
puts "st.is_a?(Student): " + st.is_a?(Student).to_s
puts "st.instance_of?(Student): " + st.instance_of?(Student).to_s
puts "st.is_a?(Professor): " + st.is_a?(Professor).to_s
puts "ro.is_a?(Robot): " + ro.is_a?(Robot).to_s
puts "ro.is_a?(Student): " + ro.is_a?(Student).to_s
puts "ro.is_a?(LearnerMixin): " + ro.is_a?(LearnerMixin).to_s
puts "ro.instance_of?(LearnerMixin): " + ro.instance_of?(LearnerMixin).to_s
puts "ro.kind_of?(LearnerMixin): " + ro.kind_of?(LearnerMixin).to_s

puts "=========================="
puts "Member existance"
puts "=========================="

def testMembers (msg, obj)
    print "#{msg}: "
    if obj.class.method_defined? :learn then obj.learn
    else puts "Method learn does not exist!" end

    print "#{msg}: "
    if obj.class.method_defined? :nbr then puts "Field nbr = #{obj.nbr}"
    else puts "Field nbr does not exist!" end
end

testMembers("Person", pe)
testMembers("Student", st)
testMembers("Professor", pr)
testMembers("Robot", ro)
testMembers("a number", 25)
