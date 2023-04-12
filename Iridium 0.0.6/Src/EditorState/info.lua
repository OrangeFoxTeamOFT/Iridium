info = {}

function info.draw()
    -- grade
    for x = 0, love.graphics.getWidth(), map.gradeSize do
        for y = 0, love.graphics.getHeight(), map.gradeSize do
            -- crate the grade with base on gradeSize
            love.graphics.setColor(map.gradeColor.r / 255, map.gradeColor.g / 255, map.gradeColor.b / 255, map.gradeColor.a % 255 / 255)
            love.graphics.rectangle('line', x, y, map.gradeSize, map.gradeSize)
            love.graphics.setColor( 1, 1, 1)
        end
    end
    
    -- touch
    if editorConf.touchOn == "On" then
        love.graphics.setColor( 0, 1, 0)
            love.graphics.rectangle('line', centerx, centery, map.gradeSize, map.gradeSize)
        love.graphics.setColor( 1, 1, 1)
    end

    -- show the block in your hand
    love.graphics.draw(tiles[textureId], 162, 96)
    -- theme
    if editorConf.theme == "Night" then
       love.graphics.setColor(0.25, 0.25, 0.25)
    elseif editorConf.theme == "Carmin" then
        love.graphics.setColor(102 / 255, 255 / 255, 227 / 255)
    elseif editorConf.theme == "Currupition" then
       love.graphics.setColor(255 / 255 , 200 / 255, 0)
    end
    love.graphics.rectangle('line', 162, 96, map.gradeSize + 1, map.gradeSize + 1)

    -- text infos
    if editorConf.infoOn == "On" then
        love.graphics.print(lang.mapManagerTranslate.map .. map.id, 0, 48)
        love.graphics.print(lang.mapManagerTranslate.gradeSize .. map.gradeSize, 0, 63)
        love.graphics.print("X: " .. editorOffsetX, 0, 93)
        love.graphics.print("Y: " .. editorOffsetY, 0, 108)
    end
    love.graphics.print(lang.editorStateTranslate.mode .. mode, 0, 78)
    love.graphics.setColor( 1, 1, 1)
end

return info