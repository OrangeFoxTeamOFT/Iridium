utilities = {}

function utilities.load()
-- gradient
    greyscale = gradient {
        direction = 'horizontal';
        {0.5, 0.5, 0.5};
        {0, 0, 0};
    }
    
    -- vars
    textureId = 1
    editorOffsetX, editorOffsetY = 0, 0
end

function utilities.draw()
    if editorConf.theme == "Night" then
        love.graphics.setBackgroundColor(0, 0, 0)
    elseif editorConf.theme == "Day" then
        love.graphics.setBackgroundColor(0.75, 0.75, 0.75)
    elseif editorConf.theme == "Carmin" then
        love.graphics.setBackgroundColor(102 / 255, 19 / 255, 46 / 255)
    elseif editorConf.theme == "Currupition" then
        love.graphics.setBackgroundColor(0, 82 / 255, 185 / 255)
    elseif editorConf.theme == "Platinium" then
        drawinrect(greyscale, 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    end
    
    -- put and move blocks
    for i, block in ipairs(maps.blocks) do
        love.graphics.draw(tiles[block.textureId], block.x - editorOffsetX * map.gradeSize, block.y - editorOffsetY * map.gradeSize)
    end
end

function utilities.update()
    -- center the block
    centerx = math.floor(tx / map.gradeSize) * map.gradeSize
    centery = math.floor(ty / map.gradeSize) * map.gradeSize
end

function utilities.touchpressed()
    if tx > screen.x and ty > screen.y and mode == "edit" then
        createBlocks(textureId, centerx + editorOffsetX * map.gradeSize, centery + editorOffsetY * map.gradeSize)
    end
    if mode == "delete" then
        deleteBlock(centerx + editorOffsetX * map.gradeSize, centery + editorOffsetY * map.gradeSize)
    end
end

return utilities