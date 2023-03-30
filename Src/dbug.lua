dbug = {}

function dbug.draw()
--debug
    love.graphics.print(cutx, 0, 64)
    love.graphics.print(cuty, 0, 74)
    love.graphics.print(cutw, 0, 84)
    love.graphics.print(cuth, 0, 94)
    if touch then
       love.graphics.print("true", 0, 104)
    end
end

return dbug