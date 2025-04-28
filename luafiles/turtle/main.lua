local arg = ""
 
rednet.open("left")

while true do
    local sender, message, protocol = rednet.receive()

    if message == "tunnel" then
        print("tunnel recieved")
        local tunnelLength = rednet.receive(6)
        print(tunnelLength)
        shell.run("/programs/tunnel.lua", tunnelLength)
    end
    
    if message == "refuel" then
        turtle.select(1)
        turtle.refuel()
    end
end