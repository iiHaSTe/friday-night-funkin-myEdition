module = {}

function module:spawnArrow(dir, t)
  local dirs = {
    ["left"] = {1, (width()-170)+57},
    ["down"] = {2, (width()-170)+(57*2)},
    ["up"] = {3, (width()-170)+(57*3)},
    ["right"] = {4, (width()-170)+(57*4)}
  }
  local id = uuid()
  arrows[id] = newArrow(
    dirs[dir][2], 500, dirs[dir][1],
    ArrowSpriteQuad,
    id
  )
end

function module:spawnAnimeArrow(dir)
  local dirs = {
    ["left"] = {1, 10+57},
    ["up"] = {2, 10+(57*2)},
    ["down"] = {3, 10+(57*3)},
    ["right"] = {4, 10+(57*4)}
  }
  local id = uuid()
  arrows[id] = newArrow(
    dirs[dir][2], 500, dirs[dir][1],
    ArrowSpriteQuad,
    id
  )
end

return module