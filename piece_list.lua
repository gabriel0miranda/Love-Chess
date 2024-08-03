local Component = require('common-components')

-- piece types:
-- pawn: 1
-- knight: 2
-- bishop: 3
-- rook: 4
-- queen: 5
-- king: 6
piece_types = {
    pawn.id = 1
    pawn.img = "assets/p"
    knight.id = 2
    knight.img = "assets/n"
    bishop.id = 3
    bishop.img = "assets/b"
    rook.id = 4
    rook.img = "assets/r"
    queen.id = 5
    queen.img = "assets/q"
    king.id = 6
    king.img = "assets/k"
}

return {
    new_pawn = function()
        local pawn = Component.new_piece(piece_types.pawn)
    end,

    new_knight = function()
        local pawn = Component.new_piece(piece_types.knight)
    end,

    new_bishop = function()
        local pawn = Component.new_piece(piece_types.bishop)
    end,

    new_rook = function()
        local pawn = Component.new_piece(piece_types.rook)
    end,

    new_queen = function()
        local pawn = Component.new_piece(piece_types.queen)
    end,

    new_king = function()
        local pawn = Component.new_piece(piece_types.king)
    end,
}
