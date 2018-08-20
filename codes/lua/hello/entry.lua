fact = function (i)
    if i <= 0 then return 1 end
    return i * fact(i-1)
end

if #arg < 1 then
    print ("Please enter an integer value")
    os.exit()
end

n = tonumber(arg[1])
print ("Fact(" .. n .. ")= " .. fact(n))
