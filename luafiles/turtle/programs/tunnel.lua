local arg = ...
 
function dig()
    while turtle.detect() do
        turtle.dig()
        os.sleep(0.25)
    end

    turtle.forward()
    
    while turtle.detectDown() or turtle.detectUp() do
        turtle.digUp()
        turtle.digDown()
    end
end
 
local run = tonumber(arg)
 
for i = 1, run do
    dig()

    turtle.turnLeft()

    dig()

    turtle.turnRight()
    turtle.turnRight()
    turtle.forward()

    dig()

    turtle.turnLeft()
    turtle.turnLeft()
    turtle.forward()
    turtle.turnRight()
end
 
turtle.turnLeft()
turtle.turnLeft()

for i = 1, run do
    turtle.forward()
end