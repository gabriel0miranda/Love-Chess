local World = require ("world")
local Component = require ("component")
local System = require ("system")
local common_comp = require ("common-components")
local common_sys = require ("common-systems")


function love.load()
    World:register(common_sys.new_board_renderer())
    World:register(common_sys.new_functional_system())

    local board = World:assemble{
        {common_comp.new_board}
    }

--    board:add(common_comp.functional(function(self, dt)
--        local body = self:get("body")
--        body.x = body.x + dt * 10
--    end))
end

function love.update(dt)
    World:update(dt)
end

function love.draw()
    World:draw()
end
