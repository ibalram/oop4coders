require_relative "student"
require_relative "person"

class GradStudent < Student

    alias_method :parent_info, :info

    def initialize(name, grade)
        super(name, grade)

        puts "======================"
        parent_info # calling info of the parent class
        info # calling info of the current class
        Person.instance_method(:info).bind(self).call
    end

    def info
        puts "GradStudent info"
    end

end
