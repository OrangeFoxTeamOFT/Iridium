information = {}

function information.draw()
-- grade
    for x = 0, 2048, 32 do
        for y = 0, 2048, 32 do
            love.graphics.setColor(0.5, 0.5, 0.5, 0.25)
            love.graphics.rectangle('line', x, y, 32, 32)
            love.graphics.setColor(1, 1, 1)
        end
    end
   
-- draw your touch
    love.graphics.setColor(0,1,0)
    love.graphics.rectangle("line", centerX, centerY, 32, 32)
    love.graphics.setColor(1,1,1)

-- show to you the block in yor hand
    if #blocksTexture > 0 then
        love.graphics.draw(blocksTexture[blockTexture], 1, 49)
    end
    love.graphics.rectangle('line', 0, 48, 33, 33, 5)

-- printa o modo na tua tela
    love.graphics.print("                 Delete mode", 34, 48)
    --[[
    if editBlock then
       love.graphics.print("ON", 54, 60)
    else
       love.graphics.print("OFF", 54, 60)
    end
    ]]
    if deleteBlock then
       love.graphics.print("ON", 128, 60)
    else
       love.graphics.print("OFF", 128, 60)
    end
    
-- cut
    love.graphics.rectangle('line', cutx, cuty, cutw, cuth)
end

return information