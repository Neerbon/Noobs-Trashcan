function love.load()

  myfont = love.graphics.newFont("font.ttf", 60)
  love.graphics.setBackgroundColor(30/255, 144/255, 255/255, a)
  mousex = love.mouse.getX()
  mousey = love.mouse.getY()
  circlex = love.math.random(1, 600)
  circley = love.math.random(1, 400)
  csize = 50
  score = 0
  time = 0

end

function love.update(dt)

  mousex = love.mouse.getX()
  mousey = love.mouse.getY()

  time = time + dt

end

function love.draw()

  love.graphics.setColor(255/255, 255/255, 255/255, alpha)
  love.graphics.setFont(myfont)
  love.graphics.print(math.floor( time ))
  love.graphics.print(score, 200, 00, r, sx, sy, ox, oy, kx, ky)

  love.graphics.setColor(255/255, 191/255, 0/255, alpha)
  love.graphics.circle("fill", circlex, circley, csize, 100)

end

function love.mousepressed(x, y, button, isTouch)
  if button == 1 then
    if distanceFrom(circlex, circley, mousex, mousey) < csize then

    circlex = love.math.random(1, 600)
    circley = love.math.random(1, 400)
    score = score + 1

   end
  end
end

function distanceFrom(x1,y1,x2,y2)
return math.sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2)
end
