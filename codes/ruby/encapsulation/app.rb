#!/usr/bin/ruby -w

require_relative "person"
require_relative "student"

p = Person.new("Karim_p")
s = Student.new("Karim_s")

p.luckyNumber = 5
#p.num = 6 #can't access the attribute
#puts "p.name = #{p.name}" #private

puts "======= initial info ========="
p.info
s.info

# p.info1 #private
# p.info2 #protected

p.copy(s)
puts "====== info() after copy() ======"
p.info
puts "======= p.other_info(s) ========="
p.other_info(s)
puts "======= s.info_student ========="
s.info_student
