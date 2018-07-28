def fact(i)
	case
	when i < 0
		raise "Negative numbers don't have a factorial!"
	when i > 5
		raise "The number is too big!"
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
rescue Exception => e
	puts e.message + "\n"
else
	puts "No exception\n"
ensure
	puts "That's all!\n"
end
