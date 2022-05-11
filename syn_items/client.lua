--[[ Credits by synTM ]]-- ! Don't Edit this Disclaimer !
oven = 1
bed = 1
bag = 1 
campfire = 1
grinder = 1
tent = 1
stewpot = 1

RegisterNetEvent('syn:tent')
RegisterNetEvent('syn:campfire')
RegisterNetEvent('syn:distille')
RegisterNetEvent('syn:box')
RegisterNetEvent('syn:pipe')
RegisterNetEvent('syn:stew')
RegisterNetEvent('syn:oven')
RegisterNetEvent('syn:grinder')
RegisterNetEvent('syn:chair')
RegisterNetEvent('syn:barrel')
RegisterNetEvent('syn:pipe')
RegisterNetEvent('syn:bed')
RegisterNetEvent('syn:bag')
RegisterNetEvent('syn:skinfish')
RegisterNetEvent('syn:tribalshield')
RegisterNetEvent('syn:woodtotem')
RegisterNetEvent('syn:stonetotem')
RegisterNetEvent('syn:featherstaff')
RegisterNetEvent('syn:buffaloskull')
RegisterNetEvent('syn:wapitipot')
RegisterNetEvent('syn:wapitibed')
RegisterNetEvent('syn:wapititeepee')
RegisterNetEvent('syn:wapitivase')
RegisterNetEvent('syn:explosives')

--[[ AddEventHandler("syn:coffee", function(source)

local _source = source

local propEntity = CreateObject(GetHashKey('p_mugCoffee01x'), GetEntityCoords(PlayerPedId()), false, true, false, false, true)
TaskItemInteraction_2(PlayerPedId(), -1199896558, propEntity, GetHashKey('p_mugCoffee01x_ph_r_hand'), GetHashKey('DRINK_COFFEE_HOLD'), 1, 0, -1.0)
Citizen.Wait(5000)
            TriggerEvent('srp:drink', 30)
            TriggerEvent('srp:eat', -5)
            Citizen.InvokeNative( 0xF6A7C08DF2E28B28, PlayerPedId(), 1, 1000.0, false )
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 25
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
	--end
end) ]]

--[[ AddEventHandler("syn:haycube", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        if SulCavallo then
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
               -- TaskAnimalInteraction(Ped, Cavallo, -224471938, true, true) --Animazione
                TaskAnimalInteraction(Ped, Cavallo, -224471938, GetHashKey("s_horsnack_haycube01x"), 0)
                TriggerEvent('syn:exp', Cavallo, 1000)
                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 15)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 15)
            
            --end
        else
        TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
            Citizen.Wait(1000)
                TriggerEvent('srp:eat', 15)
                TriggerEvent('srp:drink', -5)
                local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
                if number then
                print (number)
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
                else 
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
                end
                	
        --end
        
        end
end)
 ]]

--[[ RegisterNetEvent("syn:carrot")
AddEventHandler("syn:carrot", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        if SulCavallo then
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
                TaskAnimalInteraction(Ped, Cavallo, -224471938, GetHashKey("p_carrot02x"), 0) --Animazione
                
                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 30)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 30)
            
            --end
        else
        TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
            Citizen.Wait(1000)
                TriggerEvent('srp:eat', 25)
                TriggerEvent('srp:drink', -5)
                local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
                if number then
                print (number)
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
                else 
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
                end

        --end
        
        end
end) ]]

local status = false

