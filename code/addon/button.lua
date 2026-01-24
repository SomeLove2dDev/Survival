------------------
-- Button Class --
------------------

Button = {}
Button.__index = Button

-- create button --
-- ox, oy is offset x, y, you also need to provide the onClick function --
function Button:new(x, y, width, height, text, ox, oy, color)
    self = setmetatable({}, Button)
    self.x = x
    self.y = y
    self.ox = ox
    self.oy = oy
    self.text = text
    self.width = width
    self.height = height
    self.color = color
    return self
end

-- check if clicked, i is the scale x, y btw -- 
function Button:Clicked(i)
    local mx, my = love.mouse.getPosition()
    local i = i or 1
    return mx > self.x * i and mx < (self.x + self.width) * i and my > self.y * i and my < (self.y + self.height) * i and love.mouse.isDown(1) 
end

-- draw the button --
function Button:draw()
    love.graphics.setColor(self.color)
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    love.graphics.setColor(0,0,0,1)
    -- adjust offset as you wish
    love.graphics.print(self.text, self.x + self.width / 2 - 18 + self.ox, self.y + self.height / 2 - 18 + self.oy)
    love.graphics.setColor(1,1,1,1)
end

-- get tbe button's position --
function Button:getPos()
    return self.x, self.y
end

return Button