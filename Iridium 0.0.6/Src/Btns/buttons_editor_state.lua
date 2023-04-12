buttonsEditorState = {}

function buttonsEditorState.load()
    --arrows
    buttonUp = {}
    buttonUp.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/Arrows/Up-sheet.png')
    buttonUp.x, buttonUp.y, buttonUp.w, buttonUp.h = 64, love.graphics.getHeight() - 128, 64, 64
    buttonUp.quad = 1
    buttonUpQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, buttonUp.texture),
        love.graphics.newQuad( 65, 0, 64, 64, buttonUp.texture)
    }
    
    buttonDown = {}
    buttonDown.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/Arrows/Down-sheet.png')
    buttonDown.x, buttonDown.y, buttonDown.w, buttonDown.h = 64, love.graphics.getHeight() - 64, 64, 64
    buttonDown.quad = 1
    buttonDownQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, buttonDown.texture),
        love.graphics.newQuad( 65, 0, 64, 64, buttonDown.texture)
    }
    
    buttonLeft = {}
    buttonLeft.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/Arrows/Left-sheet.png')
    buttonLeft.x, buttonLeft.y, buttonLeft.w, buttonLeft.h = 0, love.graphics.getHeight() - 64, 64, 64
    buttonLeft.quad = 1
    buttonLeftQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, buttonLeft.texture),
        love.graphics.newQuad( 65, 0, 64, 64, buttonLeft.texture)
    }
    
    buttonRight = {}
    buttonRight.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme ..'/Arrows/Right-sheet.png')
    buttonRight.x, buttonRight.y, buttonRight.w, buttonRight.h = 128, love.graphics.getHeight() - 64, 64, 64
    buttonRight.quad = 1
    buttonRightQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, buttonRight.texture),
        love.graphics.newQuad( 65, 0, 64, 64, buttonRight.texture)
    }

-- keyboard 
    -- change blocks buttons
    buttonB = {}
    buttonB.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/B-sheet.png')
    buttonB.x, buttonB.y, buttonB.w, buttonB.h = 48, 0, 48, 48
    buttonB.quad = 1
    buttonBQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, buttonB.texture),
        love.graphics.newQuad( 65, 0, 64, 64, buttonB.texture)
    }

    buttonN = {}
    buttonN.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/N-sheet.png')
    buttonN.x, buttonN.y, buttonN.w, buttonN.h = 96, 0, 48, 48
    buttonN.quad = 1
    buttonNQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, buttonN.texture),
        love.graphics.newQuad( 65, 0, 64, 64, buttonN.texture)
    }

    -- undo/redo buttons
    buttonY = {}
    buttonY.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/Y-sheet.png')
    buttonY.x, buttonY.y, buttonY.w, buttonY.h = 192, 0, 48, 48
    buttonY.quad = 1
    buttonYQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, buttonY.texture),
        love.graphics.newQuad( 65, 0, 64, 64, buttonY.texture)
    }

    buttonZ = {}
    buttonZ.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/Z-sheet.png')
    buttonZ.x, buttonZ.y, buttonZ.w, buttonZ.h = 144, 0, 48, 48
    buttonZ.quad = 1
    buttonZQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, buttonZ.texture),
        love.graphics.newQuad( 65, 0, 64, 64, buttonZ.texture)
    }
    
    -- save button
    buttonS = {}
    buttonS.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/S-sheet.png')
    buttonS.x, buttonS.y, buttonS.w, buttonS.h = 0, 0, 48, 48
    buttonS.quad = 1
    buttonSQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, buttonS.texture),
        love.graphics.newQuad( 65, 0, 64, 64, buttonS.texture)
    }

-- Words

    -- delete button
    backspaceButton = {}
    backspaceButton.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/Words/BackSpace-sheet.png')
    backspaceButton.x, backspaceButton.y, backspaceButton.w, backspaceButton.h = love.graphics.getWidth() - 144, 0, 96, 48
    backspaceButton.quad = 1
    backspaceButtonQuads = {
        love.graphics.newQuad( 0, 0, 128, 64, backspaceButton.texture),
        love.graphics.newQuad( 129, 0, 128, 64, backspaceButton.texture)
    }
    
    -- editor state button
    escButton = {}
    escButton.texture = love.graphics.newImage('Rsrc/Keyboard/'.. editorConf.theme .. '/Words/Esc-sheet.png')
    escButton.x, escButton.y, escButton.w, escButton.h = love.graphics.getWidth() - 192, 0, 48, 48
    escButton.quad = 1
    escButtonQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, escButton.texture),
        love.graphics.newQuad( 65, 0, 64, 64, escButton.texture)
    }
    
    -- mapselect button
    altButton = {}
    altButton.texture = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/Words/Alt-sheet.png')
    altButton.x, altButton.y, altButton.w, altButton.h = love.graphics.getWidth() - 48, 0, 48, 48
    altButton.quad = 1
    altButtonQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, altButton.texture),
        love.graphics.newQuad( 65, 0, 64, 64, altButton.texture)
    }
    
