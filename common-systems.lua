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
                love.graphics.rectangle("fill", (board.squares[i][j].x)*(i-1),(board.squares[i][j].y)*(j-1), board.squares[i][j].x, board.squares[i][j].y)
            end
        end

    end

    return renderer
end,

new_piece_renderer = function ()
    local renderer = System.new({"piece"})
    function renderer:load(entity)
        print "Found piece"
    end
    function renderer:draw(entity)
        local piece = entity:get("piece")
        love.graphics.draw(piece.type.img, piece.pos.x, piece.pos.y)
    end
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
