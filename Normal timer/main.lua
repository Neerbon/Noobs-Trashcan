function love.load()
  time = 0
  myfont = love.graphics.newFont("font.ttf", 60)
  fast = love.audio.newSource("Running.mp3", "stream")
  love.audio.setVolume(1)
end

function love.update(dt)

    time = time + dt

if love.keyboard.isDown("s")  then
time = time + 1
fast:play()
else
  fast:pause()
  end
end

function love.draw()
  love.graphics.setFont(myfont)
  love.graphics.setColor(255,255,255)
  love.graphics.print(math.floor( time ))
end
