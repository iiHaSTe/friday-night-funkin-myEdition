return function ()
  local dirs = {"left", "down", "up", "right"}
  local opacity = 1
  local colors = {
    {1, 1, 0, opacity},
    {0, 0, 1, opacity},
    {0, 1, 0, opacity},
    {1, 0, 0, opacity}
  }
  buttons = {}
  
  local d = width()/4
  local buttonX = 0
  
  scoreLabel = gooi.newLabel({
    x = width()/3,
    y = height()-70,
    text = score
  })
  :fg({0, 0, 0, 1})
  
  sli1 = gooi.newSlider({
    x = (width()/2)-((width()/2)/2),
    w = width()/2,
    h = 22,
    y = height()-30
  })
  :bg({0, 0, 1, 1})
  :fg({0, 0, 0, 1})
  
  
  for i=1, 4 do
    btn = gooi.newButton({
      text = '',
      x = buttonX,
      y = 0,
      w = d,
      h = height()
    })
    :bg(colors[i])
    :opacity(0.2)
    :onRelease(function()
      for _, arrow in pairs(arrows) do
        if arrow.dir == dirs[i] then
          arrow:arrowClick()
        end
      end
    end)
    buttonX = buttonX + d
    
    table.insert(buttons, btn)
  end
end