utilities = {}

function utilities.draw()
-- put blocks and move cam
    for i, block in ipairs(blocks) do
        love.graphics.draw(blocksTexture[block.id], block.x - editorOffSetX * 32, block.y - editorOffSetY * 32, block.rotate)
        love.graphics.setColor(1, 1, 1)
    end
end

function utilities.update()
-- take touches on screen and create a table with alls x and y
    local touch = love.touch.getTouches()

    for i, touches in ipairs(touch) do
        tx, ty = love.touch.getPosition(touches)
    end

-- math
    centerX = math.floor(tx / 32) * 32
    centerY = math.floor(ty / 32) * 32
    
-- select block
  -- blockId = getBlockAt(centerX, centerY)
end

function utilities.touchpressed()
    if isTouchOnButton(tx, ty, screen) then
        if not deleteBlock then
            if not editBlock then
                if #blocksTexture > 0 then
                    centerX, centerY = checkRadius(centerX, centerY, 32, 32, rotate)
                    createBlocks(centerX + editorOffSetX * 32, centerY + editorOffSetY * 32, blockTexture, rotate)
                end
            end
        end
        if deleteBlock then 
            centerX, centerY = checkRadius(centerX, centerY, 32, 32, rotate)
            removeBlock(centerX + editorOffSetX * 32, centerY + editorOffSetY * 32)
        end
    end
    --[[
    if editBlock then
        if not touch then
            cutx = x
            cuty = y
        end
    end
    ]]
    touch = true
end

function utilities.touchmoved()
    --[[
    if editBlock then
        cutw = x - 258
        cuth = y - 130
    end
    ]]
end 

function utilities.touchreleased()
    cutx = 0
    cuty = 0
    cutw = 0
    cuth = 0
    touch = false
end

return utilities
