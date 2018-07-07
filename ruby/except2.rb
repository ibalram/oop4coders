module Errors
	class NegException < StandardError
		def initialize()
			super("Negative numbers don't have a factorial!")
		end
	end
	class BigException < StandardError
		def initialize()
			super("The number is too big!")
		end
	end
end

def fact(i)
	case
	when i < 0
		raise Errors::NegException.new()
	when i > 5
		raise Errors::BigException.new()
	when i == 0
		1
	else
		i * fact(i-1)
	end
end

if ARGV.length < 1
	print "Please enter an integer value\n"
	exit 0
end

n = ARGV[0].to_i

begin
	f = fact(n)
	puts "Fact(" + n.to_s + ")= " + f.to_s
rescue Errors::NegException => e
	puts e.message + "\n"
rescue Errors::BigException => e
	puts e.message + "\n"
else
	puts "No exception\n"
ensure
	puts "That's all!\n"
end
