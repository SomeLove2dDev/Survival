game_craft = {}
game_craft.__index = game_craft

local scale = require("code.addon.scale")
local Scale1 = scale:new(768, 432)
button = require("code.addon.button")
Buttons = {}
rgb = 1/255
bqt = 6
for i=1, bqt do
    table.insert(Buttons, button:new(400, 30 + (i-1) * 60, 300, 50, "item", 0, 0, {125 * rgb, 125 * rgb, 125 * rgb, 1}, nil))
end

Large = {
    image = button:new(50, 30, 300, 170, "item", 0, 0, {150 * rgb, 150 * rgb, 150 * rgb, 1}, nil),
    focus = 1
}

function game_craft:new()
    local obj = {}
    setmetatable(obj, game_craft)
    return obj
end

function game_craft:load()

end

function game_craft:update(dt)
    if love.keyboard.isDown("x") then
        return "game"
    end
    
    Scale1:update()

    return "craft"
end

function game_craft:draw()
    Scale1:draw1()

    for _, Button in ipairs(Buttons) do
        Button:draw()
    end
    Large.image:draw()

    Scale1:draw2()
end

return game_craft