local System = require ("system")

return {
new_board_renderer = function ()
    local renderer = System.new({"board"})
    function renderer:load(entity)
        print "Found board"
    end

    function renderer:draw(entity)
        local board = entity:get("board")
        for i=1,8 do
            for j=1,8 do
                love.graphics.setColor(board.squares[i][j].color,board.squares[i][j].color,board.squares[i][j].color)
                love.graphics.rectangle("fill", 71*i,71*j, board.squares[i][j].x, board.squares[i][j].y)
            end
        end

    end

    return renderer
end,

new_functional_system = function ()
    local system = System.new{"functional"}

    function system:load(entity)
    end

    function system:update(dt, entity)
        local fn = entity:get("functional").fn
        fn(entity, dt)
    end

    return system
end,
}
