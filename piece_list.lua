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
    end

}
