require_relative "person"

class Student < Person

    def initialize(name, grade)
        super(name)
        @grade = grade
    end

    def info
        super
        puts "My grade: #@grade"
    end

end
