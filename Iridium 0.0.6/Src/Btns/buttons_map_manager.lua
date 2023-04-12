buttonsMapManager = {}

function buttonsMapManager.load()
    -- c
    buttonC = {}
    buttonC.image = love.graphics.newImage('Rsrc/Keyboard/' .. editorConf.theme .. '/C-sheet.png')
    buttonC.x, buttonC.y, buttonC.w, buttonC.h = love.graphics.getWidth() - 64, love.graphics.getHeight() - 64, 64, 64
    buttonC.q = 1
    buttonCQuads = {
        love.graphics.newQuad( 0, 0, 64, 64, buttonC.image),
        love.graphics.newQuad( 65, 0, 64, 64, buttonC.image)
    }
    -- others buttons
    buttonTheme = {}
    buttonTheme.x, buttonTheme.y, buttonTheme.w, buttonTheme.h = 28, 183, 263, 16
    
    buttonLanguage = {}
    buttonLanguage.x, buttonLanguage.y, buttonLanguage.w, buttonLanguage.h = 28, 201, 236, 16
    
    showTouch = {} 
    showTouch.x, showTouch.y, showTouch.w, showTouch.h = 28, 219, 226, 16
    
    showInfos = {}
    showInfos.x, showInfos.y, showInfos.w, showInfos.h = 28, 168, 0, 16
end

function buttonsMapManager.draw()
    love.graphics.draw(buttonC.image, buttonCQuads[buttonC.q], buttonC.x, buttonC.y)
end

function buttonsMapManager.update(dt)
    -- arrows
    if love.mouse.isDown(1) then
        if isTouchOnButton( tx, ty, buttonC) then
            -- quads
            buttonC.q = 2
            
            if map.gradeColor.r < 256 and map.gradeColor.g < 256 and map.gradeColor.b < 256 and map.gradeColor.a < 101 then
            -- directory
                love.filesystem.createDirectory('Maps/' .. map.id)
                love.filesystem.createDirectory('Maps/' .. map.id .. '/Tiles')
            -- archive
                -- map
                mapExiste = love.filesystem.getInfo('Maps/' .. map.id .. '/map.json')
                if mapExiste == nil then
                    mapFile = love.filesystem.newFile('Maps/' .. map.id .. '/map.json', 'w')
                    mapFile:write(json.encode(map))
                    mapFile:close()
                end
                -- conf
                love.filesystem.write('conf.json', json.encode(editorConf))
                
                states.mapEditor.mapId = map.id
                gamestate.switch(states.mapEditor)
                love.timer.sleep(timeSleep)
            end
        end
    else
        -- quads
        buttonC.q = 1
    end
end

return buttonsMapManager