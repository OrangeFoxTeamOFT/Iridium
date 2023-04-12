buttons = {}

function buttons.load()
--buttons
    -- button up
    buttonUp = {}
    buttonUp.Texture = love.graphics.newImage('Images/ButtonUpSpriteSheet.png')
    buttonUp.x = 64
    buttonUp.y = love.graphics.getHeight() - 128
    buttonUp.w = 64
    buttonUp.h = 64
    buttonUp.quad = 1
    
    buttonUpQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonUp.Texture),
        love.graphics.newQuad(65, 0, 64, 64, buttonUp.Texture)
    }

    -- button down
    buttonDown = {}
    buttonDown.Texture = love.graphics.newImage('Images/ButtonDownSpriteSheet.png')
    buttonDown.x = 64
    buttonDown.y = love.graphics.getHeight() - 64
    buttonDown.w = 64
    buttonDown.h = 64
    buttonDown.quad = 1
    
    buttonDownQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonDown.Texture),
        love.graphics.newQuad(65, 0, 64, 64, buttonDown.Texture)
    }

    -- button right
    buttonRight = {}
    buttonRight.Texture = love.graphics.newImage('Images/ButtonRightSpriteSheet.png')
    buttonRight.x = 128
    buttonRight.y = love.graphics.getHeight() - 64
    buttonRight.w = 64
    buttonRight.h = 64
    buttonRight.quad = 1

    buttonRightQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonRight.Texture),
        love.graphics.newQuad(65, 0, 64, 64, buttonRight.Texture)
    }

    -- button left
    buttonLeft = {}
    buttonLeft.Texture = love.graphics.newImage('Images/ButtonLeftSpriteSheet.png')
    buttonLeft.x = 0
    buttonLeft.y = love.graphics.getHeight() - 64
    buttonLeft.w = 64
    buttonLeft.h = 64
    buttonLeft.quad = 1

    buttonLeftQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonLeft.Texture),
        love.graphics.newQuad(65, 0, 64, 64, buttonLeft.Texture)
    }

    -- buttonS
    buttonS = {}
    buttonS.Texture = love.graphics.newImage('Images/ButtonSSpriteSheet.png')
    buttonS.x = 0
    buttonS.y = 0
    buttonS.w = 48
    buttonS.h = 48
    buttonS.quad = 1

    buttonSQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonS.Texture),
        love.graphics.newQuad(65, 0 ,64 ,64, buttonS.Texture)
    }

    -- buttonB
    buttonB = {}
    buttonB.Texture = love.graphics.newImage('Images/ButtonBSpriteSheet.png')
    buttonB.x = 48
    buttonB.y = 0
    buttonB.w = 48
    buttonB.h = 48
    buttonB.quad = 1
    
    buttonBQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonB.Texture),
        love.graphics.newQuad(65, 0, 64, 64, buttonB.Texture)
    }
    --buttonN 
    buttonN = {}
    buttonN.Texture = love.graphics.newImage('Images/ButtonNSpriteSheet.png')
    buttonN.x = 96
    buttonN.y = 0
    buttonN.w = 48
    buttonN.h = 48
    buttonN.quad = 1

    buttonNQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonN.Texture),
        love.graphics.newQuad(65, 0, 64, 64, buttonN.Texture)
    }
    --buttonR
    buttonR = {}
    buttonR.Texture = love.graphics.newImage('Images/ButtonRSpriteSheet.png')
    buttonR.x = 144
    buttonR.y = 0
    buttonR.w = 48
    buttonR.h = 48
    buttonR.quad = 1

    buttonRQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonR.Texture),
        love.graphics.newQuad(65, 0, 64, 64, buttonR.Texture)
    }
    --buttonDelete
    buttonDelete = {}
    buttonDelete.Texture = love.graphics.newImage('Images/ButtonDeleteSpriteSheet.png')
    buttonDelete.x = love.graphics.getWidth() - 96
    buttonDelete.y = 0
    buttonDelete.w = 69
    buttonDelete.h = 48
    buttonDelete.quad = 1
    
    buttonDeleteQuads = {
        love.graphics.newQuad(0, 0, 128, 64, buttonDelete.Texture),
        love.graphics.newQuad(129, 0, 128, 64, buttonDelete.Texture)
    }
    --buttonC
    buttonC = {}
    buttonC.Texture = love.graphics.newImage('Images/ButtonCSpriteSheet.png')
    buttonC.x = love.graphics.getWidth() - 256
    buttonC.y = 0
    buttonC.w = 48
    buttonC.h = 48
    buttonC.quad = 1
    
    buttonCQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonC.Texture),
        love.graphics.newQuad(65, 0, 64, 64, buttonC.Texture)
    }
    
    buttonZ = {}
    buttonZ.Texture = love.graphics.newImage('Images/ButtonZSpriteSheet.png')
    buttonZ.x = 192
    buttonZ.y = 0
    buttonZ.w = 48
    buttonZ.h = 48
    buttonZ.quad = 1

    buttonZQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonC.Texture),
        love.graphics.newQuad(65, 0, 64, 64, buttonC.Texture)
    }
    
    buttonY = {}
    buttonY.Texture = love.graphics.newImage('Images/ButtonYSpriteSheet.png')
    buttonY.x = 240
    buttonY.y = 0
    buttonY.w = 48
    buttonY.h = 48
    buttonY.quad = 1

    buttonYQuads = {
        love.graphics.newQuad(0, 0, 64, 64, buttonC.Texture),
        love.graphics.newQuad(65, 0, 64, 64, buttonC.Texture)
    }
