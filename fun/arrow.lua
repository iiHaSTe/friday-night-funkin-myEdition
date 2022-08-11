

function newArrow(x, y, index, quad, id)
  local dir = {
    "left",
    "down",
    "up",
    "right"
  }
  self = {
    ["x"] = x,
    ["y"] = y,
    ["quad"] = quad[index],
    ["id"] = id,
    ["speed"] = 3,
    ["autoPlay"] = false,
    ["dir"] = dir[index]
  }
  
  function self:update(dt)
    --math.randomseed(os.time())
    if (self.y < 0) then
      table.removekey(arrows, self.id)
    end
    if (self.x >= 60) and (self.x <= 67*4) then
      if self.y <= 30 then
        table.removekey(arrows, self.id)
      end
    end
    if self.autoPlay then
      self:arrowClick()
    end
    self.y = self.y - self.speed
  end
  
  function self:arrowClick()
    if (self.x >= ((width()-170)+57)) and (self.x <= ((width()-170)+(57*4))) then
      if (self.y >= 10) and (self.y+55 <= 50+55) then
        table.removekey(arrows, self.id)
        score = score + math.random(100, 200)
      end
    end
  end
  
  function self:draw()
    love.graphics.draw(AllArrowSpriteSheet, self.quad, self.x, self.y)
  end
  
  return self
end

return newArrow