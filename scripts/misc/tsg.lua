--slight slight slight modification 
--stolen from engo#0320 (github.com/joeengo)
--
--[[ ------------------------------------------------------------------------------------------------------------------------------- ]]--
-- // The Survival Game Script, orignally written for v3, ported to v2. Enjoy!-- // The Survival Game Script, orignally written for v3, ported to v2. Enjoy!

--[[ TODO
    - CONFIG SYSTEM

]]

if not game:IsLoaded() then 
    game.Loaded:Wait()
end

local entity = loadstring(game:HttpGet("https://github.com/joeengo/VapeV4ForRoblox/blob/main/Libraries/entityHandler.lua?raw=true", true))()
entity.fullEntityRefresh()

local library = isfolder and isfile and loadfile and isfolder("engosUtilities") and isfile("engosUtilities/ui.lua") and loadfile("engosUtilities/ui.lua")() or loadstring(game:HttpGet("https://github.com/joeengo/exploiting/blob/main/UILibrary.lua?raw=true", true))()
library:Init("tsg.lua v1.05b")

local CombatTab = library:Tab("Combat")
local WorldTab = library:Tab("World")
local UtilityTab = library:Tab("Utility")
local MiscTab = library:Tab("Misc")

local collectionService = game:GetService("CollectionService")
local guiService = game:GetService("GuiService")
local players = game:GetService("Players")
local lplr = players.LocalPlayer
local cam = workspace.CurrentCamera
local rs = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
local uis = game:GetService("UserInputService")

-- function compat
local islclosure = islclosure or (iscclosure and function(x) return not iscclosure(x) end)
local getfunctionname = function(x) return debug.getinfo and debug.getinfo(x).name or debug.info and debug.info(x, "n") end


local tsg = {}
local resolvePath
local hookfunc = hookfunction
function hookfunction(from, to, backup)
    local suc, res = pcall(hookfunc, from, to)
    if suc then 
        return res
    end
    return backup()
end

