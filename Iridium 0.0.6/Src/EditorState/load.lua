Load = {}

function Load.load()
    -- tiles
    tilePath = {}
    tiles = {}
    
    -- map
    maps = {}
    block = {}

    -- trash
    trash = {}

-- cmds
    maps = json.decode(love.filesystem.read('Maps/' .. editorState.mapId .. '/map.json'))
    
-- load tiles
    tilePath = love.filesystem.getDirectoryItems('Maps/' .. editorState.mapId .. '/Tiles')
    
    if #tilePath > 0 then
        for tile = 1, #tilePath, 1 do
            table.insert(tiles, love.graphics.newImage('Maps/' .. editorState.mapId .. '/Tiles/' .. tilePath[tile]))
        end
    else
        table.insert(tiles, love.graphics.newImage('Rsrc/NotTexture.png'))
    end
end

return Load