AddEventHandler('syn:tent', function()
    if tent ~= 0 then
        SetEntityAsMissionEntity(tent)
        DeleteObject(tent)
        tent = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a tent...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("mp005_s_posse_tent_bountyhunter07x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    tent = prop
end)

AddEventHandler('syn:stew', function()
    if stewpot ~= 0 then
        SetEntityAsMissionEntity(stewpot)
        DeleteObject(stewpot)
        stewpot = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a Stew Pot...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("s_cul_cookfire01x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    stewpot = prop
end)

AddEventHandler('syn:oven', function()
    if oven ~= 0 then
        SetEntityAsMissionEntity(oven)
        DeleteObject(oven)
        oven = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 5000, true, false, false, false)
    exports['progressBars']:startUI(5000, "You're placing a Oven...")
    Citizen.Wait(5000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_furnace01x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    oven = prop

end)


AddEventHandler('syn:grinder', function()
    if grinder ~= 0 then
        SetEntityAsMissionEntity(grinder)
        DeleteObject(grinder)
        grinder = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a Grinder...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_coffeegrinder02x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    grinder = prop
end)

AddEventHandler('syn:chair', function()
    if chair ~= 0 then
        SetEntityAsMissionEntity(chair)
        DeleteObject(chair)
        chair = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a Chair...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_windsorchair03x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    chair = prop
end)

AddEventHandler('syn:barrel', function()
    if barrel ~= 0 then
        SetEntityAsMissionEntity(barrel)
        DeleteObject(barrel)
        barrel = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a barrel...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_boxcar_barrel_09a"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    barrel = prop
end)


AddEventHandler('syn:distille', function()
    if distillery ~= 0 then
        SetEntityAsMissionEntity(distillery)
        DeleteObject(distillery)
        distillery = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a distilley...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_still02x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    distillery = prop
end)

AddEventHandler('syn:campfire', function()

    if campfire ~= 0 then
        SetEntityAsMissionEntity(campfire)
        DeleteObject(campfire)
        campfire = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a campfire...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_campfire02x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    campfire = prop

end)

AddEventHandler('syn:bag', function()

    if bag ~= 0 then
        SetEntityAsMissionEntity(bag)
        DeleteObject(bag)
        bag = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a Doctor's Satchel...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_bag01x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    bag = prop

end)

AddEventHandler('syn:bed', function()

    if bed ~= 0 then
        SetEntityAsMissionEntity(bed)
        DeleteObject(bed)
        bed = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a Doctor's Bed...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("s_bedarthur01x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    bed = prop

end)

AddEventHandler('syn:explosives', function()

    if dynamite ~= 0 then
        SetEntityAsMissionEntity(dynamite)
        DeleteObject(dynamite)
        dynamite = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 5000, true, false, false, false)
    exports['progressBars']:startUI(5000, "You're placing Unstable Explosives...")
    Citizen.Wait(5000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.5, 0.0))
    local prop = CreateObject(GetHashKey("p_dynamite01x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    FreezeEntityPosition(prop,true)
    dynamite = prop

    Wait(5000)
    DeleteObject(prop)

end)

--Native Stuff

AddEventHandler('syn:tribalshield', function()

    if shield ~= 0 then
        SetEntityAsMissionEntity(shield)
        DeleteObject(shield)
        shield = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 3000, true, false, false, false)
    exports['progressBars']:startUI(3000, "You're placing a Tribal Shield...")
    Citizen.Wait(3000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_spookynative05x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    shield = prop

end)

AddEventHandler('syn:woodtotem', function()

    if woodtotem ~= 0 then
        SetEntityAsMissionEntity(woodtotem)
        DeleteObject(woodtotem)
        woodtotem = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 3000, true, false, false, false)
    exports['progressBars']:startUI(3000, "You're placing a Wood Totem...")
    Citizen.Wait(3000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_spookynative07x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    woodtotem = prop

end)

AddEventHandler('syn:stonetotem', function()

    if stonetotem ~= 0 then
        SetEntityAsMissionEntity(stonetotem)
        DeleteObject(stonetotem)
        stonetotem = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 3000, true, false, false, false)
    exports['progressBars']:startUI(3000, "You're placing a Stone Totem...")
    Citizen.Wait(3000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_spookynative02x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    stonetotem = prop

end)

AddEventHandler('syn:wapitipot', function()

    if wapitipot ~= 0 then
        SetEntityAsMissionEntity(wapitipot)
        DeleteObject(wapitipot)
        wapitipot = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 3000, true, false, false, false)
    exports['progressBars']:startUI(3000, "You're placing a Native Pot...")
    Citizen.Wait(3000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_potteryindian02x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    wapitipot = prop

end)

AddEventHandler('syn:wapitivase', function()

    if wapitivase ~= 0 then
        SetEntityAsMissionEntity(wapitivase)
        DeleteObject(wapitivase)
        wapitivase = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 3000, true, false, false, false)
    exports['progressBars']:startUI(3000, "You're placing a Native Vase...")
    Citizen.Wait(3000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_potteryindian03x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    wapitivase = prop

end)

AddEventHandler('syn:buffaloskull', function()

    if buffaloskull ~= 0 then
        SetEntityAsMissionEntity(buffaloskull)
        DeleteObject(buffaloskull)
        buffaloskull = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 3000, true, false, false, false)
    exports['progressBars']:startUI(3000, "You're placing a Buffalo Skull...")
    Citizen.Wait(3000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_spookynative11x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    buffaloskull = prop

end)

AddEventHandler('syn:featherstaff', function()

    if featherstaff ~= 0 then
        SetEntityAsMissionEntity(featherstaff)
        DeleteObject(featherstaff)
        featherstaff = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 3000, true, false, false, false)
    exports['progressBars']:startUI(3000, "You're placing a Feather Staff...")
    Citizen.Wait(3000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_staffindian01x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    featherstaff = prop

end)

AddEventHandler('syn:wapititeepee', function()

    if teepee ~= 0 then
        SetEntityAsMissionEntity(teepee)
        DeleteObject(teepee)
        teepee = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 3000, true, false, false, false)
    exports['progressBars']:startUI(3000, "You're placing a Native Teepee...")
    Citizen.Wait(3000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("s_wap_rainsfalls"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    teepee = prop

end)

AddEventHandler('syn:wapitibed', function()

    if bed ~= 0 then
        SetEntityAsMissionEntity(bed)
        DeleteObject(bed)
        bed = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 3000, true, false, false, false)
    exports['progressBars']:startUI(3000, "You're placing a Native Bed...")
    Citizen.Wait(3000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_bedindian02x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    bed = prop

end)

AddEventHandler('syn:pipe', function() 
Citizen.InvokeNative(0xB31A277C1AC7B7FF,PlayerPedId(),0,0,GetHashKey("KIT_EMOTE_ACTION_SMOKE_CIGARETTE_1"),1,1,0,0,0)  -- UPPER BODY EMOTE
    local smoke = true
    while smoke do
        Wait(5000)
        Citizen.InvokeNative( 0xF6A7C08DF2E28B28, PlayerPedId(), 0, 1000.0, false )
        PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
        smoke = false
    end
end)

AddEventHandler('syn:skinfish', function() 
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 5000, true, false, false, false)
    exports['progressBars']:startUI(5000, "You're filleting a fish...")
    SetCurrentPedWeapon(PlayerPedId(), "WEAPON_MELEE_KNIFE", true)
    Citizen.Wait(5000)
end)

local player = PlayerPedId()
local Coords = GetEntityCoords(player)




RegisterCommand('dtent', function(source, args, rawCommand)
    if tent == 1 then
        print("You don't have a tent.")
    else
        SetEntityAsMissionEntity(tent)
        DeleteObject(tent)
		TriggerServerEvent('syn:additem', "tent")
        tent = 1
    end
end, false)

RegisterCommand('dstewpot', function(source, args, rawCommand)
    if stewpot == 1 then
        print("Who fucking knows if this is working")
    else
       print("Working piece of shit.")
       TriggerServerEvent('syn:additem', "Stewpot")
       SetEntityAsMissionEntity(stewpot)
       DeleteObject(stewpot) 
       stewpot = 1
    end
end, false)


RegisterCommand('doven', function(source, args, rawCommand)
    if oven == 1 then
        print("Who fucking knows if this is working")
    else
       print("Working piece of shit.")
       TriggerServerEvent('syn:additem', "Oven")
       SetEntityAsMissionEntity(oven)
       DeleteObject(oven) 
       oven = 1
    end
end, false)



RegisterCommand('dmorter', function(source, args, rawCommand)
if grinder == 1 then
    print("Not working")
else
    print("Working")
        SetEntityAsMissionEntity(grinder)
        DeleteObject(grinder)
		TriggerServerEvent('syn:additem', "Morter_Pestal")
        grinder = 1
    end
end, false)



RegisterCommand('dcampfire', function(source, args, rawCommand)
if campfire == 1 then
    print("Not working")
else
    print("Working")
        SetEntityAsMissionEntity(campfire)
        DeleteObject(campfire)
		TriggerServerEvent('syn:additem', "campfire")
        campfire = 1
    end
end, false)



RegisterCommand('dbag', function(source, args, rawCommand)
if bag == 1 then
    print("Not Working")
else
    print("Working")
        SetEntityAsMissionEntity(bag)
        DeleteObject(bag)
		TriggerServerEvent('syn:additem', "Doctor_Bag")
        bag = 1
    end
end, false)



RegisterCommand('dbed', function(source, args, rawCommand)
if bed == 1 then
    print("Not Working")
else
    print("Working")
        SetEntityAsMissionEntity(bed)
        DeleteObject(bed)
		TriggerServerEvent('syn:additem', "Doctor_Bed")
        bed = 1
    end
end, false)

-- Syn Edits 






--[[ RegisterNetEvent('smokecigar')
AddEventHandler('smokecigar', function() 
Citizen.InvokeNative(0xB31A277C1AC7B7FF,PlayerPedId(),0,0,GetHashKey("KIT_EMOTE_ACTION_SMOKE_CIGAR_1"),1,1,0,0,0)  -- UPPER BODY EMOTE
    local smoke = true
    while smoke do
        Wait(5000)
        Citizen.InvokeNative( 0xF6A7C08DF2E28B28, PlayerPedId(), 0, 1000.0, false )
        PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
        smoke = false
    end
end)



RegisterNetEvent('smokecigarette')
AddEventHandler('smokecigarette', function() 
Citizen.InvokeNative(0xB31A277C1AC7B7FF,PlayerPedId(),0,0,GetHashKey("KIT_EMOTE_ACTION_SMOKE_CIGARETTE_1"),1,1,0,0,0)  -- UPPER BODY EMOTE
    local smoke = true
    while smoke do
        Wait(5000)
        Citizen.InvokeNative( 0xF6A7C08DF2E28B28, PlayerPedId(), 0, 800.0, false )
        PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
        smoke = false
    end
end) ]]

--[[ RegisterNetEvent("syn:horsestimulant")
AddEventHandler("syn:horsestimulant", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
               -- TaskAnimalInteraction(PlayerPedId(), Cavallo,-1355254781, 0, 0) --stem
                TaskAnimalInteraction(PlayerPedId(), Cavallo, -1355254781, GetHashKey("p_cs_syringe01x"), 0)

                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 35)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 35)


                Citizen.InvokeNative(0xF6A7C08DF2E28B28, Cavallo, 0, 1000.0)
                Citizen.InvokeNative(0xF6A7C08DF2E28B28, Cavallo, 1, 1000.0)
                    
                Citizen.InvokeNative(0x50C803A4CD5932C5, true) --core
                Citizen.InvokeNative(0xD4EE21B7CC7FD350, true) --core
                PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
end) ]]
        