local funcs = {}; do 
    function funcs.getAngleFacingFromPart(selfPart, part) 
        local unit = ((part.Position - selfPart.Position) * Vector3.new(1, 0, 1)).Unit
        local partLookVec = selfPart.CFrame.LookVector * Vector3.new(1, 0, 1)
        local dot = partLookVec:Dot(unit)
        local angle = math.abs(dot - 1) * 90
        return angle
    end

    function funcs.getEntityFromPlayerName(name)
        local player = players:FindFirstChild(name)
        if not player then 
            return
        end

        local ind, ent = entity.getEntityFromPlayer(player)
        return ent
    end

    function funcs.getClosestEntity(max) 
        if not entity.isAlive then 
            return
        end

        local selfPos = entity.character.HumanoidRootPart.Position
        local dist, res = max or 9e9, nil
        for i, ent in next, entity.entityList do 
            if ent.Targetable then
                local d = (ent.HumanoidRootPart.Position - selfPos).Magnitude
                if (d < dist) then 
                    res = ent
                    dist = d
                end
            end
        end

        return res
    end
    
    function funcs.getColorFromHealthPercentage(percentage) 
        return Color3.fromHSV(percentage / 3, 1, 1) -- Makes 100% health = 0.33333 which is green.
    end

    local waitCache = {}
    function funcs.waitForChild(parent, childName, timeOut)
        local key = parent:GetDebugId(99999) .. childName
        if not waitCache[key] then
            waitCache[key] = parent:FindFirstChild(childName) or parent:WaitForChild(childName, timeOut)
        end
        return waitCache[key]
    end

    function funcs.createAngleInc(Start, DefaultInc, Goal) 
        local i = Start or 0
        return function(Inc) 
            local Inc = Inc or DefaultInc or 1
            i = math.clamp(i + Inc, Start, Goal)
            return i
        end
    end
    
    function funcs.circle(Self, Target, Radius, Delay, Speed, stopIf, onStop, YOffset)
        local AngleInc = funcs.createAngleInc(0, Speed, 360)
        for i = 1, 360 / Speed do 
            local Angle = AngleInc(Speed)
            Self.CFrame = CFrame.new(Target.CFrame.p) * CFrame.Angles(0, math.rad(Angle), 0) * CFrame.new(0, YOffset, Radius)
            task.wait(Delay)
            if stopIf and stopIf() then
                return onStop and onStop()
            end
        end
    end

    function funcs.getBestSlot(type, stat) 
        local hotbar = tsg.ClientData.getHotbar()
        local most, best = 0, nil
        for hotbarSlot, itemId in next, hotbar do 
            if itemId < 0 then 
                continue 
            end

            local itemData = tsg.Items.getItemData(itemId)
            if table.find(itemData.itemType, type) then 
                if itemData.itemStats[stat] > most then 
                    best = hotbarSlot
                    most = itemData.itemStats[stat]
                end
            end
        end
        
        return best, most
    end

    function funcs.getBestId(type, stat) 
        local inv = tsg.ClientData.getInventory()
        local most, best = 0, nil
        for itemId, amount in next, inv do 
            if itemId < 0 then 
                continue 
            end

            if amount <= 0 then 
                continue
            end

            local itemData = tsg.Items.getItemData(itemId)
            if table.find(itemData.itemType, type) then 
                if itemData.itemStats[stat] > most then 
                    best = itemId
                    most = itemData.itemStats[stat]
                end
            end
        end
        
        return best, most
    end

    -- params: type, stat, bool: inventory (check inv)
    -- return: slot/id, isInInv
    function funcs.getBestItem(type, stat, inventory) 
        local bestSlot, most1 = funcs.getBestSlot(type, stat)
        local bestId, most2 = funcs.getBestId(type, stat)

        if (most2 > most1) and inventory then 
            return bestId, true
        else
            return bestSlot, false
        end
    end

    function funcs.getBestItemAndEquipToHotbar(type, stat, inventory) 
        local bestItem, inv = funcs.getBestItem(type, stat, inventory)
        if inv then 
            local hotbar = tsg.ClientData.getHotbar()
            local slot = 1
            for i = 1, 5 do 
                if not hotbar[i] then 
                    slot = i
                    break
                end
            end

            funcs.equipToHotbar(bestItem, slot)
            bestItem = slot
        end
        return bestItem
    end

    function funcs.equipToHotbar(id, slot) 
        pcall(function()
            tsg.EquipHotbarRemote:InvokeServer("inventory", slot, id)
        end)
    end

    function funcs.getClosestAnimal(max) 
        if not entity.isAlive then 
            return
        end

        local selfPos = entity.character.HumanoidRootPart.Position
        local dist, res = max or 9e9, nil
        for i, animal in next, tsg.Animals do 
            if animal.PrimaryPart and (not animal:GetAttribute("deadFrom")) then
                local d = (animal.PrimaryPart.Position - selfPos).Magnitude
                if (d < dist) then 
                    res = animal
                    dist = d
                end
            end
        end

        return res
    end

    function funcs.playAnimation(id)
        if entity.isAlive then 
            local animation = Instance.new("Animation")
            animation.AnimationId = id
            local animatior = entity.character.Humanoid.Animator
            animatior:LoadAnimation(animation):Play()
        end
    end

    function funcs.getEquippedId() 
        if not entity.isAlive then
            return -1
        end

        local hotbar = tsg.ClientData.getHotbar()
        for i, v in next, hotbar do 
            local tool = lplr.Character:FindFirstChild(tostring(i))
            if tool and tool:IsA("Tool") then 
                return v
            end
        end

        return -1
    end

    function funcs.getEquippedSlot() 
        if not entity.isAlive then
            return
        end

        local hotbar = tsg.ClientData.getHotbar()
        for i, v in next, hotbar do 
            local tool = lplr.Character:FindFirstChild(tostring(i))
            if tool and tool:IsA("Tool") then 
                return i
            end
        end
    end

    -- This function is just skidded from in game code lol (players.LocalPlayer.Character["1"].slotTool.Ranged_CHARGED)
    function funcs.getShootTarget() 
        if tsg.fpsUtil.inFirstPerson() then
            local cf = cam.CFrame
            return cf.Position + (cf.LookVector * 1000)
        end

        local mousePos = uis:GetMouseLocation() - guiService:GetGuiInset()
        local ray = cam:ScreenPointToRay(mousePos.X, mousePos.Y)
        local rayParams = RaycastParams.new()
        rayParams.FilterType = Enum.RaycastFilterType.Blacklist
        rayParams.FilterDescendantsInstances = {
            lplr.Character,
            resolvePath(workspace, "snaps")
        }

        local hit = workspace:Raycast(ray.Origin, ray.Direction * 500, rayParams)
        if hit then
            return hit.Position
        end
        return ray.Origin + (ray.Direction * 1000)
    end

    function funcs.getShootCF() 
        if not entity.isAlive then
            return
        end

        if tsg.fpsUtil.inFirstPerson() then 
            return cam.CFrame
        end

        return CFrame.new(lplr.Character:GetPivot().Position, funcs.getShootTarget())
    end


	local function LaunchAngle(v: number, g: number, d: number, h: number, higherArc: boolean)
		local v2 = v * v
		local v4 = v2 * v2
		local root = math.sqrt(v4 - g*(g*d*d + 2*h*v2))
		if not higherArc then root = -root end
		return math.atan((v2 + root) / (g * d))
	end

	local function LaunchDirection(start, target, v, g, higherArc: boolean)
		-- get the direction flattened:
		local horizontal = Vector3.new(target.X - start.X, 0, target.Z - start.Z)
		
		local h = target.Y - start.Y
		local d = horizontal.Magnitude
		local a = LaunchAngle(v, g, d, h, higherArc)
		
		-- NaN ~= NaN, computation couldn't be done (e.g. because it's too far to launch)
		if a ~= a then return nil end
		
		-- speed if we were just launching at a flat angle:
		local vec = horizontal.Unit * v
		
		-- rotate around the axis perpendicular to that direction...
		local rotAxis = Vector3.new(-horizontal.Z, 0, horizontal.X)
		
		-- ...by the angle amount
		return CFrame.fromAxisAngle(rotAxis, a) * vec
	end

	local function FindLeadShot(targetPosition: Vector3, targetVelocity: Vector3, projectileSpeed: Number, shooterPosition: Vector3, shooterVelocity: Vector3, gravity: Number)
		local distance = (targetPosition - shooterPosition).Magnitude

		local p = targetPosition - shooterPosition
		local v = targetVelocity - shooterVelocity
		local a = Vector3.zero

		local timeTaken = (distance / projectileSpeed)
		
		if gravity > 0 then
			local timeTaken = projectileSpeed/gravity+math.sqrt(2*distance/gravity+projectileSpeed^2/gravity^2)
		end

		local goalX = targetPosition.X + v.X*timeTaken + 0.5 * a.X * timeTaken^2
		local goalY = targetPosition.Y + v.Y*timeTaken + 0.5 * a.Y * timeTaken^2
		local goalZ = targetPosition.Z + v.Z*timeTaken + 0.5 * a.Z * timeTaken^2
		
		return Vector3.new(goalX, goalY, goalZ)
	end


    function funcs.prediction(p1, p2, p3, p4, p5, grav, projvelo, ent) 
        return LaunchDirection(p4.Position, FindLeadShot(ent.HumanoidRootPart.Position, ent.HumanoidRootPart.Velocity, projvelo, p4.Position, Vector3.zero, grav), projvelo, grav, false)
    end

    --[[
    function funcs.remoteCheck(tab) 
        if typeof(tab) == "table" then
            local method = rawget(tab, "FireServer") or rawget(tab, "InvokeServer")
            return typeof(method) == "function" and islclosure(method) and method
        end
    end
    ]]

    --local Version = resolvePath(rs, "version").Value

    function funcs.getKeyedRemotes() 
        for i, v in next, getgc(true) do 
            if typeof(v) == "table" and rawget(v, 'meleePlayer') then
                return v
            end
        end
    end

    function funcs.getKeyedRemotesRecursive(recurseAmount) 
        if recurseAmount >= 4 then 
            lplr:Kick(("[tsg.lua] Failure in getgc grabber. please try again later, or report this to engo#0320."))
            return
        end

        local suc, res = pcall(funcs.getKeyedRemotes)
        if not suc then 
            lplr:Kick(("[tsg.lua] Error in getgc grabber. report this to engo#0320 (%s)"):format(res))
            return
        end
        if not res then 
            task.wait(1)
            return funcs.getKeyedRemotesRecursive(recurseAmount + 1)
        end
        return res
    end

    local boatsFolder
    function funcs.getRandomUnoccupiedBoatSeat() 
        boatsFolder = boatsFolder or resolvePath(workspace, "boats")
        for i, v in next, boatsFolder:GetChildren() do
            local seat = v:FindFirstChildWhichIsA("VehicleSeat", true)
            if seat and not seat.Occupant then 
                return seat
            end
        end
    end

    function funcs.teleportTo(cframe) 
        local goalPos = cframe + Vector3.new(0, 10, 0)
        if not entity.isAlive then 
            return
        end

        local seat = entity.character.Humanoid.SeatPart or funcs.getRandomUnoccupiedBoatSeat()
        if not seat then 
            return
        end

        seat:Sit(entity.character.Humanoid)

        local rsConnection = runService.Heartbeat:Connect(function()
            if seat.Parent and seat.Parent.PrimaryPart then
                seat.Parent.PrimaryPart.CFrame = goalPos
                seat.Parent.PrimaryPart.Velocity = Vector3.zero
                seat.Parent.PrimaryPart.AssemblyAngularVelocity = Vector3.zero
                seat.Parent.PrimaryPart.AssemblyLinearVelocity = Vector3.zero
                seat.Parent.PrimaryPart.RotVelocity = Vector3.zero
            end
        end)

        repeat task.wait() until (((entity.isAlive and lplr.Character:GetAttribute("lastPos") or Vector3.zero) - goalPos.Position) * Vector3.new(1, 0, 1)).Magnitude <= 15

        if not entity.isAlive then 
            return
        end

        entity.character.Humanoid.Sit = false
        rsConnection:Disconnect()
        entity.character.HumanoidRootPart.Velocity = Vector3.zero
        entity.character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero
        entity.character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
        entity.character.HumanoidRootPart.RotVelocity = Vector3.zero
    end
