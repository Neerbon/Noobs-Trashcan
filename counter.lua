function love.mousepressed(x, y, button, isTouch)
  if button == 1 then
    if bc == 0 then
      bc = 1
    elseif bc == 1 then
      bc = 2
    elseif bc == 2 then
      bc = 3
    end
  end
end
