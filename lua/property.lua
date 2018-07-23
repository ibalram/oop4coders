local Rectangle = {}
Rectangle.__index = function(self, key)
  local member = Rectangle[key]
  if member ~= nil then
    return member
  end
  if key == "w" then
    return self.width + 2
  elseif key == "h" then
    return self.height + 1
  end
end

Rectangle.__newindex = function(self, key, value)
  if key == "w" then
    if value < self.width then
      self.height = value
    else
      self.height = self.width
      self.width = value
    end
  end
end


function Rectangle.new()    -- The constructor
  return setmetatable({width = 0, height = 0}, Rectangle)
end

function Rectangle:info()
  print("Width: " .. self.width .. ", Height: " .. self.height)
end


local r = Rectangle.new()
r.w = 50
r.w = 20
r:info()
print("w: " .. r.w .. ", h: " .. r.h)