end

function resolvePath(parent, ...)
    local last = parent
    for i, v in next, {...} do 
        last = funcs.waitForChild(last, v)
    end

    return last
end

--[[
local oldNamecall; oldNamecall = hookmetamethod(game, "__namecall", function(self, ...) 
    local ncm = getnamecallmethod()
    if (not checkcaller()) and string.lower(ncm) == "kick" then 
        return
    end

    return oldNamecall(self, ...)
end)

hookfunction(lplr.Kick, function(...) end)]]


do  --[[
        My extremely hacky way of bypassing the stoopid ac:
    ]]
    local shiftKeys = {
        31,
        14,
        1,
    }

    local bitLShift
    local hookedBitLShift = function(a, b, ...) 
        local res = bitLShift(a, b, ...)
        if a == 1 and table.find(shiftKeys, b) and debug.info(2, "s"):match("FiOne") then 
            res = bitLShift(0, b, ...) 
        end
        return res
    end

    bitLShift = hookfunction(getrenv().bit32.lshift, hookedBitLShift, function() 
        local old = getrenv().bit32.lshift
        setreadonly(getrenv().bit32, false)
        getrenv().bit32.lshift = hookedBitLShift
        setreadonly(getrenv().bit32, true)
        return old
    end)
end

local keyedRemotes = funcs.getKeyedRemotesRecursive(1)

tsg = {
    ClientData = require(resolvePath(rs, "modules", "player", "ClientData")),
    Sounds = require(resolvePath(rs, "modules", "misc", "Sounds")),
    Items = require(resolvePath(rs, "game", "Items")),
    Effects = require(resolvePath(rs, "game", "Effects")),
    fpsUtil  = require(resolvePath(rs, "modules", "misc", "fpsUtil")),
    Projectiles = require(resolvePath(rs, "modules", "game", "Projectiles")),

    MeleePlayerRemote = rawget(keyedRemotes, "meleePlayer"),
    MeleeAnimalRemote = resolvePath(rs, "remoteInterface", "interactions", "meleeAnimal"),
    EatRemote = resolvePath(rs, "remoteInterface", "interactions", "eat"),
    MineRemote = rawget(keyedRemotes, "mine"),
    ChopRemote = rawget(keyedRemotes, "chop"),
    ShotPlayerHitRemote = resolvePath(rs, "remoteInterface", "interactions", "shotHitPlayer"),
    PickupRemote = resolvePath(rs, "remoteInterface", "inventory", "pickupItem"),
    RespawnRemote = resolvePath(rs, "remoteInterface", "character", "respawn"),
    FireRemote = resolvePath(rs, "remoteInterface", "world", "onFire"),
    DropRemote = resolvePath(rs, "remoteInterface", "inventory", "drop"),
    EquipHotbarRemote = resolvePath(rs, "remoteInterface", "inventory", "equipHotbar"),
    HitStructureRemote = rawget(keyedRemotes, "hitStructure"),

    SetHungerEvent = resolvePath(rs, "remoteInterface", "playerData", "setHunger"),
}

getgenv().tsg = tsg -- testing purposes
getgenv().library = library -- testing purposes

local animalContainer = resolvePath(workspace, "animals"); do 
    local function addAnimal(v) 
        table.insert(tsg.Animals, v)
    end

    tsg.Animals = tsg.Animals or {}
    animalContainer.ChildAdded:Connect(addAnimal)
    for i, v in next, animalContainer:GetChildren() do 
        addAnimal(v)
    end 
end

library:Button({
    Name = "Fullbright",
    Tab = Utility,
    Function = function()
        game:GetService("Lighting").Brightness = 2
        game:GetService("Lighting").ClockTime = 14
        game:GetService("Lighting").FogEnd = 100000
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    end
})
    
