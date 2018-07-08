#!/usr/bin/ruby -w

class Person

	@@nbr = 0

	def initialize(name, byear)
		@name, @byear = name, byear
		@@nbr += 1
	end

	def info
		puts "My name: #@name, My birth year: #@byear"
	end

	def self.population
		@@nbr
	end
end

p = Person.new("Karim", 1986)
p2 = Person.new("Karim+1", 1987)

p.info()
p2.info()
nbr = Person.population

puts "The number of persons: #{nbr}"
p2 = nil
nbr = Person.population
puts "The number of persons: #{nbr}"
