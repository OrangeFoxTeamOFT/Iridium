function love.load()
-- libs
    json = require 'FoxsToolBox/json'
    gamestate = require 'FoxsToolBox/gamestate'
    suit = require 'FoxsToolBox/suit'
    timer = require 'FoxsToolBox/timer'
    lip = require 'FoxsToolBox/lip'
    require 'FoxsToolBox/gradient'

-- Archives of state
    states = {}
    states.loadScreen = require 'States/load_screen'
    states.mapManager = require 'States/map_manager'
    states.mapEditor = require "States/editor_state"

-- Archives
    font = love.graphics.newFont('Rsrc/Font/PhoenixBIOS.ttf', 16, nil, 2)

-- Confs of editor
    editorConf = {
        theme = "Day",
        language = "english",
        touchOn = "On",
        infoOn = "On"
    }
    editorConf = json.decode(love.filesystem.read('conf.json'))
    
-- default cmds
    love.graphics.setFont(font)
    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.filesystem.createDirectory('Maps')
    
-- archives
    confExiste = love.filesystem.getInfo('conf.json')
    if confExiste == nil then
        confFile = love.filesystem.newFile('conf.json', 'w')
        confFile:write(json.encode(editorConf))
        confFile:close()
    end
    
    gamestate.registerEvents()
    gamestate.switch(states.loadScreen)

-- Vars
    halfScreenW, halfScreenH = love.graphics.getWidth() / 2, love.graphics.getHeight() / 2
    tx, ty = -1, -1
    centerx, centery = 0, 0
    timeSleep = 0.0658
end

function love.update(dt)
    local touch = love.touch.getTouches()

    for i, touches in ipairs(touch) do
        -- take touches on screen and create a list with alls x and y
        tx, ty = love.touch.getPosition(touches)
    end

-- Languages
    lang = lip.load('Src/Translation/' .. editorConf.language .. ".ini")
end

function isTouchOnButton(touchx, touchy, button)
    local tx, ty = touchx, touchy
    if button.x <= tx and button.x + button.w >= tx and button.y <= ty and button.y + button.h >= ty then
        return true
    else
        return false
    end
end

function drawinrect(img, x, y, w, h, r, ox, oy, kx, ky)
    return -- tail call for a little extra bit of efficiency
    love.graphics.draw(img, x, y, r, w / img:getWidth(), h / img:getHeight(), ox, oy, kx, ky)
end