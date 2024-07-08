local Component = require('common-components')

-- piece types:
-- pawn: 1
-- knight: 2
-- bishop: 3
-- rook: 4
-- queen: 5
-- king: 6

return {
    new_pawn = function()
        local pawn = Component.new_piece(1)
    end,

    new_knight = function()
        local pawn = Component.new_piece(2)
    end,

    new_bishop = function()
        local pawn = Component.new_piece(3)
    end,

    new_rook = function()
        local pawn = Component.new_piece(4)
    end,

    new_queen = function()
        local pawn = Component.new_piece(5)
    end,

    new_king = function()
        local pawn = Component.new_piece(6)
    end,
}
