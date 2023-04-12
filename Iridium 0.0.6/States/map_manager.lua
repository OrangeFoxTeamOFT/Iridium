mapManager = {}

function mapManager:enter()
-- archives
    buttonsMapManager = require 'Src/Btns/buttons_map_manager'

-- orientation to object
    buttonsMapManager.load()

-- tables
    text = { text = "Name" }
    numberGradeSize = { text = "32" }
    numberR = { text = "255" }
    numberG = { text = "255" }
    numberB = { text = "255" }
    numberA = { text = "20" }

    map = {
        -- map
        id = "Untituled",
        blocks = {},
        --grade
        gradeSize = 32,
        gradeColor = {
            r = 255,
            g = 255,
            b = 255,
            a = 20
        }
    }

-- cmds
    suit.theme.color.normal = { bg = {0, 0, 1}, fg = {255,255,255}}
    suit.theme.color.hovered = { bg = {0, 0, 1}, fg = {255,255,255}}
    suit.theme.color.active = { bg = {0, 0, 1}, fg = {255,255,255}}
end

function mapManager:draw()
    --background
    love.graphics.setBackgroundColor(0, 0, 1)
-- to Map
    love.graphics.print(lang.mapManagerTranslate.toTheMap, 28, 13)
    -- text
    love.graphics.print(lang.mapManagerTranslate.map, 28, 40)
    love.graphics.print(lang.mapManagerTranslate.gradeSize, 28, 58)
    love.graphics.print(lang.mapManagerTranslate.gradeColor, 28, 76)
    -- RGB
    love.graphics.print("R: ", 28, 94)
    love.graphics.print("G: ", 28, 112)
    love.graphics.print("B: ", 28, 130)
    love.graphics.print("A: ", 28, 148) love.graphics.print("%", 566, 149)
    
-- to the editor
    love.graphics.print(lang.mapManagerTranslate.toTheEditor, 28, 173)
    love.graphics.print(lang.mapManagerTranslate.systemTheme, 28, 201)
    love.graphics.print(lang.mapManagerTranslate.language, 28, 219)
    love.graphics.print(lang.mapManagerTranslate.showTouch, 28, 237)
    love.graphics.print(lang.mapManagerTranslate.opitionalInfos, 28, 255)

-- tips
    love.graphics.print(lang.mapManagerTranslate.clickOnTheTextsToChange, 28, love.graphics.getHeight() - 32)
    
    --draw
    suit.draw()
    buttonsMapManager.draw()
end

function mapManager:update(dt)
-- buttons and inputs
    -- buttons
    buttonsMapManager.update()
    
    if suit.Button(editorConf.theme, {id = 1}, 458, 201, 158, 16).hit then
        if editorConf.theme == "Day" then
            editorConf.theme = "Night"
        elseif editorConf.theme == "Night" then
            editorConf.theme = "Carmin"
        elseif editorConf.theme == "Carmin" then
            editorConf.theme = "Currupition"
        elseif editorConf.theme == "Currupition" then
            editorConf.theme = "Platinium" 
        else
            editorConf.theme = "Day"
        end
    end
    if suit.Button(editorConf.language, {id = 2}, 491, 219, 148, 16).hit then
        if editorConf.language == "english" then
            editorConf.language = "portugues"
        elseif editorConf.language == "portugues" then
            editorConf.language = "espanol"
        elseif editorConf.language == "espanol" then
            editorConf.language = "francais"
        elseif editorConf.language == "francais" then
            editorConf.language = "deutsch"
        else
            editorConf.language = "english"
        end
    end
    if suit.Button(editorConf.touchOn, {id = 3}, 498, 237, 64, 16).hit then
        if editorConf.touchOn == "On" then
            editorConf.touchOn = "Off"
        else
            editorConf.touchOn = "On"
        end
    end
    if suit.Button(editorConf.infoOn, {id = 4}, 498, 255, 64, 16).hit then
        if editorConf.infoOn == "On" then
            editorConf.infoOn = "Off"
        else
            editorConf.infoOn = "On"
        end
    end
    
    -- inputs
    suit.Input(text, 512, 39, 258, 18)
    suit.Input(numberGradeSize, 512, 57, 50, 18)
    suit.Input(numberR, 512, 93, 50, 18)
    suit.Input(numberG, 512, 111, 50, 18)
    suit.Input(numberB, 512, 129, 50, 18)
    suit.Input(numberA, 512, 149, 50, 18)
    
    -- input vars
    map.id = string.gsub(text.text, " ", "")
    map.gradeSize = tonumber(numberGradeSize.text)
    map.gradeColor.r = tonumber(numberR.text)
    map.gradeColor.g = tonumber(numberG.text)
    map.gradeColor.b = tonumber(numberB.text)
    map.gradeColor.a = tonumber(numberA.text)
end

function mapManager:keypressed(k)
    suit.keypressed(k)
end

function mapManager:textedited(t, s, l)
    suit.textedited(t, s, l)
end

function mapManager:textinput(k)
    suit.textinput(k)
end
return mapManager