#!/usr/bin/ruby -w
# https://stackoverflow.com/a/40247731

class Class
  def frozen_method(method)
    if class_variable_defined?(:@@__frozen_methods__)
      add= class_variable_get(:@@__frozen_methods__) | [method]
      class_variable_set(:@@__frozen_methods__,add)
    else
      class_variable_set(:@@__frozen_methods__,[method])
    end
    class << self
      def inherited(child)
        def method_added(method)
          if class_variable_get(:@@__frozen_methods__).include? method
            send(:remove_method, method)
            error="Cannot change method #{method} because it's not overridde"
            raise TypeError, error
          end
        end
      end
    end
  end
end

class Person

    def method
        puts "Person method"
    end

    def final_method
        puts "Person final_method"
    end

    frozen_method :final_method

end

class Student < Person

    def method
        puts "Student method"
    end

    #def final_method
    #    puts "Student final_method"
    #end
    #error

end

pe = Person.new()
st = Student.new()

pe.method
st.method

pe.final_method
st.final_method