do -- KILLAURA

    local rayparams = RaycastParams.new()
    rayparams.FilterType = Enum.RaycastFilterType.Blacklist
    rayparams.RespectCanCollide = true
    local circling
    local lastHit = 0
    local lastAnim = 0
    local circle, circleSpeed, circleRadius
    local rangeVal, angleVal
    local weaponCheck, autoEquip, useEquippedOverBest, hotbarOnly
    local animals
    local players
    local target
    local highlight
    local under
    local connection
    local highlightInstance = Instance.new("Highlight", library.ScreenGui)
    highlightInstance.FillColor = Color3.new(1, 0, 0)
    highlightInstance.OutlineColor = Color3.new(1, 1, 1)
    highlightInstance.FillTransparency = 0.2
    highlightInstance.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlightInstance.Enabled = true

    -- TODO: make highlight for animal while attacking player and animal

    local killaura; killaura = library:Toggle({ 
        Name = "Killaura",
        Default = false,
        Tab = CombatTab,
        Function = function(value) 
            if value then 
                highlightInstance.Enabled = highlight.Enabled
                local lastPos
                connection = runService.Heartbeat:Connect(function(dt) 
                    if not entity.isAlive then 
                        return
                    end

                    if target then 
                        highlightInstance.Adornee = (typeof(target) == "table" and target.Character) or target
                        if circle.Enabled and not under.Enabled then 
                            task.spawn(function() -- Circle Function
                                if circling then 
                                    return
                                end

                                circling = true
                                funcs.circle(entity.character.HumanoidRootPart, target.HumanoidRootPart, circleRadius.Value, 0, circleSpeed.Value, function() 
                                    return not ((target) or killaura.Enabled or circle.Enabled)
                                end, nil, 0)
                                circling = false
                            end)
                        end

                        if under.Enabled then 
                            if entity.character.Humanoid.SeatPart then 
                                return
                            end

                            local chars = {}
                            for i, v in next, entity.entityList do 
                                table.insert(chars, v.Character)
                            end
                             
                            rayparams.FilterDescendantsInstances = chars

                            local ray = workspace:Raycast(target.HumanoidRootPart.Position, Vector3.new(0, -1000, 0), rayparams)
                            local goalPos = ray.Position - Vector3.new(0, 2, 0)
                            if not entity.character.Humanoid.Sit then
                                entity.character.Humanoid:ChangeState(Enum.HumanoidStateType.Climbing)
                            end

                            -- Check if lagbacked lmfao
                            if entity.isAlive and (lplr.Character:GetAttribute("lastPos") - goalPos).Magnitude > 75 then 
                                return
                            end

                            lastPos = target.HumanoidRootPart.Position

                            entity.character.HumanoidRootPart.CFrame = CFrame.new(goalPos, target.HumanoidRootPart.Position)
                            entity.character.HumanoidRootPart.RotVelocity = Vector3.zero
                            entity.character.HumanoidRootPart.Velocity = Vector3.zero
                        end
                    else
                        if lastPos then 
                            if not entity.character.Humanoid.Sit then
                                entity.character.Humanoid:ChangeState(Enum.HumanoidStateType.Climbing)
                            end
                            entity.character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
                            entity.character.HumanoidRootPart.RotVelocity = Vector3.zero
                            entity.character.HumanoidRootPart.Velocity = Vector3.zero
                            lastPos = nil
                        end
                        highlightInstance.Adornee = nil
                    end
                end)

                -- Killaura Thread
                task.spawn(function() 
                    repeat task.wait() 
                    
                        local closestEntity = players.Enabled and funcs.getClosestEntity(rangeVal.Value)
                        local closestAnimal = animals.Enabled and funcs.getClosestAnimal(rangeVal.Value)
                        if not (closestAnimal or closestEntity) then
                            target = nil
                            continue
                        end

                        local part = closestEntity and closestEntity.HumanoidRootPart or closestAnimal and closestAnimal.HumanoidRootPart
                        local angle = funcs.getAngleFacingFromPart(entity.character.HumanoidRootPart, part)
                        if angle > angleVal.Value then 
                            target = nil
                            continue
                        end

                        local bestWeapon = funcs.getBestItemAndEquipToHotbar("Melee Weapon", "meleeDamage", not hotbarOnly.Enabled)
                        if not bestWeapon then
                            target = nil
                            continue
                        end

                        local equipped, equippedId = funcs.getEquippedSlot(), funcs.getEquippedId()
                        if equipped and (equippedId > 0) then
                            local equippedData = tsg.Items.getItemData(equippedId)
                            if table.find(equippedData.itemType, "Melee Weapon") then 
                                if useEquippedOverBest.Enabled then 
                                    bestWeapon = equipped 
                                end
                            else
                                if (weaponCheck.Enabled and (not autoEquip.Enabled)) then 
                                    target = nil
                                    continue
                                end
                            end
                        else
                            if (weaponCheck.Enabled and (not autoEquip.Enabled)) then 
                                target = nil
                                continue
                            end
                        end

                        if autoEquip.Enabled then 
                            if equipped ~= bestWeapon then
                                local toolInst = resolvePath(lplr.Backpack, tostring(bestWeapon))
                                if toolInst then
                                    entity.character.Humanoid:EquipTool(toolInst)
                                end
                            end
                        end

                        local shouldAnim = (tick() - lastAnim >= 1)
                        if shouldAnim then
                            funcs.playAnimation("rbxassetid://11370416454") -- TODO: make this use game funcs because good!!!
                            tsg.Sounds.playGameSound("HitPlayer")
                            lastAnim = tick()
                        end

                        lastHit = tick()
                        target = closestEntity or closestAnimal

                        if closestEntity then
                            tsg.MeleePlayerRemote:FireServer(bestWeapon, closestEntity.Player)
                            continue
                        end

                        if closestAnimal then
                            tsg.MeleeAnimalRemote:FireServer(bestWeapon, closestAnimal)
                        end

                    until not killaura.Enabled
                end)
            else
                connection:Disconnect()
                highlightInstance.Adornee = nil
            end
        end
    })

    weaponCheck = library:Toggle({
        Name = "Equipped Weapon Check",
        Default = false,
        Function = function(value) end,
        Tab = CombatTab,
    })

    autoEquip = library:Toggle({
        Name = "Auto-Equip Best Weapon",
        Default = true,
        Function = function(value) end,
        Tab = CombatTab,
    })

    hotbarOnly = library:Toggle({
        Name = "Hotbar Only",
        Default = false,
        Function = function() end,
        Tab = CombatTab,
    })

    useEquippedOverBest = library:Toggle({
        Name = "Use Equipped Over Best",
        Default = false,
        Function = function(value) end,
        Tab = CombatTab,
    })

    rangeVal = library:Slider({
        Name = "Max Range",
        Function = function() end,
        Min = 0,
        Max = 15,
        Default = 15,
        Decimals = 2,
        Tab = CombatTab,
    })

    angleVal = library:Slider({
        Name = "Max Angle",
        Function = function() end,
        Min = 0,
        Max = 180,
        Default = 180,
        Decimals = 1,
        Tab = CombatTab,
    })

    under = library:Toggle({
        Name = "Under Target",
        Default = false,
        Function = function() 
            
        end,
        Tab = CombatTab,
    })

    circle = library:Toggle({
        Name = "Circle Target",
        Default = false,
        Function = function(value) 
            if value then 
            else
                --cam.CameraSubject = lplr.Character
            end
        end,
        Tab = CombatTab,
    })

    circleSpeed = library:Slider({
        Name = "Circle Speed",
        Function = function() end,
        Min = 1,
        Max = 50,
        Default = 10,
        Decimals = 0,
        Tab = CombatTab,
    })

    circleRadius = library:Slider({
        Name = "Circle Radius",
        Function = function() end,
        Min = 1,
        Max = 15,
        Default = 13.5,
        Decimals = 2,
        Tab = CombatTab,
    })

    highlight = library:Toggle({
        Name = "Highlight Target",
        Default = true,
        Function = function(value) 
            highlightInstance.Enabled = value
        end,
        Tab = CombatTab,
    })

    players = library:Toggle({
        Name = "Target Players",
        Default = true,
        Function = function(value) 

        end,
        Tab = CombatTab,
    })

    animals = library:Toggle({
        Name = "Target Animals",
        Default = false,
        Function = function(value) 

        end,
        Tab = CombatTab,
    })

    library:Seperator(CombatTab)
