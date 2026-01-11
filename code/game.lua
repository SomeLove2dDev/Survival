game = {}
game.__index = game

game_game = require("code.game_state.game_game")
game_craft = require("code.game_state.game_craft")
play = game_game:new()
craft = game_craft:new()
state = "game"

function game:new()
    local obj = {}
    setmetatable(obj, game)
    return obj
end

function game:load()
    play:load()
    craft:load()
end

function game:update(dt)
    if state == "game" then 
        state = play:update(dt)
        Scale:update()
    elseif state == "craft" then
        state = craft:update(dt)
        Scale:update()
    end
end

function game:draw()
    if state == "game" then 
        Scale:draw1()
        play:draw()
        Scale:draw2()
    elseif state == "craft" then
        Scale:draw1()
        craft:draw()
        Scale:draw2()
    end
end

return game