#!/usr/bin/ruby -w

class Person
    def talk()
        puts "I am a person"
    end
end

class Student < Person
    def talk()
        puts "I am a student"
    end
end

pe = Person.new
st = Student.new
pe.talk # I am a person
st.talk # I am a student
