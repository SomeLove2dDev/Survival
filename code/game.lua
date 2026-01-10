game = {}
game.__index = game

game_game = require("code.game_state.game_game")
play = game_game:new()

function game:new()
    local obj = {}
    setmetatable(obj, game)
    return obj
end

function game:load()
    play:load()
end

function game:update(dt)
    play:update(dt)
    Scale:update()
end

function game:draw()
    Scale:draw1()

    play:draw()

    Scale:draw2()
end

return game