end



do 
    
end


local fly
do -- SPEED
    local speed, speedVal
    local function onHeartbeat(dt) 
        if not speed.Enabled then 
            return
        end

        if fly.Enabled then 
            return
        end

        if not entity.isAlive then 
            return
        end

        local humanoid = entity.character.Humanoid 
        local humanoidRootPart = entity.character.HumanoidRootPart
        local originalVelocity = humanoidRootPart.Velocity
        local moveDirection = humanoid.MoveDirection

        local factor = speedVal.Value - humanoid.WalkSpeed
        local multMD = (moveDirection * dt) * factor

        lplr.Character:TranslateBy(multMD)
    end
    
    speed = library:Toggle({
        Name = "Speed",
        Default = false,
        Tab = UtilityTab,
        Function = function() end
    })

    speedVal = library:Slider({
        Name = "Value",
        Function = function() end,
        Min = 0,
        Max = 34,
        Default = 34,
        Decimals = 2,
        Tab = UtilityTab,
    })

    runService.Heartbeat:Connect(onHeartbeat)
    library:Seperator(UtilityTab)
end

do
    local parts = {}
    local noclipFunction = function(dt) 
        if not entity.isAlive then 
            return
        end

        for i, v in next, lplr.Character:GetDescendants() do 
            if v:IsA("BasePart") and v.CanCollide then 
                v.CanCollide = false
                parts[v] = true
            end
        end
    end
    
    local connection
    local noclip = library:Toggle({
        Name = "Noclip",
        Function = function(value) 
            if value then 
                connection = runService.Stepped:Connect(noclipFunction)
            else
                connection:Disconnect()
                for i, v in next, parts do 
                    i.CanCollide = v
                end
                parts = {}
            end
        end,
        Default = false,
        Tab = UtilityTab
    })
    library:Seperator(UtilityTab)
end


do 
    local jesusPart = Instance.new("Part", workspace)
    jesusPart.Size = Vector3.new(7.5, .1, 7.5)
    jesusPart.Position = Vector3.new(0, 12.75, 0)
    jesusPart.CanCollide = true
    jesusPart.Anchored = true
    jesusPart.Transparency = 1

    local connection
    local jesus = library:Toggle({
        Name = "Jesus",
        Default = false,
        Tab = UtilityTab,
        Function = function(value) 
            if value then 
                connection = runService.Stepped:Connect(function() 
                    if not entity.isAlive then 
                        return
                    end

                    local pos = entity.character.HumanoidRootPart.Position
                    jesusPart.CFrame = CFrame.new(pos.X, 12.75, pos.Z)
                end)
            else
                connection:Disconnect()
            end
        end,
    })
    library:Seperator(UtilityTab)
end

----library:Seperator()

do -- FLY
    local speedVal
    local function onHeartbeat(dt) 
        if not fly.Enabled then 
            return
        end

        if not entity.isAlive then 
            return
        end

        local humanoid = entity.character.Humanoid 
        local humanoidRootPart = entity.character.HumanoidRootPart
        local originalVelocity = humanoidRootPart.Velocity
        local moveDirection = humanoid.MoveDirection

        humanoid:ChangeState(Enum.HumanoidStateType.Climbing)
        humanoidRootPart.Velocity = Vector3.zero
        humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
        if moveDirection == Vector3.zero then 
            return
        end

        local y = cam.CFrame.LookVector.Y 
        local factor = speedVal.Value
        local finalMD = Vector3.new(
            moveDirection.X,
            (y < -0.5 or y > 0.5) and (y * 1.5) or 0,
            moveDirection.Z
        )

        local multMD = (finalMD * dt) * factor
        lplr.Character:TranslateBy(multMD)
    end
    
    fly = library:Toggle({
        Name = "Flight",
        Default = false,
        Function = function() end,
        Tab = UtilityTab,
    })

    speedVal = library:Slider({
        Name = "Value",
        Function = function() end,
        Min = 0,
        Max = 29,
        Default = 29,
        Decimals = 2,
        Tab = UtilityTab,
    })

    runService.Heartbeat:Connect(onHeartbeat)
    library:Seperator(UtilityTab)
end

----library:Seperator()

do -- AUTOEAT
    local eatRaw
    local hungerThreshold, hpThreshold
    local autoEatConnection
    local autoEat = library:Toggle({
        Name = "Auto Eat",
        Default = false,
        Function = function(value) 
            if value then
                -- NOTE: Possibly the sethunger wont fire when ur on 0, possible item pickup check so if your on 0 then it will eat any items picked up to counter that.
                autoEatConnection = tsg.SetHungerEvent.OnClientEvent:Connect(function(hunger) 
                    local health = entity.isAlive and entity.character.Humanoid.Health or 9e9
                    if (hunger >= hungerThreshold.Value - 0.1) and (health >= hpThreshold.Value) then 
                        return
                    end

                    for itemId, amount in next, tsg.ClientData.getInventory() do 
                        local itemData = tsg.Items.getItemData(itemId)
                        if not table.find(itemData.itemType, "Consumable") then 
                            continue
                        end

                        local shouldntEat = not eatRaw.Enabled and itemData.effectsOnEat and table.find(itemData.effectsOnEat, "Food_Poisoning")
                        if shouldntEat then 
                            continue 
                        end

                        task.spawn(function()
                            for i = 1, amount do 
                                local hunger2 = tsg.ClientData.getHunger()
                                local health2 = entity.isAlive and entity.character.Humanoid.Health or 9e9
                                if (hunger2 >= hungerThreshold.Value - 0.1) and (health2 >= hpThreshold.Value) then 
                                    return
                                end
                                tsg.Sounds.playGameSound("Eat Food")
                                tsg.EatRemote:FireServer(itemId)
                                task.wait(.1)
                            end
                        end)
                        break
                    end
                end)
            else
                autoEatConnection:Disconnect()
            end
        end,
        Tab = UtilityTab,
    })

    eatRaw = library:Toggle({
        Name = "Eat Raw Food",
        Default = false,
        Function = function() end,
        Tab = UtilityTab,
    })

    hungerThreshold = library:Slider({
        Name = "Start Eating Hunger",
        Function = function() end,
        Min = 1,
        Max = resolvePath(rs, "game", "maxHunger").Value,
        Default = 500,
        Decimals = 0,
        Tab = UtilityTab,
    })

    hpThreshold = library:Slider({
        Name = "Start Eating Health",
        Function = function() end,
        Min = 1,
        Max = 100,
        Default = 75,
        Decimals = 0,
        Tab = UtilityTab,
    })
    library:Seperator(UtilityTab)
end

