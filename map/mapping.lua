return function ()
  local dirs = {"left", "down", "up", "right"}
  local layer = map.map[map.layer]
  if map.layer <= map.len then
    for key, value in pairs(layer[1]) do
      if value == 1 then
        spawner:spawnAnimeArrow(dirs[key])
      end
    end
    for key, value in pairs(layer[2]) do
      if value == 1 then
        spawner:spawnArrow(dirs[key])
      end
    end
  end
  timer = map.speed
  status = 'stopped'
  map.layer = map.layer + 1
end