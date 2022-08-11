
return function ()
  love.graphics.setBackgroundColor(1, 1, 1)
  
  score = 0
  health = .5
  
  newArrow = require "fun/arrow"
  map = require "map/map"
  
  status = 'stopped'
  timer = map.speed
  
  AllArrowSpriteSheet = love.graphics.newImage("assets/arrow.png")
  EmptyArrowSpriteQuad = {}
  ArrowSpriteQuad = {}
  
  local dw = 3
  for i = 0, 4 do
    table.insert(
      EmptyArrowSpriteQuad,
      love.graphics.newQuad(
        dw, 5,
        55,
        55,
        AllArrowSpriteSheet:getDimensions()
      )
    )
    dw = dw + 57
  end
  
  dw = 3
  for i = 0, 4 do
    table.insert(
      ArrowSpriteQuad,
      love.graphics.newQuad(
        dw, 75,
        55, 55,
        AllArrowSpriteSheet:getDimensions()
      )
    )
    dw = dw + 57
  end
  arrows = {}
end