----library:Seperator()

do -- plr tp
    local playerSelector
    local playerTPButton = library:Button({
        Name = "Teleport To Player",
        Function = function() 
            local ind, ent = entity.getEntityFromPlayer(playerSelector.Selected.Value)
            if ent then
                funcs.teleportTo(ent.HumanoidRootPart.CFrame)
            end
        end,
        Tab = MiscTab,
    })

    playerSelector = library:Selector({
        Name = "Select Player",
        List = players:GetPlayers(),
        Default = players:GetPlayers()[1],
        Function = function() end,
        Tab = MiscTab,
    })

    players.PlayerAdded:Connect(function(p) 
        playerSelector:SetList(players:GetPlayers())
        playerSelector:Select(players:GetPlayers()[1])
    end)

    players.PlayerRemoving:Connect(function() 
        playerSelector:SetList(players:GetPlayers())
        playerSelector:Select(players:GetPlayers()[1])
    end)

    library:Seperator(MiscTab)
end

----library:Seperator()

do -- SERVER LAGGER
    local lagger; lagger = library:Toggle({
        Name = "Server Lagger", -- credits to Babyhamsta#0173
        Default = false,
        Function = function(value)
            if value then 
                task.spawn(function()
                    repeat task.wait()
                        task.spawn(function()
                            for i = 1, 10 do
                                tsg.RespawnRemote:InvokeServer(15382674, 1, 1, 20, 15382674, 15382674, false)
                                tsg.FireRemote:FireServer()
                            end
                        end)
                    until not lagger.Enabled
                end)
            end
        end,
        Tab = MiscTab,
    })
    library:Seperator(MiscTab)
end

----library:Seperator()

do -- INF STAM
    local oldStamina
    local infStaminaConnection
    local infStamina = library:Toggle({
        Name = "Infinite Stamina",
        Default = false,
        Function = function(value) 
            if value then 
                oldStamina = lplr:GetAttribute("stamina")
                lplr:SetAttribute("stamina", 1)
                infStaminaConnection = lplr:GetAttributeChangedSignal("stamina"):Connect(function()
                    local newStamina = lplr:GetAttribute("stamina")
                    if newStamina ~= 1 then
                        oldStamina = newStamina
                        lplr:SetAttribute("stamina", 1)
                    end
                end)
            else
                infStaminaConnection:Disconnect()
                lplr:SetAttribute("stamina", oldStamina)
            end
        end,
        Tab = UtilityTab,
    })
    library:Seperator(UtilityTab)
end

do -- ANTI ENCUMBER
    local speedFactor
    local antiEncumber = library:Toggle({
        Name = "Anti Encumbered",
        Default = false,
        Function = function(value) 
            if value then 
                speedFactor = tsg.Effects.getEffectData("Over_Encumbered").speedFactor
                tsg.Effects.getEffectData("Over_Encumbered").speedFactor = 1
            else
                tsg.Effects.getEffectData("Over_Encumbered").speedFactor = speedFactor
                speedFactor = nil
            end
        end,
        Tab = UtilityTab,
    })
    library:Seperator(UtilityTab)
end

----library:Seperator()

do 
    local fastPickup; fastPickup = library:Toggle({
        Name = "Fast Pickup",
        Default = false,
        Function = function(value)
            if value then 
                task.spawn(function() 
                    repeat task.wait(0.05)
                        if not entity.isAlive then 
                            continue
                        end

                        local selfPos = entity.character.HumanoidRootPart.Position
                        for i, v in next, collectionService:GetTagged("DROPPED_ITEM") do -- TODO: Possibly cache/store dropped items in table, because gettagged maybe slow?
                            local dist = (v.Position - selfPos).Magnitude
                            if dist <= 5 then 
                                tsg.PickupRemote:FireServer(v)
                            end
                        end

                    until not fastPickup.Enabled
                end)
            end
        end,
        Tab = UtilityTab,
    })

end

----library:Seperator()


do -- BOW AIMBOT

    -- MY CODE:  NOT XYLEX (REAL)!!!!
    local oldShoot
    local function newShoot(p1, p2, p3, p4, p5, ...) 
        local itemData = tsg.Items.getItemData(p3)
        local projVelo = itemData.projectileVelocity
        local target = funcs.getClosestEntity()

        if target then
            p5 = 1
            local grav = workspace.Gravity * 2
            local calc = funcs.prediction(p1, p2, p3, p4, p5, grav, projVelo, target)
            if calc then 
                p4 = CFrame.new(p4.Position, p4.Position + calc)
            end  
        end   
        return oldShoot(p1, p2, p3, p4, p5, ...)
    end

    local bowAimbot
    bowAimbot = library:Toggle({
        Name = "Bow Aimbot",
        Default = false,
        Function = function(value) 
            if value then 
                oldShoot = hookfunction(tsg.Projectiles.shoot, newShoot, function() 
                    local old = tsg.Projectiles.shoot
                    tsg.Projectiles.shoot = newShoot
                    return old
                end)
            else
                hookfunction(tsg.Projectiles.shoot, oldShoot, function() 
                    tsg.Projectiles.shoot = oldShoot
                end)
            end
        end,
        Tab = CombatTab,
    })

    local oldNew
    local function newNew(self, p1, ...) 
        local ret = oldNew(self, p1, ...)
        local chars = {}
        for i, v in next, entity.entityList do table.insert(chars, v.Character) end
        local rayparams = RaycastParams.new()
        rayparams.FilterType = Enum.RaycastFilterType.Whitelist
        rayparams.FilterDescendantsInstances = chars
        ret.raycastParams = rayparams
        return ret
    end

    local wallbang
    wallbang = library:Toggle({
        Name = "Arrow Wallbang",
        Default = false,
        Function = function(value)
            if value then 
                local shoot = oldShoot or tsg.Projectiles.shoot
                oldNew = hookfunction(debug.getupvalue(shoot, 1).new, newNew, function() 
                    local old = debug.getupvalue(shoot, 1).new
                    debug.getupvalue(shoot, 1).new = newNew
                    return old
                end)
            end
        end,
        Tab = CombatTab,
    })
end

----library:Seperator()

