return function (dt)
  if status == 'stopped' then
    timer = timer - dt
    if timer < 0 then
      status = 'running'
    end
  else
    mapping()
  end
  
  scoreLabel:setText("score: "..score)
  
  for _, arrow in pairs(arrows) do
    arrow:update(dt)
  end
end