loadScreen = {}

function loadScreen:enter()
-- images
    logo = {}
    logo.image = love.graphics.newImage('Rsrc/IridiumLogo.png')
    logo.alph = 0

-- cmds
    loadTimer = timer.new()
    loadTimer:after(5, function() gamestate.switch(states.mapManager) end)
end

function loadScreen:draw()
    -- logo
    love.graphics.setColor( 1, 1, 1, logo.alph)
    love.graphics.draw(logo.image, halfScreenW, halfScreenH, nil, nil, nil, logo.image:getWidth() / 2, logo.image:getHeight() / 2)
    love.graphics.print("Devlopers: AyanoTheFoxy and StrawberryChocolate, Artist: AyanoTheFoxy, Translate: AyanoTheFoxy and Tooru S", 48, love.graphics.getHeight() - 64, nil, 0.5)
    love.graphics.setColor( 1, 1, 1)
end

function loadScreen:update(dt)
    loadTimer:update(dt)
    -- resize
    logo.alph = logo.alph + 0.005
end

return loadScreen