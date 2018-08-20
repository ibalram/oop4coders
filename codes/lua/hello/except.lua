function fact(i)
    if i < 0 then error ("Negative numbers don't have a factorial!") end
    if i > 5 then error "The number is too big!" end

    if i == 0 then return 1 end
    return i * fact(i-1)
end

if #arg < 1 then
    print ("Please enter an integer value")
    os.exit()
end

n = tonumber(arg[1])
success, f = pcall(fact, n)
if success then
    print ("Fact(" .. n .. ")= " .. f)
else
    print (f)
end
