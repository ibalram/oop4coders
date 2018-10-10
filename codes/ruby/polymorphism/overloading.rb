#!/usr/bin/ruby -w

class Person
    def read(text=nil)
        if text == nil then
            puts "I am reading"
        else
            if text.is_a?(String) then
                puts "A text: #{text}"
            end
        end
    end
end

class Student < Person
    def read(*args)
        case args.length
        when 0
            super
        when 1
            super(args[0])
        when 2
            puts "I am reading: " + args[0].to_s + " for " + args[1].to_s + " times"
        end
    end
end

puts "PERSON"
pe = Person.new
pe.read
pe.read("I am a person")

puts "STUDENT"
st = Student.new
st.read
st.read("I am a person")
st.read("a book", 5)
