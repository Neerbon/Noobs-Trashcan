function love.load()
  love.graphics.setBackgroundColor(34/255,139/255,34/255)
  font = love.graphics.newFont("font.ttf", 25)
  csize = 0
  l = "fill"
end

function  love.update(dt)

  if love.keyboard.isDown("lshift") then
    l = "line"
  else
    l = "fill"
  end

  function love.wheelmoved(x, y)
    if y > 0 then
      csize = csize + 1

    elseif y < 0 then
      csize = csize -1
      if csize == -1 then
        csize = csize + 1
   end
 end
end

  if love.keyboard.isDown("up") then
  csize = csize + 1
  end

  if love.keyboard.isDown("down") then
  csize = csize -1
  if csize == -1 then
    csize = csize + 1
    end
  end
end

function love.draw()

  love.graphics.setColor(1,0,0,225/255)
  love.graphics.circle(l, 400, 300, csize)

  love.graphics.setFont(font)
  love.graphics.setColor(255/255, 255/255, 97/255)
  love.graphics.print(csize)
end
-- fin
