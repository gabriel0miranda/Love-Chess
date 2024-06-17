local World = require ("world")
local Component = require ("component")
local System = require ("system")
local common_comp = require "common-components"


function new_renderer_system()
    local renderer = System.new({"body", "rect"})
    function renderer:load(entity)
        print "Found one"
    end

    function renderer:draw(entity)
        local body = entity:get("body")
        love.graphics.rectangle("fill", body.x, body.y, 32,32)

    end

    return renderer
end

function new_functional_system()
    local system = System.new{"functional"}

    function system:load(entity)
    end

    function system:update(dt, entity)
        local fn = entity:get("functional").fn
        fn(entity, dt)
    end

    return system
end

function love.load()
    World:register(new_renderer_system())
    World:register(new_functional_system())

    World:create()
        :madd(common_comp.new_body(100,100))
        :madd(common_comp.new_rectangle_component())

    local test = World:assemble{
        {common_comp.new_body, 300, 100},
        {common_comp.new_rectangle_component}
    }

    test:add(common_comp.functional(function(self, dt)
        local body = self:get("body")
        body.x = body.x + dt * 10
    end))
end

function love.update(dt)
    World:update(dt)
end

function love.draw()
    World:draw()
end
