rednet.open("left")
 
local function receiveValue(arg)
    local var
    
    term.write(arg)
    var = read()
    
    return var
end
    
 
while true do
    local event, character = os.pullEvent("char")
    
    
    if character == "t" then
        local tunnelVar = 0

        rednet.broadcast("tunnel")
        tunnelVar = receiveValue("Tunnel Value: ")
        rednet.broadcast(tunnelVar)    
    end
 
    if character == "m" then
        local movementDirection = ""

        rednet.broadcast("movement")
        movementDirection = recieveMovement("Direction: ")
    end
end