--[[ RegisterNetEvent('syn:brush')
AddEventHandler('syn:brush', function(source)
    local _source = source
    local Ped = PlayerPedId()
    local Cavallo = Citizen.InvokeNative(0x4C8B59171957BCF7, PlayerPedId())
    TriggerEvent("StressaPlayer", 10)
    local pCoords = GetEntityCoords(Ped)
    local cCoords = GetEntityCoords(Cavallo)
    local Distanza = GetDistanceBetweenCoords(pCoords, cCoords)
        if Distanza < 1.0 then
        TriggerEvent("vorp:TipRight", "You used the brush", 5000)
      --  TaskAnimalInteraction(Ped, Cavallo, 1968415774, true, true)
      TriggerEvent('syn:exp', Cavallo, 10)
      TaskAnimalInteraction(Ped, Cavallo, 554992710, GetHashKey("P_BRUSHHORSE02X"), 0)
        local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0) -- Controlla la vita del cavallo
        if not tonumber(valueHealth) then valueHealth = 0 end
        Citizen.Wait(3000)
        Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 5) -- Cura il cavallo di poco (5)
        Citizen.InvokeNative(0x6585D955A68452A5, Cavallo) -- Pulisce il cavallo
        Citizen.InvokeNative(0xB5485E4907B53019, Cavallo) -- Setta il cavallo bagnato
        else
        TriggerEvent("vorp:TipRight", "You are not near your horse", 3000) 
        Wait(0)
        end
end) ]]

