#!/usr/bin/ruby -w

class Person 

	def initialize(name, age)
		@name, @age = name, age
	end
	
	def info()
		puts "My name: #@name"
		puts "My age: #@age"
	end
end

p = Person.new("Karim", 31)

p.info()
