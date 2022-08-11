require "lib.gooi.gooi"

loveLoad = require "load"
loveUpdate = require "update"
loveDraw = require "draw"
spawner = require "fun/spawner"
mapping = require "map/mapping"
random = math.random

function love.load()
  loveLoad()
  
  require("gui")()
end

function love.update(dt)
  loveUpdate(dt)
  gooi.update(dt)
  sli1:setValue(health)
end

function love.draw()
  love.graphics.setColor(1, 1, 1)
  loveDraw()
  gooi.draw()
end

function love.mousereleased(x, y, button) gooi.released() end
function love.mousepressed(x, y, button)  gooi.pressed() end

function love.textinput(text)
  gooi.textinput(text)
end

function rgb(r, g, b)
  r = r or 0
  g = g or 0
  b = b or 0
  return {
    r/255,
    g/255,
    b/255
  }
end

function love.keypressed(key, scancode, isrepeat)
  gooi.keypressed(key, scancode, isrepeat)
  if key == "escape" then
    quit()
  end
end

function love.keyreleased(key, scancode)
  gooi.keyreleased(key, scancode)
end

function quit()
  love.event.quit()
end
function table.removekey(table, key)
  local element = table[key]
  table[key] = nil
  return element
end

function uuid()
  local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
  return string.gsub(template, '[xy]', function (c)
    local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
    return string.format('%x', v)
  end)
end

function len(t)
    local count = 0
    for i in pairs(t) do
        count = count + 1
    end
    return count
end

function width()
    return love.graphics.getWidth()
end

function height()
    return love.graphics.getHeight()
end