-- vars
    buttonsSize = 0.75
    mode = "edit"
end

function buttonsEditorState.draw()
-- arrows
    love.graphics.draw(buttonUp.texture, buttonUpQuads[buttonUp.quad], buttonUp.x, buttonUp.y)
    love.graphics.draw(buttonDown.texture, buttonDownQuads[buttonDown.quad], buttonDown.x, buttonDown.y)
    love.graphics.draw(buttonLeft.texture, buttonLeftQuads[buttonLeft.quad], buttonLeft.x, buttonLeft.y)
    love.graphics.draw(buttonRight.texture, buttonRightQuads[buttonRight.quad], buttonRight.x, buttonRight.y)
-- Keyboard
    -- change blocks
    love.graphics.draw(buttonB.texture, buttonBQuads[buttonB.quad], buttonB.x, buttonB.y, nil, buttonsSize)
    love.graphics.draw(buttonN.texture, buttonNQuads[buttonN.quad], buttonN.x, buttonN.y, nil, buttonsSize)
    -- undo/redo
    love.graphics.draw(buttonY.texture, buttonYQuads[buttonY.quad], buttonY.x, buttonY.y, nil, buttonsSize)
    love.graphics.draw(buttonZ.texture, buttonZQuads[buttonZ.quad], buttonZ.x, buttonZ.y, nil, buttonsSize)
    -- sace
    love.graphics.draw(buttonS.texture, buttonSQuads[buttonS.quad], buttonS.x, buttonS.y, nil, buttonsSize)
-- arrows
    love.graphics.draw(backspaceButton.texture, backspaceButtonQuads[backspaceButton.quad], backspaceButton.x, backspaceButton.y, nil, buttonsSize)
    love.graphics.draw(altButton.texture, altButtonQuads[altButton.quad], altButton.x, altButton.y, nil, buttonsSize)
    love.graphics.draw(escButton.texture, escButtonQuads[escButton.quad], escButton.x, escButton.y, nil, buttonsSize)
end