--vars
    --butons
    buttonSpeed = 0.0625
end

function buttons.draw()
-- buttons
    love.graphics.draw(buttonUp.Texture, buttonUpQuads[buttonUp.quad], buttonUp.x, buttonUp.y)
    love.graphics.draw(buttonDown.Texture, buttonDownQuads[buttonDown.quad], buttonDown.x, buttonDown.y)
    love.graphics.draw(buttonRight.Texture, buttonRightQuads[buttonRight.quad], buttonRight.x, buttonRight.y)
    love.graphics.draw(buttonLeft.Texture, buttonLeftQuads[buttonLeft.quad], buttonLeft.x, buttonLeft.y)
    love.graphics.draw(buttonS.Texture, buttonSQuads[buttonS.quad], buttonS.x, buttonS.y, nil, 0.75)
    love.graphics.draw(buttonB.Texture, buttonSQuads[buttonB.quad], buttonB.x, buttonB.y, nil, 0.75)
    love.graphics.draw(buttonN.Texture, buttonSQuads[buttonN.quad], buttonN.x, buttonN.y, nil, 0.75)
    love.graphics.draw(buttonDelete.Texture, buttonDeleteQuads[buttonDelete.quad], buttonDelete.x, buttonDelete.y, nil, 0.75)
    love.graphics.draw(buttonR.Texture, buttonRQuads[buttonR.quad], buttonR.x, buttonR.y, nil, 0.75)
    --love.graphics.draw(buttonC.Texture, buttonCQuads[buttonC.quad], buttonC.x, buttonC.y, nil, 0.75)
    love.graphics.draw(buttonZ.Texture, buttonZQuads[buttonZ.quad], buttonZ.x, buttonZ.y, nil, 0.75)
    love.graphics.draw(buttonY.Texture, buttonYQuads[buttonY.quad], buttonY.x, buttonY.y, nil, 0.75)
    
end

