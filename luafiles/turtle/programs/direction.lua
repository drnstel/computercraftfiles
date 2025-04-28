function nameCall(arg)
    local var = tonumber(arg)
    
    local itemData = turtle.getItemDetail(var)
    
    if itemData == nil then
        itemData = false
    else
        itemData = itemData.name
    end

    return itemData
end

function findBlock()
    
    local selectable = 1
    local name = ""
    
    while name ~= "minecraft:carved_pumpkin" do
        ::continue::

        name = nameCall(selectable)
                     
        if selectable == 16 then
            print("Directional Block not found! Exiting.")
            return "Not Found"
        end
        
        if name ~= "minecraft:carved_pumpkin" then
            selectable = selectable + 1
            goto continue
        end
    end

    print("Directional Block found!")

    return "Found", selectable
end

function placeAndDetermine()
    local is_block, item = turtle.inspect()

    local check, value = findBlock()

    if check == "Found" then
        if is_block == true then
            turtle.turnLeft()
            turtle.turnLeft()
        end

        turtle.place(value)
    end
end

