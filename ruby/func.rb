if __FILE__ == $0
	require './func'
	print "Please enter an integer value: "
	n = gets.chomp.to_i
	r = fact(n)
	puts "Fact(" + n.to_s + ")= " + r.to_s
end

def fact(i)
	if i <= 1 
		1
	else
		i * fact(i-1)
	end
end