do 
    local folder = resolvePath(workspace, "placedStructures")
    local nuker
    tsg.Structures = {}
    local connections = {}
    local lastHit = 0
    local localCheck, teamCheck

    local function setup() 
        for i, v in next, connections do 
            v:Disconnect()
            connections[i] = nil
        end

        for i, v in next, tsg.Structures do
            tsg.Structures[i] = nil
        end

        for i, model in next, folder:GetDescendants() do 
            local hp = model:GetAttribute("health")
            if model:IsA("Model") and hp then 
                table.insert(tsg.Structures, model)
            end
        end

        table.insert(connections, folder.DescendantAdded:Connect(function(model) 
            local hp = model:GetAttribute("health")
            if model:IsA("Model") and hp then 
                table.insert(tsg.Structures, model)
            end
        end))

        table.insert(connections, folder.DescendantRemoving:Connect(function(model)
            local hp = model:GetAttribute("health")
            if model:IsA("Model") and hp then 
                local ind = table.find(tsg.Structures, model)
                if ind then
                    table.remove(tsg.Structures, ind)
                end
            end
        end))
    end

    nuker = library:Toggle({
        Name = "Nuker",
        Default = false,
        Function = function(value)
            if value then 
                task.spawn(function() 
                    setup()
                    repeat task.wait()
                        if not entity.isAlive then 
                            continue
                        end

                        local thisTick = tick()
                        local shouldHit = (thisTick - lastHit >= 1/3)
                        if not shouldHit then
                            continue
                        end
                        
                        local selfPos = entity.character.HumanoidRootPart.Position
                        local bestPick = funcs.getBestItem("Pickaxe",  "pickaxeStrength")
                        local bestAxe = funcs.getBestItem("Axe",  "axeStrength")
                        local bestSword = funcs.getBestItem("Melee Weapon", "meleeDamage")

                        for i, v in next, tsg.Structures do 
                            local placer = players:GetPlayerByUserId(v:GetAttribute("placedBy"))

                            local localPlaceCheck, teamPlaceCheck = true, true
                            if placer then
                                localPlaceCheck = teamCheck.Enabled and (not (placer == lplr)) or not localCheck.Enabled
                                teamPlaceCheck = teamCheck.Enabled and (not (placer.Team == lplr.Team)) or not teamCheck.Enabled
                            end
                            local healthCheck = v:GetAttribute("health") > 0
                            local magCheck = v.PrimaryPart ~= nil and ((v.PrimaryPart.Position - selfPos).Magnitude < 16)

                            if magCheck and healthCheck and localPlaceCheck and teamPlaceCheck then 
                                for i = 1, 3 do
                                    task.spawn(function()
                                        tsg.HitStructureRemote:FireServer(bestAxe, v, v.PrimaryPart.Position)
                                        tsg.HitStructureRemote:FireServer(bestPick, v, v.PrimaryPart.Position)
                                        tsg.HitStructureRemote:FireServer(bestSword, v, v.PrimaryPart.Position)
                                    end)
                                end
                            end
                        end

                        lastHit = thisTick
                    until not nuker.Enabled
                end)
            else
                for i, v in next, connections do 
                    v:Disconnect()
                    connections[i] = nil
                end
            end
        end,
        Tab = WorldTab,
    })

    localCheck = library:Toggle({
        Name = "Ignore Self Placed",
        Default = true,
        Function = function() end,
        Tab = WorldTab,
    })

    teamCheck = library:Toggle({
        Name = "Ignore Team Placed",
        Default = true,
        Function = function() end,
        Tab = WorldTab,
    })
    library:Seperator(WorldTab)
end

----library:Seperator()

