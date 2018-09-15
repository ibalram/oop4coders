#!/usr/bin/ruby -w

class Person
    def talk
        puts "I am a person"
    end
end

class Student < Person; end

class Professor < Person; end

class Robot
    def talk
        puts "I am a robot"
    end
end

def announce (msg, talker)
    print "#{msg}: "
    if talker.class.method_defined? :talk then
        talker.talk
    else
        puts "Sorry! I do not talk!"
    end
end

pe = Person.new
st = Student.new
pr = Professor.new
ro = Robot.new

announce("Person", pe)
announce("Student", st)
announce("Professor", pr)
announce("Robot", ro)
announce("a number", 25)

puts  "A table with different types"
elements = [pe, st, pr, ro, 25]
elements.each_with_index do |element, i|
    begin
        element.talk
    rescue Exception => e
        puts "The element n°#{i} does not talk()"
    end
end
