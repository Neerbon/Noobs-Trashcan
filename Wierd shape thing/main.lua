function love.load()
  love.graphics.setBackgroundColor(0/255,191/255,255/255)
  font = love.graphics.newFont("font.ttf", 25)
  csize = 0
end

function  love.update(dt)

  if love.keyboard.isDown("up") then
  csize = csize + 1
  end

  if love.keyboard.isDown("down") then
  csize = csize + -1
  end
end

function love.draw()

  love.graphics.setColor(255/255, 255/255, 76/255, alpha)
  love.graphics.circle("fill", 400, 300, csize)

  love.graphics.setFont(font)
  love.graphics.setColor(1, 0, 0, alpha)
  love.graphics.print(csize)
end
