require_relative "person"

class Student < Person

    def initialize(name)
        super(name)
        @t = "student"
        @luckyNumber = 1
        @name = "#@name 2"
        @num = 5
    end

    def info_student
        puts "info student"
        info1
        info2
    end

end
