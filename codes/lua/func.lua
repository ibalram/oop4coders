function fact(i)
	if i <= 1 then
		return 1
	end
	return i * fact(i-1)
end

io.write("Please enter an integer value: ")
n = io.read("*n")
print ( "Fact(" .. n .. ")= " .. fact(n) )