Citizen.CreateThread(function() -- cancel emote/animation
    while true do
        Wait(0)
        if IsControlJustPressed(0, 0xA5BDCD3C) then -- O key universtal cancel animations button
            --ClearPedTasksImmediately(PlayerPedId())
           ClearPedTasks(PlayerPedId())
           SetCurrentPedWeapon(GetPlayerPed(), -1569615261, true)
        end
    end 
end)

RegisterCommand('sa', function(source, args, rawCommand)
    ClearPedTasksImmediately(PlayerPedId())
end, false)

--stew use for later camp upgrades
 keys = {
    -- Letter E
    ["G"] = 0x760A9C6F,
}

function whenKeyJustPressed(key)  ---iscontorlpressed doesnt work in vehicles or some shit, this works
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
    SetTextCentre(centre)
    SetTextFontForCurrentCommand(15) 
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
    DisplayText(str, x, y)
end


RegisterNetEvent("syn:meatgreavy")
AddEventHandler("syn:meatgreavy", function(source)

    local _source = source
    local bowl = CreateObject("p_bowl04x_stew", GetEntityCoords(PlayerPedId()), true, true, false, false, true)
    local spoon = CreateObject("p_spoon01x", GetEntityCoords(PlayerPedId()), true, true, false, false, true)
    
    Citizen.InvokeNative(0x669655FFB29EF1A9, bowl, 0, "Stew_Fill", 1.0)
    Citizen.InvokeNative(0xCAAF2BCCFEF37F77, bowl, 20)
    
    Citizen.InvokeNative(0xCAAF2BCCFEF37F77, spoon, 82)
    
    TaskItemInteraction_2(PlayerPedId(), 599184882, bowl, GetHashKey("p_bowl04x_stew_ph_l_hand"), -583731576, 1, 0, -1.0)
    TaskItemInteraction_2(PlayerPedId(), 599184882, spoon, GetHashKey("p_spoon01x_ph_r_hand"), -583731576, 1, 0, -1.0)
    
    Citizen.InvokeNative(0xB35370D5353995CB, PlayerPedId(), -583731576, 1.0)

        Citizen.Wait(1000)
            TriggerEvent('srp:drink', 30)
            TriggerEvent('srp:eat', 60)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end


end)

