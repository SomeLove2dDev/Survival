game_craft = {}
game_craft.__index = game_craft

state2 = "craft"

function game_craft:new()
    local obj = {}
    setmetatable(obj, game_craft)
    return obj
end

function game_craft:load()
    
end

function game_craft:update(dt)
    state2 = "craft"
    return state2
end

function game_craft:draw()

end

return game_craft