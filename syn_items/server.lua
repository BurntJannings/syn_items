--[[ Credits by synTM ]]-- ! Don't Edit this Disclaimer !

local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

Citizen.CreateThread(function()

    Citizen.Wait(1000)

--Native Stuff

VorpInv.RegisterUsableItem("Dynamite", function(data) --change name to item
    VorpInv.subItem(data.source, "Dynamite", 1) --change name to item
    TriggerClientEvent("vorp:TipRight", data.source, "You are placing a dynamite charge", 3000)
    TriggerClientEvent("syn:explosives", data.source)
end)

VorpInv.RegisterUsableItem("tribalshield", function(data) --change name to item
    VorpInv.subItem(data.source, "tribalshield", 1) --change name to item
    TriggerClientEvent("vorp:TipRight", data.source, "You are placing a Tribal Shield", 3000)
    TriggerClientEvent("syn:tribalshield", data.source)
end)

VorpInv.RegisterUsableItem("woodtotem", function(data) --change name to item
    VorpInv.subItem(data.source, "woodtotem", 1) --change name to item
    TriggerClientEvent("vorp:TipRight", data.source, "You are placing a Wood Totem", 3000)
    TriggerClientEvent("syn:woodtotem", data.source)
end)

VorpInv.RegisterUsableItem("stonetotem", function(data) --change name to item
    VorpInv.subItem(data.source, "stonetotem", 1) --change name to item
    TriggerClientEvent("vorp:TipRight", data.source, "You are placing a Stone Totem", 3000)
    TriggerClientEvent("syn:stonetotem", data.source)
end)

VorpInv.RegisterUsableItem("featherstaff", function(data) --change name to item
    VorpInv.subItem(data.source, "featherstaff", 1) --change name to item
    TriggerClientEvent("vorp:TipRight", data.source, "You are placing a Stone Totem", 3000)
    TriggerClientEvent("syn:featherstaff", data.source)
end)

VorpInv.RegisterUsableItem("buffaloskull", function(data) --change name to item
    VorpInv.subItem(data.source, "buffaloskull", 1) --change name to item
    TriggerClientEvent("vorp:TipRight", data.source, "You are placing a Buffalo Skull", 3000)
    TriggerClientEvent("syn:buffaloskull", data.source)
end)

VorpInv.RegisterUsableItem("wapitipot", function(data) --change name to item
    VorpInv.subItem(data.source, "wapitipot", 1) --change name to item
    TriggerClientEvent("vorp:TipRight", data.source, "You are placing a Native Pot", 3000)
    TriggerClientEvent("syn:wapitipot", data.source)
end)

VorpInv.RegisterUsableItem("wapitivase", function(data) --change name to item
    VorpInv.subItem(data.source, "wapitivase", 1) --change name to item
    TriggerClientEvent("vorp:TipRight", data.source, "You are placing a Native Vase", 3000)
    TriggerClientEvent("syn:wapitivase", data.source)
end)

VorpInv.RegisterUsableItem("wapitibed", function(data) --change name to item
    VorpInv.subItem(data.source, "wapitibed", 1) --change name to item
    TriggerClientEvent("vorp:TipRight", data.source, "You are placing a Native Bed", 3000)
    TriggerClientEvent("syn:wapitibed", data.source)
end)

VorpInv.RegisterUsableItem("wapititeepee", function(data) --change name to item
    VorpInv.subItem(data.source, "wapititeepee", 1) --change name to item
    TriggerClientEvent("vorp:TipRight", data.source, "You are placing a Native Teepee", 3000)
    TriggerClientEvent("syn:wapititeepee", data.source)
end)

    VorpInv.RegisterUsableItem("campfire", function(data) --change name to item
        VorpInv.subItem(data.source, "campfire", 1) --change name to item
        TriggerClientEvent("vorp:TipRight", data.source, "You are placing a campfire", 3000)
        TriggerClientEvent("syn:campfire", data.source)
    end)

    VorpInv.RegisterUsableItem("Milk_Box", function(data)--change name to box item
        VorpInv.subItem(data.source, "Milk_Box", 1)--change name to box item
        VorpInv.addItem(data.source, "milk", 25)--change name to item
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Egg_Box", function(data)
        VorpInv.subItem(data.source, "Egg_Box", 1)
        VorpInv.addItem(data.source, "eggs", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("GameyMeat_Box", function(data)
        VorpInv.subItem(data.source, "GameyMeat_Box", 1)
        VorpInv.addItem(data.source, "Gamey_Meat", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Meat_Box", function(data)
        VorpInv.subItem(data.source, "Meat_Box", 1)
        VorpInv.addItem(data.source, "meat", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("BigLeather_Box", function(data)
        VorpInv.subItem(data.source, "BigLeather_Box", 1)
        VorpInv.addItem(data.source, "Big_Leather", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Copper_Box", function(data)
        VorpInv.subItem(data.source, "Copper_Box", 1)
        VorpInv.addItem(data.source, "copper", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Iron_Box", function(data)
        VorpInv.subItem(data.source, "Iron_Box", 1)
        VorpInv.addItem(data.source, "iron", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Nitrite_Box", function(data)
        VorpInv.subItem(data.source, "Nitrite_Box", 1)
        VorpInv.addItem(data.source, "nitrite", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Coal_Box", function(data)
        VorpInv.subItem(data.source, "Coal_Box", 1)
        VorpInv.addItem(data.source, "coal", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 5000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("SmallLeather_Box", function(data)
        VorpInv.subItem(data.source, "SmallLeather_Box", 1)
        VorpInv.addItem(data.source, "Small_Leather", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Rock_Box", function(data)
        VorpInv.subItem(data.source, "Rock_Box", 1)
        VorpInv.addItem(data.source, "rock", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Wood_box", function(data)
        VorpInv.subItem(data.source, "Wood_box", 1)
        VorpInv.addItem(data.source, "wood", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Oregano_Box", function(data)
        VorpInv.subItem(data.source, "Oregano_Box", 1)
        VorpInv.addItem(data.source, "Oregano", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Bayleaf_Box", function(data)
        VorpInv.subItem(data.source, "Bayleaf_Box", 1)
        VorpInv.addItem(data.source, "Bayleaf", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Ginseng_Box", function(data)
        VorpInv.subItem(data.source, "Ginseng_Box", 1)
        VorpInv.addItem(data.source, "Ginseng", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Blackberries_Box", function(data)
        VorpInv.subItem(data.source, "Blackberries_Box", 1)
        VorpInv.addItem(data.source, "Blackberries", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Bitterweed_Box", function(data)
        VorpInv.subItem(data.source, "Bitterweed_Box", 1)
        VorpInv.addItem(data.source, "Bitterweed", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Lettuce_Box", function(data)
        VorpInv.subItem(data.source, "Lettuce_Box", 1)
        VorpInv.addItem(data.source, "Lettuce", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Poppy_Box", function(data)
        VorpInv.subItem(data.source, "Poppy_Box", 1)
        VorpInv.addItem(data.source, "Poppies", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Onion_Box", function(data)
        VorpInv.subItem(data.source, "Onion_Box", 1)
        VorpInv.addItem(data.source, "Onions", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Tomatoe_Box", function(data)
        VorpInv.subItem(data.source, "Tomatoe_Box", 1)
        VorpInv.addItem(data.source, "Tomatoes", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Strawberries_Box", function(data)
        VorpInv.subItem(data.source, "Strawberries_Box", 1)
        VorpInv.addItem(data.source, "Strawberries", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Melon_Box", function(data)
        VorpInv.subItem(data.source, "Melon_Box", 1)
        VorpInv.addItem(data.source, "Melon", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Corn_Box", function(data)
        VorpInv.subItem(data.source, "Corn_Box", 1)
        VorpInv.addItem(data.source, "Corn", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Thyme_Box", function(data)
        VorpInv.subItem(data.source, "Thyme_Box", 1)
        VorpInv.addItem(data.source, "Thyme", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Cinnamon_Box", function(data)
        VorpInv.subItem(data.source, "Cinnamon_Box", 1)
        VorpInv.addItem(data.source, "Cinnamon", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Nutmeg_Box", function(data)
        VorpInv.subItem(data.source, "Nutmeg_Box", 1)
        VorpInv.addItem(data.source, "Nutmeg", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Apple_Box", function(data)
        VorpInv.subItem(data.source, "Apple_Box", 1)
        VorpInv.addItem(data.source, "apple", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Garlic_Box", function(data)
        VorpInv.subItem(data.source, "Garlic_Box", 1)
        VorpInv.addItem(data.source, "Garlic", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Blueberry_Box", function(data)
        VorpInv.subItem(data.source, "Blueberry_Box", 1)
        VorpInv.addItem(data.source, "Blueberries", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Tobacco_Box", function(data)
        VorpInv.subItem(data.source, "Tobacco_Box", 1)
        VorpInv.addItem(data.source, "Tobacco", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Rice_Box", function(data)
        VorpInv.subItem(data.source, "Rice_Box", 1)
        VorpInv.addItem(data.source, "Rice", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Mushroom_Box", function(data)
        VorpInv.subItem(data.source, "Mushroom_Box", 1)
        VorpInv.addItem(data.source, "Mushrooms", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Coco_Box", function(data)
        VorpInv.subItem(data.source, "Coco_Box", 1)
        VorpInv.addItem(data.source, "Coco", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Peach_Box", function(data)
        VorpInv.subItem(data.source, "Peach_Box", 1)
        VorpInv.addItem(data.source, "Peaches", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Raspberries_Box", function(data)
        VorpInv.subItem(data.source, "Raspberries_Box", 1)
        VorpInv.addItem(data.source, "Raspberries", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Sage_Box", function(data)
        VorpInv.subItem(data.source, "Sage_Box", 1)
        VorpInv.addItem(data.source, "Sage", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Wheat_Box", function(data)
        VorpInv.subItem(data.source, "Wheat_Box", 1)
        VorpInv.addItem(data.source, "Wheat", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Hemp_Box", function(data)
        VorpInv.subItem(data.source, "Hemp_Box", 1)
        VorpInv.addItem(data.source, "Hemp", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Carrot_Box", function(data)
        VorpInv.subItem(data.source, "Carrot_Box", 1)
        VorpInv.addItem(data.source, "Carrots", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Mint_Box", function(data)
        VorpInv.subItem(data.source, "Mint_Box", 1)
        VorpInv.addItem(data.source, "Mint", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Rhubarb_Box", function(data)
        VorpInv.subItem(data.source, "Rhubarb_Box", 1)
        VorpInv.addItem(data.source, "Rhubarb ", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Potatoe_Box", function(data)
        VorpInv.subItem(data.source, "Potatoe_Box", 1)
        VorpInv.addItem(data.source, "Potatoe", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Water_Box", function(data)
        VorpInv.subItem(data.source, "Water_Box", 1)
        VorpInv.addItem(data.source, "water", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Fish_Box", function(data)
        VorpInv.subItem(data.source, "Fish_Box", 1)
        VorpInv.addItem(data.source, "fish", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Cheese_Box", function(data)
        VorpInv.subItem(data.source, "Cheese_Box", 1)
        VorpInv.addItem(data.source, "Cheese", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Coffee_Box", function(data)
        VorpInv.subItem(data.source, "Coffee_Box", 1)
        VorpInv.addItem(data.source, "Coffee", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Sugar_Box", function(data)
        VorpInv.subItem(data.source, "Sugar_Box", 1)
        VorpInv.addItem(data.source, "sugar", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Clay_Box", function(data)
        VorpInv.subItem(data.source, "Clay_Box", 1)
        VorpInv.addItem(data.source, "clay", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    VorpInv.RegisterUsableItem("Bottle_Box", function(data)
        VorpInv.subItem(data.source, "Bottle_Box", 1)
        VorpInv.addItem(data.source, "glassbottle", 25)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
----Mass Production Boxes


    VorpInv.RegisterUsableItem("Boxed_Fruit", function(data)
        VorpInv.subItem(data.source, "Boxed_Fruit", 1)
        VorpInv.addItem(data.source, "Fuit Salad", 3)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_StPot", function(data)
        VorpInv.subItem(data.source, "Boxed_StPot", 1)
        VorpInv.addItem(data.source, "steak and potatos", 2)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Breakfast", function(data)
        VorpInv.subItem(data.source, "Boxed_Breakfast", 1)
        VorpInv.addItem(data.source, "Breakfast", 2)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Sand", function(data)
        VorpInv.subItem(data.source, "Boxed_Sand", 1)
        VorpInv.addItem(data.source, "Sandwich", 3)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_RFish", function(data)
        VorpInv.subItem(data.source, "Boxed_RFish", 1)
        VorpInv.addItem(data.source, "Rice and Fish", 2)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_FSand", function(data)
        VorpInv.subItem(data.source, "Boxed_FSand", 1)
        VorpInv.addItem(data.source, "Fish Sandwich", 3)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Dinners", function(data)
        VorpInv.subItem(data.source, "Boxed_Dinners", 1)
        VorpInv.addItem(data.source, "Complete Dinner", 2)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Surf", function(data)
        VorpInv.subItem(data.source, "Boxed_Surf", 1)
        VorpInv.addItem(data.source, "Surf And Turf", 2)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Coffeedrink", function(data)
        VorpInv.subItem(data.source, "Boxed_Coffeedrink", 1)
        VorpInv.addItem(data.source, "coffee", 3)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Bwater", function(data)
        VorpInv.subItem(data.source, "Boxed_Bwater", 1)
        VorpInv.addItem(data.source, "Blackberry Water", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Mwater", function(data)
        VorpInv.subItem(data.source, "Boxed_Mwater", 1)
        VorpInv.addItem(data.source, "Mellon Water", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Rwater", function(data)
        VorpInv.subItem(data.source, "Boxed_Rwater", 1)
        VorpInv.addItem(data.source, "Raspberry Water", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Blwater", function(data)
        VorpInv.subItem(data.source, "Boxed_Blwater", 1)
        VorpInv.addItem(data.source, "BlueBerry Water", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Gtea", function(data)
        VorpInv.subItem(data.source, "Boxed_Gtea", 1)
        VorpInv.addItem(data.source, "Ginseng Tea", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Htea", function(data)
        VorpInv.subItem(data.source, "Boxed_Htea", 1)
        VorpInv.addItem(data.source, "Herbal Tea", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Vsoup", function(data)
        VorpInv.subItem(data.source, "Boxed_Vsoup", 1)
        VorpInv.addItem(data.source, "Vegetable Soup", 3)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Chili", function(data)
        VorpInv.subItem(data.source, "Boxed_Chili", 1)
        VorpInv.addItem(data.source, "Chili", 3)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Ghoulash", function(data)
        VorpInv.subItem(data.source, "Boxed_Ghoulash", 1)
        VorpInv.addItem(data.source, "Ghoulash", 3)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Mballs", function(data)
        VorpInv.subItem(data.source, "Boxed_Mballs", 1)
        VorpInv.addItem(data.source, "Meat Balls", 6)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Rpies", function(data)
        VorpInv.subItem(data.source, "Boxed_Rpies", 1)
        VorpInv.addItem(data.source, "Raspberry Pie", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Boxed_Bpies", function(data)
        VorpInv.subItem(data.source, "Boxed_Bpies", 1)
        VorpInv.addItem(data.source, "Blackberry Pie", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)

    VorpInv.RegisterUsableItem("Water_Box", function(data)
        VorpInv.subItem(data.source, "Water_Box", 1)
        VorpInv.addItem(data.source, "Water", 2)
        TriggerClientEvent("vorp:TipRight", data.source, "You broke open the box", 3000)
        TriggerClientEvent("syn:box", data.source)
    end)
    ----End Mass Production



        VorpInv.RegisterUsableItem("a_c_fishbluegil_01_ms", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishbluegil_01_ms")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishbluegil_01_ms", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishbluegil_01_sm", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishbluegil_01_sm")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishbluegil_01_sm", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishbullheadcat_01_ms", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishbullheadcat_01_ms")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishbullheadcat_01_ms", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishbullheadcat_01_sm", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishbullheadcat_01_sm")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishbullheadcat_01_sm", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishchainpickerel_01_ms", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishchainpickerel_01_ms")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishchainpickerel_01_ms", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)

	VorpInv.RegisterUsableItem("a_c_fishchainpickerel_01_sm", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishchainpickerel_01_sm")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishchainpickerel_01_sm", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishlargemouthbass_01_ms", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishlargemouthbass_01_ms")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishlargemouthbass_01_ms", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishperch_01_ms", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishperch_01_ms")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishperch_01_ms", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishperch_01_sm", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishperch_01_sm")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishperch_01_sm", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishrainbowtrout_01_ms", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishrainbowtrout_01_ms")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishrainbowtrout_01_ms", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishredfinpickerel_01_ms", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishredfinpickerel_01_ms")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishredfinpickerel_01_ms", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)

VorpInv.RegisterUsableItem("a_c_fishredfinpickerel_01_sm", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishredfinpickerel_01_sm")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishredfinpickerel_01_sm", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishrockbass_01_ms", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishrockbass_01_ms")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishrockbass_01_ms", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishrockbass_01_sm", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishrockbass_01_sm")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishrockbass_01_sm", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)

VorpInv.RegisterUsableItem("a_c_fishsalmonsockeye_01_ms", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishsalmonsockeye_01_ms")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishsalmonsockeye_01_ms", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)
		
		VorpInv.RegisterUsableItem("a_c_fishsmallmouthbass_01_ms", function(data)
            local count = VorpInv.getItemCount(data.source, "a_c_fishsmallmouthbass_01_ms")
             if count ~= 0 and data.source ~= nil then
                  
                VorpInv.subItem(data.source, "a_c_fishsmallmouthbass_01_ms", 1)
                VorpInv.addItem(data.source, "fish", 1)
                TriggerClientEvent("vorp:TipRight", data.source, "You're skinning a fish", 5000)
                TriggerClientEvent("syn:skinfish", data.source)
            end
        end)

    VorpInv.RegisterUsableItem("tent", function(data)
        VorpInv.subItem(data.source, "tent", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You're placing a tent", 5000)
        TriggerClientEvent("syn:tent", data.source)
    end)

    VorpInv.RegisterUsableItem("Barrel", function(data)
        VorpInv.subItem(data.source, "Barrel", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You're placing a barrel", 5000)
        TriggerClientEvent("syn:barrel", data.source)
    end)

    VorpInv.RegisterUsableItem("Stewpot", function(data)
        VorpInv.subItem(data.source, "Stewpot", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You're placing a Stew Pot", 5000)
        TriggerClientEvent("syn:stew", data.source)
    end)

    VorpInv.RegisterUsableItem("Oven", function(data)
        VorpInv.subItem(data.source, "Oven", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You're placing a Oven", 5000)
        TriggerClientEvent("syn:oven", data.source)
    end)

    VorpInv.RegisterUsableItem("Morter_Pestal", function(data)
        VorpInv.subItem(data.source, "Morter_Pestal", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You're placing a Grinder", 5000)
        TriggerClientEvent("syn:grinder", data.source)
    end)

    VorpInv.RegisterUsableItem("Chair", function(data)
        VorpInv.subItem(data.source, "Chair", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You're placing a Chair", 5000)
        TriggerClientEvent("syn:chair", data.source)
    end)

    VorpInv.RegisterUsableItem("pipe", function(data)
        VorpInv.subItem(data.source, "Indian_Tobbaco", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You are smoking a pipe", 5000)
        TriggerClientEvent("syn:pipe", data.source)
    end)

    VorpInv.RegisterUsableItem("CocainePage6", function(data)
        local count = VorpInv.getItemCount(data.source, "CocainePage1")
        local count2 = VorpInv.getItemCount(data.source, "CocainePage2")
        local count3 = VorpInv.getItemCount(data.source, "CocainePage3")
        local count4 = VorpInv.getItemCount(data.source, "CocainePage4")
        local count5 = VorpInv.getItemCount(data.source, "CocainePage5")
        local count6 = VorpInv.getItemCount(data.source, "CocainePage6")

		 if count ~= 0 and count2 ~= 0 and count3 ~= 0 and count4 ~= 0 and count5 ~= 0 and count6 ~= 0 then
        if data.source ~= nil then          
            VorpInv.subItem(data.source, "CocainePage1", 1)
            VorpInv.subItem(data.source, "CocainePage2", 1)
            VorpInv.subItem(data.source, "CocainePage3", 1)
            VorpInv.subItem(data.source, "CocainePage4", 1)
            VorpInv.subItem(data.source, "CocainePage5", 1)
            VorpInv.subItem(data.source, "CocainePage6", 1)
			VorpInv.addItem(data.source, "Cocaine_Book", 1)
			 TriggerClientEvent("vorp:TipBottom", data.source, 'Book Created!', 4500)
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'Please Try again!', 4500)
            end 
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'You missed Items!', 4500)
        end      
    end)

    VorpInv.RegisterUsableItem("MoonshinePage6", function(data)
        local count = VorpInv.getItemCount(data.source, "MoonshinePage1")
        local count2 = VorpInv.getItemCount(data.source, "MoonshinePage2")
        local count3 = VorpInv.getItemCount(data.source, "MoonshinePage3")
        local count4 = VorpInv.getItemCount(data.source, "MoonshinePage4")
        local count5 = VorpInv.getItemCount(data.source, "MoonshinePage5")
        local count6 = VorpInv.getItemCount(data.source, "MoonshinePage6")

		 if count ~= 0 and count2 ~= 0 and count3 ~= 0 and count4 ~= 0 and count5 ~= 0 and count6 ~= 0 then
        if data.source ~= nil then          
            VorpInv.subItem(data.source, "MoonshinePage1", 1)
            VorpInv.subItem(data.source, "MoonshinePage2", 1)
            VorpInv.subItem(data.source, "MoonshinePage3", 1)
            VorpInv.subItem(data.source, "MoonshinePage4", 1)
            VorpInv.subItem(data.source, "MoonshinePage5", 1)
            VorpInv.subItem(data.source, "MoonshinePage6", 1)
			VorpInv.addItem(data.source, "Shine_Book", 1)
			 TriggerClientEvent("vorp:TipBottom", data.source, 'Book Created!', 4500)
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'Please Try again!', 4500)
            end 
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'You missed Items!', 4500)
        end      
    end)

VorpInv.RegisterUsableItem("OvenPage4", function(data)
        local count = VorpInv.getItemCount(data.source, "OvenPage1")
        local count2 = VorpInv.getItemCount(data.source, "OvenPage2")
        local count3 = VorpInv.getItemCount(data.source, "OvenPage3")
        local count4 = VorpInv.getItemCount(data.source, "OvenPage4")
		 if count ~= 0 and count2 ~= 0 and count3 ~= 0 and count4 ~= 0 then
        if data.source ~= nil then          
            VorpInv.subItem(data.source, "OvenPage1", 1)
            VorpInv.subItem(data.source, "OvenPage2", 1)
            VorpInv.subItem(data.source, "OvenPage3", 1)
            VorpInv.subItem(data.source, "OvenPage4", 1)
			VorpInv.addItem(data.source, "Oven_Book", 1)
			 TriggerClientEvent("vorp:TipBottom", data.source, 'Book Created!', 4500)
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'Please Try again!', 4500)
            end 
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'You missed Items!', 4500)
        end      
    end)
 
 VorpInv.RegisterUsableItem("StewPage4", function(data)
        local count = VorpInv.getItemCount(data.source, "StewPage1")
        local count2 = VorpInv.getItemCount(data.source, "StewPage2")
        local count3 = VorpInv.getItemCount(data.source, "StewPage3")
        local count4 = VorpInv.getItemCount(data.source, "StewPage4")
		 if count ~= 0 and count2 ~= 0 and count3 ~= 0 and count4 ~= 0 then
        if data.source ~= nil then          
            VorpInv.subItem(data.source, "StewPage1", 1)
            VorpInv.subItem(data.source, "StewPage2", 1)
            VorpInv.subItem(data.source, "StewPage3", 1)
            VorpInv.subItem(data.source, "StewPage4", 1)
			VorpInv.addItem(data.source, "Pot_Book", 1)
			 TriggerClientEvent("vorp:TipBottom", data.source, 'Book Created!', 4500)
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'Please Try again!', 4500)
            end 
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'You missed Items!', 4500)
        end      
    end)

VorpInv.RegisterUsableItem("StewPage4", function(data)
        local count = VorpInv.getItemCount(data.source, "StewPage1")
        local count2 = VorpInv.getItemCount(data.source, "StewPage2")
        local count3 = VorpInv.getItemCount(data.source, "StewPage3")
        local count4 = VorpInv.getItemCount(data.source, "StewPage4")
		 if count ~= 0 and count2 ~= 0 and count3 ~= 0 and count4 ~= 0 then
        if data.source ~= nil then          
            VorpInv.subItem(data.source, "StewPage1", 1)
            VorpInv.subItem(data.source, "StewPage2", 1)
            VorpInv.subItem(data.source, "StewPage3", 1)
            VorpInv.subItem(data.source, "StewPage4", 1)
			VorpInv.addItem(data.source, "Pot_Book", 1)
			 TriggerClientEvent("vorp:TipBottom", data.source, 'Book Created!', 4500)
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'Please Try again!', 4500)
            end 
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'You missed Items!', 4500)
        end      
    end)
	
	VorpInv.RegisterUsableItem("GrillPage4", function(data)
        local count = VorpInv.getItemCount(data.source, "GrillPage1")
        local count2 = VorpInv.getItemCount(data.source, "GrillPage2")
        local count3 = VorpInv.getItemCount(data.source, "GrillPage3")
        local count4 = VorpInv.getItemCount(data.source, "GrillPage4")
		 if count ~= 0 and count2 ~= 0 and count3 ~= 0 and count4 ~= 0 then
        if data.source ~= nil then          
            VorpInv.subItem(data.source, "GrillPage1", 1)
            VorpInv.subItem(data.source, "GrillPage2", 1)
            VorpInv.subItem(data.source, "GrillPage3", 1)
            VorpInv.subItem(data.source, "GrillPage4", 1)
			VorpInv.addItem(data.source, "Grill_Book", 1)
			 TriggerClientEvent("vorp:TipBottom", data.source, 'Book Created!', 4500)
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'Please Try again!', 4500)
            end 
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'You missed Items!', 4500)
        end      
    end)

    VorpInv.RegisterUsableItem("carcano_blueprint", function(data)
        local count = VorpInv.getItemCount(data.source, "carcano_blueprint")
        local count2 = VorpInv.getItemCount(data.source, "Scope")
        local count3 = VorpInv.getItemCount(data.source, "carcano_upper")
        local count4 = VorpInv.getItemCount(data.source, "weapon_lower")
        local ammoList = {
        ["AMMO_RIFLE"] = 100
        }
        local compsList = {
            ["scope"] = 161409167
            }
            
        if count ~= 0 and count2 ~= 0 and count3 ~= 0 and count4 ~= 0 then
        if data.source ~= nil then          
            VorpInv.subItem(data.source, "carcano_blueprint", 1)
            VorpInv.subItem(data.source, "Scope", 1)
            VorpInv.subItem(data.source, "carcano_upper", 1)
            VorpInv.subItem(data.source, "weapon_lower", 1)
    
            TriggerClientEvent("progressbar:start", data.source) -- Add here Progressbar if you need
            Wait(20000)                                      -- Add here Your Waiting Time if you need
    
            VorpInv.createWeapon(data.source, "WEAPON_SNIPERRIFLE_CARCANO", ammoList, compsList)
    
            TriggerClientEvent("vorp:TipBottom", data.source, 'Weapon Created!', 4500)
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'Please Try again!', 4500)
            end 
            else
            TriggerClientEvent("vorp:TipBottom", data.source, 'You missed Items!', 4500)
        end      
    end)

VorpInv.RegisterUsableItem("Doctor_Bag", function(data)
    VorpInv.subItem(data.source, "Doctor_Bag", 1)
    TriggerClientEvent("vorp:TipRight", data.source, "You're placing a Doctor's Satchel", 5000)
    TriggerClientEvent("syn:bag", data.source)
end)

RegisterNetEvent("syn:additem")
AddEventHandler("syn:additem", function(item)
    local _source = source
    VorpInv.addItem(source, item, 1)
end)

    RegisterNetEvent("syn:checkitem")
    AddEventHandler("syn:checkitem", function(item)
    local _source = source
    local count = VorpInv.getItemCount(source, item)
    if count >= 0 then
        TriggerServerEvent("syn:additem")
        end
    end)
end)
