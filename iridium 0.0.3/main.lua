function love.load()
--libs
    saveLib = require 'Libaries/json'

--archives
    buttons = require 'Src/buttons'
    directory = require 'Src/directory'
    information = require 'Src/information'
    utilities = require 'Src/utilities'
    dbug = require 'Src/dbug'
    
--lists
    blocks = {}
    blocksTexture = {}
    trash = {}

-- buttons
    buttons.load()
    directory.load()

-- tables
   -- screen
   screen = {}
   screen.x = buttonRight.x + buttonRight.w
   screen.y = buttonR.h
   screen.w = buttonDelete.x + 64
   screen.h = buttonDown.y + buttonDown.h

-- vars
    -- touches
    tx, ty = 0, 0
    touch = false
    
    -- cam
    editorOffSetX, editorOffSetY = 0, 0

    -- put blocks in grade
    centerX, centerY = 0, 0
    rotate = 0
    blockTexture = 1
    blockId = 1
    
    --modes
    deleteBlock = false
    editBlock = false

    -- cut function
    cutx, cuty, cutw, cuth = 0, 0, 0, 0

-- commands
    -- deafult filter
    love.graphics.setDefaultFilter('nearest', 'nearest')
end

function love.draw()
    information.draw()
    utilities.draw()
    buttons.draw()
    --dbug.draw()
end

function love.update(dt)
    utilities.update()
    buttons.update()
end

function love.touchpressed(id, x , y, dx, dy)
    utilities.touchpressed()
end

function love.touchmoved(id, x, y, dx ,dy)
    utilities.touchmoved()
end

function love.touchreleased(id, x, y, dx, dy)
    utilities.touchreleased()
end

-- orientation to object
function checkRadius(x, y, w, h, r)
    if r == 1.57 then
        x = x + w
    end
    if r == 3.14 then
        x = x + w
        y = y + h
    end
    if r == 4.71 then
        y = y + h
    end
    return x, y
end

function getBlockAt(x, y)
    for i, block in ipairs(blocks) do
        if block.x == x then
            if block.y == y then
                for i, Block in ipairs(blocks) do
                    Block.isSelected = false
                end
                block.isSelected = true
                return i
            end
        end
    end
end

function createBlocks(x, y, id, r) 
    block = {}
    block.x = x
    block.y = y
    block.id = id
    block.rotate = r
    block.isSelected = false
    table.insert(blocks, block)
end

function removeBlock(x, y)
    for i, block in ipairs(blocks) do
        if block.x == x then
            if block.y == y then
                table.insert(trash, 1, blocks[i])
                table.remove(blocks, i)
            end
        end
    end
end

function isTouchOnButton(touchx, touchy, button)
    local tx, ty = touchx, touchy
    if button.x <= tx and button.x + button.w >= tx and button.y <= ty and button.y + button.h >= ty then
        return true
    else
        return false
    end
end
