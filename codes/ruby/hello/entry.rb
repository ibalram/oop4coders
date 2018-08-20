#!/usr/local/bin/ruby -w

def fact(i)
	if i <= 1
		1
	else
		i * fact(i-1)
	end
end

if __FILE__ == $0
	if ARGV.length < 1
		print "Please enter an integer value\n"
		exit 0
	end

	n = ARGV[0].to_i
	puts "Fact(" + n.to_s + ")= " + fact(n).to_s
end
