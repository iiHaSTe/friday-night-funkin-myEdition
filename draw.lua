return function ()
  love.graphics.scale(.8)
  
  -- enime
  for k, i in pairs(EmptyArrowSpriteQuad) do
    love.graphics.draw(AllArrowSpriteSheet, i, 10+(57*k), 30)
  end
  
  for k, i in pairs(EmptyArrowSpriteQuad) do
    love.graphics.draw(AllArrowSpriteSheet, i, (width()-170)+(57*k), 50)
  end
  for _, arrow in pairs(arrows) do
    arrow:draw()
  end
end