do -- AUTO MINE
    local wr = resolvePath(workspace, "worldResources")
    local resourceToggles = {}
    local connections = {}

    tsg.Mineables = tsg.Mineables or {}

    local oreEsp, oreEspDist, oreEspMaxDist, oreEspHP
    local oreEsps = {}
    local espFuncs = {
        Add = function(instance) 
            if not instance then 
                return
            end

            local name = instance.Name
            local instPos = instance:GetAttribute("cf").Position
            local pos, vis = cam:WorldToViewportPoint(instPos)
            local dist = lplr:DistanceFromCharacter(instPos)
            local health = instance:GetAttribute("health")
            vis = dist < oreEspMaxDist.Value
            
            if (not health) or health <= 0 then 
                return
            end

            if oreEsps[instance] then 
                return
            end

            if dist == 0 then 
                vis = false
            end

            local text = name
            if oreEspDist.Enabled then 
                text = "[" .. math.floor(dist) .. "] " .. text
            end
            if oreEspHP.Enabled then 
                text = text .. " [" .. (math.floor(health)) .. " HP]"
            end

            local drawing = Drawing.new("Text")
            drawing.Visible = vis
            drawing.Color = Color3.new(1, 1, 1)
            drawing.Text = text
            drawing.Size = 16
            drawing.Position = Vector2.new(pos.X, pos.Y)
            drawing.ZIndex = pos.Z
            drawing.Outline = true
            drawing.OutlineColor = Color3.new(0, 0, 0)
            drawing.Center = true

            oreEsps[instance] = {
                drawing = drawing,
                instance = instance,
                name = name,
                instPos = instPos, -- Store Instance Position because its unlikely it will change
                cleanUp = function() 
                    drawing:Remove()
                    oreEsps[instance] = nil
                end
            }
        end,
        Update = function(esp, index) 
            local drawing = esp.drawing
            local instPos = esp.instPos
            local dist = lplr:DistanceFromCharacter(instPos)
            if dist > oreEspMaxDist.Value then 
                drawing.Visible = false
                return
            end

            if not resourceToggles[esp.instance.Name].Enabled then
                drawing.Visible = false
                return
            end

            local pos, vis = cam:WorldToViewportPoint(instPos)
            if dist == 0 then -- Distance from character returns 0 if it cannot calculate.
                vis = false
            end

            drawing.Visible = vis
            if vis then
                local text = esp.name
                if oreEspDist.Enabled then 
                    text = "[" .. math.floor(dist) .. "] " .. text
                end
                if oreEspHP.Enabled then 
                    text = text .. " [" .. (math.floor(esp.instance:GetAttribute("health"))) .. " HP]"
                end
    
                drawing.Position = Vector2.new(pos.X, pos.Y)
                drawing.ZIndex = pos.Z
                drawing.Text = text
            end
        end,
    }

    local function handleChild(child) 
        local tab = {i = child, t = child.Parent.Parent.Name, cf = child:GetAttribute("cf")}
        tsg.Mineables[child] = tab

        table.insert(connections, child:GetAttributeChangedSignal("health"):Connect(function() 
            local health = child:GetAttribute("health")
            if health <= 0 then 
                return oreEsps[child] and oreEsps[child].cleanUp()
            end
        end))

        if oreEsp.Enabled then
            if resourceToggles[child.Name].Enabled then
                espFuncs.Add(child)
            end
        end
    end

    local function updateMineables() 
        tsg.Mineables = tsg.Mineables or {}
        for i, v in next, connections do 
            if v.Connected then
                v:Disconnect()
            end
            connections[i] = nil
        end

        for i, descendant in next, wr:GetDescendants() do 
            if not descendant:IsA("Model") then 
                continue
            end

            local hp = descendant:GetAttribute("health")
            if hp then 
                handleChild(descendant)
            end
        end

        table.insert(connections, wr.DescendantAdded:Connect(function(descendant) 
            if not descendant:IsA("Model") then 
                return
            end

            local hp = descendant:GetAttribute("health")
            if hp then 
                handleChild(descendant)
            end
        end))

        table.insert(connections, wr.DescendantRemoving:Connect(function(descendant) 
            tsg.Mineables[descendant] = nil
            if oreEsps[descendant] then
                oreEsps[descendant].cleanUp()
            end
        end))
    end

    local highlight
    local highlightInstance = Instance.new("Highlight")
    highlightInstance.FillColor = Color3.new(0, 0, 1)
    highlightInstance.OutlineColor = Color3.new(1, 1, 1)
    highlightInstance.FillTransparency = 0.2
    highlightInstance.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlightInstance.Enabled = false


    local lastHit = tick()
    local automine; automine = library:Toggle({
        Name = "Auto Mine",
        Default = false,
        Function = function(value)
            if value then 
                task.spawn(function() 
                    repeat task.wait()
                        if not entity.isAlive then 
                            continue
                        end

                        local thisTick = tick()
                        local shouldHit = (thisTick - lastHit >= 1/3)
                        if not shouldHit then
                            continue
                        end
                        
                        local selfPos = entity.character.HumanoidRootPart.Position
                        local bestPick = funcs.getBestItem("Pickaxe",  "pickaxeStrength")
                        local bestAxe = funcs.getBestItem("Axe",  "axeStrength")

                        for i, v in next,tsg.Mineables do 
                            local magCheck = v.cf and ((v.cf.Position - selfPos).Magnitude < 16)
                            local healthCheck = v.i:GetAttribute("health") > 0

                            if magCheck and healthCheck then 
                                local remote = v.t == 'mineable' and tsg.MineRemote or tsg.ChopRemote
                                local bestTool = v.t == 'mineable' and bestPick or bestAxe

                                highlightInstance.Parent = v.i
                                highlightInstance.Adornee = v.i

                                for i = 1, 10 do
                                    task.spawn(function()
                                        remote:FireServer(bestTool, v.i, v.cf)
                                    end)
                                end

                                lastHit = thisTick
                                --break
                            else
                                --highlightInstance.Parent = nil
                                --highlightInstance.Adornee = nil
                            end
                        end
                    until not automine.Enabled
                end)
            else
                highlightInstance.Parent = nil
                highlightInstance.Adornee = nil
            end
        end,
        Tab = WorldTab,
    })

    highlight = library:Toggle({
        Name = "Highlight Mining",
        Default = false,
        Function = function(value) 
            highlightInstance.Enabled = value
        end,
        Tab = WorldTab,
    })

    library:Seperator(WorldTab)

    local oreEspConnection
    oreEsp = library:Toggle({
        Name = "Resource ESP",
        Default = false,
        Function = function(value) 
            if value then 
                for i, v in next, tsg.Mineables do 
                    espFuncs.Add(v.i)
                end
                oreEspConnection = runService.RenderStepped:Connect(function() 
                    for i, v in next, oreEsps do 
                        espFuncs.Update(v, i)
                    end
                end)
            else
                oreEspConnection:Disconnect()
                for i, v in next, oreEsps do 
                    v.cleanUp()
                end
            end
        end,
        Tab = WorldTab,
    })

    oreEspDist = library:Toggle({
        Name = "Show Distance From Player",
        Default = true,
        Function = function() end,
        Tab = WorldTab,
    })

    oreEspHP = library:Toggle({
        Name = "Show Health",
        Default = true,
        Function = function() end,
        Tab = WorldTab,
    })

    oreEspMaxDist = library:Slider({
        Name = "Max Render Distance",
        Default = 300,
        Min = 0,
        Max = 10000,
        Function = function() end,
        Decimals = 2,
        Tab = WorldTab,
    })

    updateMineables()

    local resourceTogglesToggle = library:Toggle({
        Name = "Show Resources",
        Default = false,
        Function = function(value) 
            for i,v in next, resourceToggles do 
                v.Element.Element.Visible = value
            end
        end,
        Tab = WorldTab,
        Texts = {Enabled = "Shown", Disabled = "Hidden"}
    })

    for i,v in next, wr:GetChildren() do 
        if v.Name ~= "choppable" and v.Name ~= "mineable" then 
            resourceToggles[v.Name] = library:Toggle({
                Name = v.Name,
                Default = true,
                Function = function() 
                    updateMineables()
                end,
                Tab = WorldTab,
                Texts = {Enabled = "Shown", Disabled = "Hidden"}
            })
            resourceToggles[v.Name].Element.Element.Visible = resourceTogglesToggle.Enabled
        end
    end
end

--library:Seperator()

do 
    local admins
    local function checkStaff(player) 
        if not player or typeof(player) ~= "Instance" then 
            return false
        end

        if not admins then 
            local temp = resolvePath(rs, "admins"):GetChildren()
            admins = {}
            for i, v in next, temp do 
                admins[v.Value] = v.Name
            end
        end

        return admins[player.UserId] ~= nil
    end

    local playerAddedConnection
    local AntiStaff; AntiStaff = library:Toggle({
        Name = "Anti Staff",
        Default = false,
        Function = function(value) 
            if value then 
                for i, player in next, players:GetPlayers() do 
                    if checkStaff(player) then 
                        if lplr:GetAttribute("inCombat") then
                            lplr:GetAttributeChangedSignal("inCombat"):Wait()
                        end
                        lplr:Kick(("[tsg.lua] A staff member was in your game! (%s)"):format(player.Name))
                    end
                end

                playerAddedConnection = players.PlayerAdded:Connect(function(player) 
                    if checkStaff(player) then 
                        if lplr:GetAttribute("inCombat") then
                            lplr:GetAttributeChangedSignal("inCombat"):Wait()
                        end
                        lplr:Kick(("[tsg.lua] A staff member joined your game! (%s)"):format(player.Name))
                    end
                end)
            end
        end,
        Tab = MiscTab,
    })

    library:Seperator(MiscTab)
end

-- UI HIDE:
uis.InputBegan:Connect(function(input) 
    if input.KeyCode == Enum.KeyCode.RightControl then 
        library.ScreenGui.Enabled = not library.ScreenGui.Enabled
    end
end)

library:Load("tsg", "config.json")

task.spawn(function() 
    while task.wait(5) do 
        library:Save("tsg", "config.json")
    end    
end)