function buttons.update()
-- buttons
    if love.mouse.isDown(1) then
        -- arrows
        if isTouchOnButton(tx, ty, buttonUp) then
            buttonUp.quad = 2
            buttonLeft.quad = 1
            buttonDown.quad = 1
            buttonRight.quad = 1
            buttonN.quad = 1
            buttonB.quad = 1
            buttonS.quad = 1
            buttonDelete.quad = 1
            buttonR.quad = 1
            buttonC.quad = 1
            buttonZ.quad = 1 
            buttonY.quad = 1
            if not editBlock then
                editorOffSetY = editorOffSetY - 1
            end
            --[[
            if editBlock then
                if blockId ~= nil then
                    blocks[blockId].y = blocks[blockId].y - 32
                end
            end
            ]]
        elseif isTouchOnButton(tx, ty, buttonDown) then
            buttonDown.quad = 2
            buttonLeft.quad = 1
            buttonUp.quad = 1
            buttonRight.quad = 1
            buttonN.quad = 1
            buttonB.quad = 1
            buttonS.quad = 1
            buttonDelete.quad = 1
            buttonR.quad = 1
            buttonC.quad = 1
            buttonZ.quad = 1 
            buttonY.quad = 1
            if not editBlock then
                editorOffSetY = editorOffSetY + 1
            end
            --[[
            if editBlock then
                if blockId ~= nil then
                    blocks[blockId].y = blocks[blockId].y + 32
                end
            end
            ]]
        elseif isTouchOnButton(tx, ty, buttonLeft) then
            buttonLeft.quad = 2
            buttonDown.quad = 1
            buttonUp.quad = 1
            buttonRight.quad = 1
            buttonN.quad = 1
            buttonB.quad = 1
            buttonS.quad = 1
            buttonDelete.quad = 1
            buttonR.quad = 1
            buttonC.quad = 1
            buttonZ.quad = 1 
            buttonY.quad = 1
            if not editBlock then
                editorOffSetX = editorOffSetX - 1
            end
            --[[
            if editBlock then
                if blockId ~= nil then
                    blocks[blockId].x = blocks[blockId].x - 1
                end
            end
            ]]
        elseif isTouchOnButton(tx, ty, buttonRight) then
            buttonLeft.quad = 1
            buttonRight.quad = 2
            buttonDown.quad = 1
            buttonUp.quad = 1
            buttonN.quad = 1
            buttonB.quad = 1
            buttonDelete.quad = 1
            buttonR.quad = 1
            buttonC.quad = 1
            buttonZ.quad = 1 
            buttonY.quad = 1
            if not editBlock then
                editorOffSetX = editorOffSetX + 1
            end
            --[[
            if editBlock then
                if blockId ~= nil then
                    blocks[blockId].x = blocks[blockId].x + 1
                end
            end
            ]]
        -- s, save
        elseif isTouchOnButton(tx, ty, buttonS) then
            buttonN.quad = 1
            buttonB.quad = 1
            buttonLeft.quad = 1
            buttonDown.quad = 1
            buttonUp.quad = 1
            buttonRight.quad = 1
            buttonS.quad = 2
            buttonDelete.quad = 1
            buttonR.quad = 1
            buttonC.quad = 1
            buttonZ.quad = 1 
            buttonY.quad = 1
            mapFile = love.filesystem.newFile("map.json", "w")
            mapFile:write(saveLib.encode(blocks))
            mapFile:close()
            love.timer.sleep(buttonSpeed)
        -- b, back
        elseif isTouchOnButton(tx, ty, buttonB) then
            buttonB.quad = 2
            buttonN.quad = 1
            buttonLeft.quad = 1
            buttonDown.quad = 1
            buttonUp.quad = 1
            buttonRight.quad = 1
            buttonS.quad = 1
            buttonDelete.quad = 1
            buttonR.quad = 1
            buttonC.quad = 1
            buttonZ.quad = 1 
            buttonY.quad = 1
            if blockTexture > 1 then
                blockTexture = blockTexture - 1 
            end
            love.timer.sleep(buttonSpeed)
        --n, next
        elseif isTouchOnButton(tx, ty, buttonN) then
            buttonN.quad = 2
            buttonB.quad = 1
            buttonLeft.quad = 1
            buttonDown.quad = 1
            buttonUp.quad = 1
            buttonRight.quad = 1
            buttonS.quad = 1
            buttonDelete.quad = 1
            buttonR.quad = 1
            buttonC.quad = 1
            buttonZ.quad = 1 
            buttonY.quad = 1
            if blockTexture < #blocksTexture then
                blockTexture = blockTexture + 1
            end
            love.timer.sleep(buttonSpeed)
        -- delete
        elseif isTouchOnButton(tx, ty, buttonDelete) then
            buttonDelete.quad = 2
            buttonN.quad = 1
            buttonB.quad = 1
            buttonLeft.quad = 1
            buttonDown.quad = 1
            buttonUp.quad = 1
            buttonRight.quad = 1
            buttonS.quad = 1
            buttonR.quad = 1
            buttonC.quad = 1
            buttonZ.quad = 1 
            buttonY.quad = 1
            if deleteBlock then
                deleteBlock = false
            else
                deleteBlock = true
            end
            love.timer.sleep(buttonSpeed)
        -- rotate
        elseif isTouchOnButton(tx, ty, buttonR) then
            buttonR.quad = 2
            buttonLeft.quad = 1
            buttonDown.quad = 1
            buttonUp.quad = 1
            buttonRight.quad = 1
            buttonS.quad = 1
            buttonN.quad = 1
            buttonB.quad = 1
            buttonDelete.quad = 1
            buttonC.quad = 1
            buttonZ.quad = 1 
            buttonY.quad = 1
            if rotate < 4.71 then
                rotate = rotate + 1.57
            else 
                rotate = 0
            end
            love.timer.sleep(buttonSpeed)
        --[[
        elseif isTouchOnButton(tx, ty, buttonC) then
            buttonR.quad = 1
            buttonLeft.quad = 1
            buttonDown.quad = 1
            buttonUp.quad = 1
            buttonRight.quad = 1
            buttonS.quad = 1
            buttonN.quad = 1
            buttonB.quad = 1
            buttonDelete.quad = 1
            buttonC.quad = 2
            buttonZ.quad = 1 
            buttonY.quad = 1
            if editBlock then
                editBlock = false
            else
                editBlock = true
            end
            love.timer.sleep(buttonSpeed)
            ]]
        elseif isTouchOnButton(tx, ty, buttonZ) then
            buttonZ.quad = 2
            buttonY.quad = 1
            buttonR.quad = 1
            buttonLeft.quad = 1
            buttonDown.quad = 1
            buttonUp.quad = 1
            buttonRight.quad = 1
            buttonS.quad = 1
            buttonN.quad = 1
            buttonB.quad = 1
            buttonDelete.quad = 1
            buttonC.quad = 1
            if #blocks > 0 then
                table.insert(trash, 1, blocks[#blocks])
                table.remove(blocks, #blocks)
            end
            love.timer.sleep(buttonSpeed)
        elseif isTouchOnButton(tx, ty, buttonY) then
            buttonZ.quad = 1 
            buttonY.quad = 2
            buttonR.quad = 1
            buttonLeft.quad = 1
            buttonDown.quad = 1
            buttonUp.quad = 1
            buttonRight.quad = 1
            buttonS.quad = 1
            buttonN.quad = 1
            buttonB.quad = 1
            buttonDelete.quad = 1
            buttonC.quad = 1
            if #trash > 0 then
                table.insert(blocks, #blocks, trash[1])
                table.remove(trash, 1)
            end
            love.timer.sleep(buttonSpeed)
        end
    else
        buttonZ.quad = 1 
        buttonY.quad = 1
        buttonR.quad = 1
        buttonLeft.quad = 1
        buttonDown.quad = 1
        buttonUp.quad = 1
        buttonRight.quad = 1
        buttonS.quad = 1
        buttonN.quad = 1
        buttonB.quad = 1
        buttonDelete.quad = 1
        buttonC.quad = 1
    end
end

return buttons
