directory = {}
function directory.load()
-- vars
    mapFileExiste = love.filesystem.getInfo("map.json")
    tilesPathExiste = love.filesystem.getInfo("Tiles")

-- create archive
    if mapFileExiste == nil then
        arquivoMapa = love.filesystem.newFile("map.json", "w")
        arquivoMapa:write(saveLib.encode(blocks))
        arquivoMapa:close()
    end

    if mapFileExiste ~= nil then
        blocks = saveLib.decode(love.filesystem.read("map.json"))
    end
-- create paths and create itens
    
    if tilesPathExiste == nil then
        tilePath = love.filesystem.createDirectory("Tiles")
    end

    tiles = love.filesystem.getDirectoryItems("Tiles")

    for tile = 1, #tiles, 1 do
        table.insert(blocksTexture, love.graphics.newImage("Tiles/" .. tiles[tile]))
    end
end

return directory
