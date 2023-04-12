editorState = {}
editorState.mapId = ""

function editorState:enter()
-- sources
    buttonsEditorState = require 'Src/Btns/buttons_editor_state'
    info = require 'Src/EditorState/info'
    utilities = require 'Src/EditorState/utilities'
    Load = require 'Src/EditorState/load'
    
-- orietation
    buttonsEditorState.load()
    utilities.load()
    Load.load()

-- tables
    -- screen
    screen = {}
    screen.x, screen.y = buttonRight.x + buttonRight.w, buttonB.y + buttonB.h
    
end

function editorState:draw()
    utilities.draw()
    info.draw()
    buttonsEditorState.draw()
end

function editorState:update(dt)
    buttonsEditorState.update()
    utilities.update()
end

function editorState:touchpressed()
    utilities.touchpressed()
end

-- functions
function createBlocks(textureId, x, y)
    block = {
        textureId = textureId,
        x = x,
        y = y
    }

    table.insert(maps.blocks, block)
end

function deleteBlock(x, y)
    for i, block in ipairs(maps.blocks) do
        if x == block.x and y == block.y then
            table.insert(trash, 1, maps.blocks[i])
            table.remove(maps.blocks, i)
        end
    end
end

return editorState