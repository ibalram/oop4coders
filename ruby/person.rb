#!/usr/bin/ruby -w

class Person

	def initialize(name, byear)
		@name, @byear = name, byear
	end

	def info()
		puts "My name: #@name"
		puts "My birth year: #@byear"
	end
end

p = Person.new("Karim", 1986)

p.info()