function buttonsEditorState.update()
    if love.mouse.isDown(1) then
        -- arrows
        if isTouchOnButton(tx, ty, buttonUp) then
            buttonUp.quad = 2
            buttonDown.quad = 1
            buttonLeft.quad = 1
            buttonRight.quad = 1
            buttonB.quad = 1
            buttonN.quad = 1
            buttonY.quad = 1
            buttonZ.quad = 1
            buttonS.quad = 1
            backspaceButton.quad = 1
            escButton.quad = 1
            
            editorOffsetY = editorOffsetY - 1
        elseif isTouchOnButton(tx, ty, buttonDown) then
            buttonUp.quad = 1 
            buttonDown.quad = 2
            buttonLeft.quad = 1
            buttonRight.quad = 1
            buttonB.quad = 1
            buttonN.quad = 1
            buttonY.quad = 1
            buttonZ.quad = 1
            buttonS.quad = 1
            backspaceButton.quad = 1
            escButton.quad = 1
            
            editorOffsetY = editorOffsetY + 1
        elseif isTouchOnButton(tx, ty, buttonLeft) then
            buttonUp.quad = 1 
            buttonDown.quad = 1
            buttonLeft.quad = 2
            buttonRight.quad = 1
            buttonB.quad = 1
            buttonN.quad = 1
            buttonY.quad = 1
            buttonZ.quad = 1
            buttonS.quad = 1
            backspaceButton.quad = 1
            escButton.quad = 1
            
            editorOffsetX = editorOffsetX - 1
        elseif isTouchOnButton(tx, ty, buttonRight) then
            buttonUp.quad = 1 
            buttonDown.quad =1 
            buttonLeft.quad = 1
            buttonRight.quad = 2
            buttonB.quad = 1
            buttonN.quad = 1
            buttonY.quad = 1
            buttonZ.quad = 1
            buttonS.quad = 1
            backspaceButton.quad = 1
            escButton.quad = 1
            
            editorOffsetX = editorOffsetX + 1
        -- keyboard change blocks
        elseif isTouchOnButton(tx, ty, buttonB) then
            buttonUp.quad = 1 
            buttonDown.quad = 1
            buttonLeft.quad = 1
            buttonRight.quad = 1
            buttonB.quad = 2
            buttonN.quad = 1
            buttonY.quad = 1
            buttonZ.quad = 1
            buttonS.quad = 1
            backspaceButton.quad = 1
            escButton.quad = 1
            
            -- cmds
            if textureId > 1 then
                textureId = textureId - 1
            elseif textureId == 1 then
                textureId = #tiles
            end
            love.timer.sleep(timeSleep)
        elseif isTouchOnButton(tx, ty, buttonN) then
            buttonUp.quad = 1 
            buttonDown.quad = 1
            buttonLeft.quad = 1
            buttonRight.quad = 1
            buttonB.quad = 1
            buttonN.quad = 2
            buttonY.quad = 1
            buttonZ.quad = 1
            buttonS.quad = 1
            backspaceButton.quad = 1
            escButton.quad = 1
            
            -- cmds
            if textureId < #tiles then
                textureId = textureId + 1
            elseif textureId == #tiles then
                textureId = 1
            end
            love.timer.sleep(timeSleep)
        -- undo/redo
        elseif isTouchOnButton(tx, ty, buttonY) then
            buttonUp.quad = 1 
            buttonDown.quad = 1
            buttonLeft.quad = 1
            buttonRight.quad = 1
            buttonB.quad = 1
            buttonN.quad = 1
            buttonY.quad = 2
            buttonZ.quad = 1
            buttonS.quad = 1
            backspaceButton.quad = 1
            escButton.quad = 1
            
            -- cmds
            if #trash > 0 then
                table.insert(maps.blocks, #maps.blocks, trash[1])
                table.remove(trash, 1)
            end
            love.timer.sleep(timeSleep)
        elseif isTouchOnButton(tx, ty, buttonZ) then
            buttonUp.quad = 1 
            buttonDown.quad = 1
            buttonLeft.quad = 1
            buttonRight.quad = 1
            buttonB.quad = 1
            buttonN.quad = 1
            buttonY.quad = 1
            buttonZ.quad = 2
            buttonS.quad = 1
            backspaceButton.quad = 1
            escButton.quad = 1
            
            -- cmds
            if #maps.blocks > 0 then
                table.insert(trash, 1, maps.blocks[#maps.blocks])
                table.remove(maps.blocks, #maps.blocks)
            end
            love.timer.sleep(timeSleep)
        -- save
        elseif isTouchOnButton(tx, ty, buttonS) then
            buttonUp.quad = 1 
            buttonDown.quad = 1
            buttonLeft.quad = 1
            buttonRight.quad = 1
            buttonB.quad = 1
            buttonN.quad = 1
            buttonY.quad = 1
            buttonZ.quad = 1
            buttonS.quad = 2
            backspaceButton.quad = 1
            escButton.quad = 1
            
            --cmds
            love.filesystem.write('Maps/' .. editorState.mapId .. '/map.json', json.encode(maps))
        -- Words delete
        elseif isTouchOnButton(tx, ty, backspaceButton) then
            buttonUp.quad = 1 
            buttonDown.quad = 1
            buttonLeft.quad = 1
            buttonRight.quad = 1
            buttonB.quad = 1
            buttonN.quad = 1
            buttonY.quad = 1
            buttonZ.quad = 1
            buttonS.quad = 1
            backspaceButton.quad = 2
            altButton.quad = 1
            escButton.quad = 1
            
            -- cmds
            mode = "delete"
            love.timer.sleep(timeSleep)
        -- words change map
        elseif isTouchOnButton(tx, ty, altButton) then
            backspaceButton.quad = 1
            altButton.quad = 2
            
            -- cmds
            gamestate.switch(states.mapManager)
        elseif isTouchOnButton(tx, ty, escButton) then
            buttonUp.quad = 1 
            buttonDown.quad = 1
            buttonLeft.quad = 1
            buttonRight.quad = 1
            buttonB.quad = 1
            buttonN.quad = 1
            buttonY.quad = 1
            buttonZ.quad = 1
            buttonS.quad = 1
            backspaceButton.quad = 1
            escButton.quad = 2
            
            -- cmds
            mode = "edit"
        end
    else
        buttonUp.quad = 1 
        buttonDown.quad = 1
        buttonLeft.quad = 1
        buttonRight.quad = 1
        buttonB.quad = 1
        buttonN.quad = 1
        buttonY.quad = 1
        buttonZ.quad = 1
        buttonS.quad = 1
        backspaceButton.quad = 1
        altButton.quad = 1
        escButton.quad = 1
    end
end

return buttonsEditorState