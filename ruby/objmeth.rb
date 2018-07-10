#!/usr/bin/ruby -w

class Person

	attr_accessor :byear
	attr_reader :name

	def initialize(name, byear)
		@name, @byear = name, byear
	end

  def initialize_clone(source)
    c = super
		c.byear += 2
		c
  end

	def to_s
		"(#{@name}: #{@byear})"
  end

	def <=>(other)
    cmp = byear <=> other.byear
		if cmp == 0
			name <=> other.name
		else
			cmp
		end
  end

	def eql?(other)
		name == other.name
  end

  def hash
    name.hash
  end

end

p = Person.new("Karim", 1986)
p2 = Person.new("Karim+1", 1986)

puts "As string: #{p}"
puts "HashCode: #{p.hash}"

p3 = p.clone
puts "Copy: #{p3}"
puts "p.eql? p3? #{p.eql? p3}"
puts "p <=> p3? #{p <=> p3}"
puts "p <=> p2? #{p <=> p2}"
