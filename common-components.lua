local Component = require ("component")

return {
new_square = function()
    local square = Component.new("square")
    square.color = 1
    square.x = 70
    square.y = 70
    return square
end,

new_board = function()
    local board = Component.new("board")
    board.squares = {}
    local square_component = require("common-components")
    for i=1, 8 do
        board.squares[i] = {}
        for j=1,8 do
            board.squares[i][j] = square_component.new_square()
            if (i%2 == 1 and j%2 == 0) or (i%2 == 0 and j%2 == 1) then
                board.squares[i][j].color = 0
            elseif (i%2 == 0 and j%2 == 0) or (i%2 == 1 and j%2 == 1) then
                board.squares[i][j].color = 1
            end
        end
    end
    return board
end,

new_piece = function(type)
    local piece = Component.new("piece")
    piece.type = type
    piece.color = nil
    piece.row = nil
    piece.column = nil
    return piece
end,

functional = function(fn)
    local functional = Component.new("functional")
    functional.fn = fn
    return functional
end,
}
