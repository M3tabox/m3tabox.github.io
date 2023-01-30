-- first variables

local Settings = {
    Prefix = ".", 
    Version = "3.0.0", 
    
    CommandKey = "BackSlash", -- see: "https://developer.roblox.com/en-us/api-reference/enum/KeyCode" for all key codes
    GuiLogo = "http://www.roblox.com/asset/?id=5234318900"
}



--/ Important checks 'n waiting for stuff to load or smthing

repeat
    wait()
until game:GetService("Players").LocalPlayer ~= nil

if not game:GetService("Players").LocalPlayer.Character then
    game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
end


for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "OverflowScreenGui" then
        v:Destroy()
    end
end



--/ Variables

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Workspace = game:GetService("Workspace")
local UIS = game:GetService("UserInputService")
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character


local Admin = {
    Cmds = {},  
    Events = {}, 


    NotificationFrameAmount = 0
}



--/ Main Gui Creation 'n it's properties

local OverflowScreenGui = Instance.new("ScreenGui")
local Intro = Instance.new("Folder")
local TitleLabelIntro = Instance.new("TextLabel")
local VersionLabelIntroClipDescendants = Instance.new("TextLabel")
local VersionLabelIntro = Instance.new("TextLabel")
local IntroBlurEffect = Instance.new("BlurEffect")

local Main = Instance.new("Folder")
local FrameCmdBar = Instance.new("Frame")
local ArrowThing = Instance.new("TextLabel")
local CmdBar = Instance.new("TextBox")
local line = Instance.new("Frame")
local Cmdlist = Instance.new("ScrollingFrame")
local ExampleCmd = Instance.new("Frame")
local line_2 = Instance.new("Frame")
local CmdNameBtn = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local NotificationFrame = Instance.new("Frame")
local line_3 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local timelabel = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Body = Instance.new("TextLabel")



OverflowScreenGui.Name = "OverflowScreenGui"
OverflowScreenGui.Parent = game:GetService("CoreGui")
OverflowScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Intro.Name = "Intro"
Intro.Parent = OverflowScreenGui

TitleLabelIntro.Name = "TitleLabelIntro"
TitleLabelIntro.Parent = Intro
TitleLabelIntro.AnchorPoint = Vector2.new(0.5, 1)
TitleLabelIntro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabelIntro.BackgroundTransparency = 1.000
TitleLabelIntro.Position = UDim2.new(0.5, 0, 0.5, 0)
TitleLabelIntro.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
TitleLabelIntro.Font = Enum.Font.SourceSansBold
TitleLabelIntro.Text = "Overflow"
TitleLabelIntro.TextColor3 = Color3.fromRGB(233, 252, 252)
TitleLabelIntro.TextSize = 45.000
TitleLabelIntro.TextTransparency = 1.000

VersionLabelIntroClipDescendants.Name = "VersionLabelIntroClipDescendants"
VersionLabelIntroClipDescendants.Parent = Intro
VersionLabelIntroClipDescendants.AnchorPoint = Vector2.new(0.5, 0)
VersionLabelIntroClipDescendants.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionLabelIntroClipDescendants.BackgroundTransparency = 1.000
VersionLabelIntroClipDescendants.ClipsDescendants = true
VersionLabelIntroClipDescendants.Position = UDim2.new(0.5, 0, 0.5, 0)
VersionLabelIntroClipDescendants.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
VersionLabelIntroClipDescendants.Font = Enum.Font.GothamSemibold
VersionLabelIntroClipDescendants.Text = ""
VersionLabelIntroClipDescendants.TextColor3 = Color3.fromRGB(205, 255, 233)
VersionLabelIntroClipDescendants.TextSize = 30.000
VersionLabelIntroClipDescendants.TextStrokeTransparency = 0.900
VersionLabelIntroClipDescendants.TextWrapped = true

VersionLabelIntro.Name = "VersionLabelIntro"
VersionLabelIntro.Parent = VersionLabelIntroClipDescendants
VersionLabelIntro.AnchorPoint = Vector2.new(0.5, 1)
VersionLabelIntro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionLabelIntro.BackgroundTransparency = 1.000
VersionLabelIntro.Position = UDim2.new(0.5, 0, 0, 0)
VersionLabelIntro.Size = UDim2.new(1, 0, 1, 0)
VersionLabelIntro.Font = Enum.Font.GothamSemibold
VersionLabelIntro.Text = "V3.0.0"
VersionLabelIntro.TextColor3 = Color3.fromRGB(205, 255, 233)
VersionLabelIntro.TextSize = 30.000
VersionLabelIntro.TextTransparency = 0
VersionLabelIntro.TextStrokeTransparency = 0.9
VersionLabelIntro.TextWrapped = true

Main.Name = "Main"
Main.Parent = OverflowScreenGui

FrameCmdBar.Name = "FrameCmdBar"
FrameCmdBar.Parent = Main
FrameCmdBar.AnchorPoint = Vector2.new(1, 1)
FrameCmdBar.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
FrameCmdBar.BorderSizePixel = 0
FrameCmdBar.Position = UDim2.new(1.26699996, 0, 1, 0)
FrameCmdBar.Size = UDim2.new(0.26699999, 0, 0, 25)

ArrowThing.Name = "ArrowThing"
ArrowThing.Parent = FrameCmdBar
ArrowThing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ArrowThing.BackgroundTransparency = 1.000
ArrowThing.Position = UDim2.new(0, 0, -0.0399999991, 0)
ArrowThing.Size = UDim2.new(0.100000001, 0, 0.925000012, 0)
ArrowThing.Font = Enum.Font.GothamBlack
ArrowThing.Text = ">"
ArrowThing.TextColor3 = Color3.fromRGB(255, 255, 255)
ArrowThing.TextSize = 25.000

CmdBar.Name = "CmdBar"
CmdBar.Parent = FrameCmdBar
CmdBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdBar.BackgroundTransparency = 1.000
CmdBar.Position = UDim2.new(0.109999999, 0, 0, 0)
CmdBar.Size = UDim2.new(1, 0, 0.925000012, 0)
CmdBar.ClearTextOnFocus = false
CmdBar.Font = Enum.Font.Code
CmdBar.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
CmdBar.PlaceholderText = "Command here"
CmdBar.Text = ""
CmdBar.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdBar.TextSize = 14.000
CmdBar.TextTransparency = 0.150
CmdBar.TextXAlignment = Enum.TextXAlignment.Left

line.Name = "line"
line.Parent = FrameCmdBar
line.AnchorPoint = Vector2.new(0, 1)
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 0, 1, 0)
line.Size = UDim2.new(1, 0, 0.075000003, 0)

Cmdlist.Name = "-Cmdlist"
Cmdlist.Parent = FrameCmdBar
Cmdlist.Active = true
Cmdlist.AnchorPoint = Vector2.new(0, 1)
Cmdlist.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Cmdlist.BackgroundTransparency = 0.650
Cmdlist.BorderColor3 = Color3.fromRGB(56, 56, 56)
Cmdlist.Position = UDim2.new(1, 0, -0.150000006, 0)
Cmdlist.Size = UDim2.new(1, 0, 0, 221)
Cmdlist.CanvasSize = UDim2.new(0, 0, 20, 0)
Cmdlist.ScrollBarThickness = 5

UIListLayout.Parent = Cmdlist
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

ExampleCmd.Name = "ExampleCmd"
ExampleCmd.Parent = Cmdlist
ExampleCmd.Visible = false
ExampleCmd.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
ExampleCmd.BorderSizePixel = 0
ExampleCmd.Size = UDim2.new(0.975000024, 0, 0, 21)

line_2.Name = "line"
line_2.Parent = ExampleCmd
line_2.AnchorPoint = Vector2.new(0, 1)
line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_2.BorderSizePixel = 0
line_2.Position = UDim2.new(0, 0, 1, 0)
line_2.Size = UDim2.new(1, 0, 0.0500000007, 0)

CmdNameBtn.Name = "CmdNameBtn"
CmdNameBtn.Parent = ExampleCmd
CmdNameBtn.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
CmdNameBtn.BackgroundTransparency = 1
CmdNameBtn.BorderColor3 = Color3.fromRGB(56, 56, 56)
CmdNameBtn.Position = UDim2.new(0.045157969, 0, 0.137148857, 0)
CmdNameBtn.Size = UDim2.new(0.95, 0, 0, 13)
CmdNameBtn.Font = Enum.Font.Gotham
CmdNameBtn.Text = ""
CmdNameBtn.TextWrapped = true
CmdNameBtn.TextColor3 = Color3.fromRGB(255, 0, 255)
CmdNameBtn.TextSize = 14.000
CmdNameBtn.TextXAlignment = Enum.TextXAlignment.Left
CmdNameBtn.TextYAlignment = Enum.TextYAlignment.Top

NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = Main
NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
NotificationFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
NotificationFrame.BackgroundTransparency = 0.200
NotificationFrame.BorderColor3 = Color3.fromRGB(56, 56, 56)
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Position = UDim2.new(0.5, 0, -0.275, 0)
NotificationFrame.Size = UDim2.new(0, 336, 0, 105)

line_3.Name = "line"
line_3.Parent = NotificationFrame
line_3.AnchorPoint = Vector2.new(0, 1)
line_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_3.BorderSizePixel = 0
line_3.Position = UDim2.new(0, 0, 1, 0)
line_3.Size = UDim2.new(0, 336, 0, 4)

Title.Name = "Title"
Title.Parent = NotificationFrame
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.5, 0, 0.0149999997, 0)
Title.Size = UDim2.new(0.600000024, 0, 0.150000006, 0)
Title.Font = Enum.Font.Gotham
Title.Text = "Title"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 15.000
Title.TextWrapped = true

timelabel.Name = "timelabel"
timelabel.Parent = NotificationFrame
timelabel.BackgroundColor3 = Color3.fromRGB(74, 84, 88)
timelabel.BackgroundTransparency = 1.000
timelabel.BorderColor3 = Color3.fromRGB(74, 84, 88)
timelabel.Position = UDim2.new(0.863610208, 0, 0.74667269, 0)
timelabel.Size = UDim2.new(0, 35, 0, 13)
timelabel.Font = Enum.Font.Gotham
timelabel.Text = ""
timelabel.TextColor3 = Color3.fromRGB(255, 0, 255)
timelabel.TextSize = 13.000

Exit.Name = "Exit"
Exit.Parent = NotificationFrame
Exit.BackgroundColor3 = Color3.fromRGB(197, 0, 0)
Exit.BorderColor3 = Color3.fromRGB(197, 0, 0)
Exit.Position = UDim2.new(0.943475246, 0, 0.0666666701, 0)
Exit.Size = UDim2.new(0, 9, 0, 8)
Exit.Font = Enum.Font.Gotham
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(197, 191, 186)
Exit.TextScaled = true
Exit.TextSize = 100.000
Exit.TextWrapped = true

Body.Name = "Body"
Body.Parent = NotificationFrame
Body.AnchorPoint = Vector2.new(0.5, 0)
Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body.BackgroundTransparency = 1.000
Body.Position = UDim2.new(0.5, 0, 0.300000012, 0)
Body.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
Body.Font = Enum.Font.Gotham
Body.Text = "Body"
Body.TextWrapped = true
Body.TextColor3 = Color3.fromRGB(255, 255, 255)
Body.TextSize = 14.000

IntroBlurEffect.Name = "IntroBlurEffect"
IntroBlurEffect.Parent = game:GetService("Lighting")
IntroBlurEffect.Enabled = true
IntroBlurEffect.Size = 0 -- 10


--/ Functions

function Admin.Notify(subjecttext, bodytext, possibletimer) -- possibletimer[1] = starttime in seconds, possibletimer[2] = endtime in seconds, possibletimer[3] = number to decrease timer with
    spawn(function()
        local Notification = NotificationFrame:Clone()
        Notification.Name = "-NewNotification"
        Notification.Visible = false
        Notification.Parent = Main
        local NotificationRemove = false

        Notification.BackgroundTransparency = 1
        for i, v in pairs(Notification:GetDescendants()) do
            if v:IsA("GuiObject") and v.Visible == true then
                if v.ClassName ~= "ImageLabel" and v.ClassName ~= "ImageButton" then
                    v.BackgroundTransparency = 1
                elseif v.ClassName == "CmdNameBtn" or v.ClassName == "TextButton" and v.Name ~= "timelabel" then
                    v.BackgroundTransparency = 1
                    v.TextTransparency = 1
                    v.TextStrokeTransparency = 1
                else
                    v.ImageTransparency = 1
                end
            end
        end

        Notification:WaitForChild("Title").Text = subjecttext
        Notification:WaitForChild("Body").Text = bodytext

        if Notification.Body.TextFits == false then
            Notification.Body.TextScaled = true
        end
        
        Admin.NotificationFrameAmount = Admin.NotificationFrameAmount + 1 

        Notification.Visible = true

        game:GetService("TweenService"):Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.25}):Play()
        game:GetService("TweenService"):Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.45, 0)}):Play()
        
        game:GetService("TweenService"):Create(Notification.Title, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
        game:GetService("TweenService"):Create(Notification.Body, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
        game:GetService("TweenService"):Create(Notification.Exit, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
        game:GetService("TweenService"):Create(Notification.line, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
        
        Notification.Exit.MouseButton1Down:Connect(function()
            NotificationRemove = true
        end)

        if typeof(possibletimer) == "table" and typeof(possibletimer[1]) == "number" and typeof(possibletimer[2]) == "number" and typeof(possibletimer[3]) == "number" then
            spawn(function()
                
                for i = possibletimer[1], possibletimer[2], -possibletimer[3] do
                    if Notification:FindFirstChild("timelabel") then
                        Notification.timelabel.Text = "(" .. i .. ")"
                    else
                        break
                    end
                    
                    if NotificationRemove == false and Admin.NotificationFrameAmount <= 1 then
                        wait(possibletimer[3])
                    else
                        break
                    end
                end

                if NotificationRemove == false then
                    NotificationRemove = true 
                end
            end)
        end

        repeat
            wait()
        until NotificationRemove == true or OverflowScreenGui.Parent ~= game:GetService("CoreGui") or Admin.NotificationFrameAmount > 1
        
        Admin.NotificationFrameAmount = Admin.NotificationFrameAmount - 1

        game:GetService("TweenService"):Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, -0.5, 0)}):Play()
        wait(0.5)

        Notification:Destroy()
    end)
end

function Admin.UpdateCmdList(cmdguiobject, cmdlistsettings)
    if cmdguiobject and cmdguiobject.Name == "-Cmdlist" and cmdguiobject.ClassName == "ScrollingFrame" then
        
        for i, v in pairs(cmdguiobject:GetChildren()) do
            if v:IsA("GuiObject") and v.Name ~= "ExampleCmd" then
                v:Destroy()
            end
        end
        
        if typeof(cmdlistsettings) == "table" and cmdlistsettings[1] ~= nil and cmdlistsettings[1].ClassName == "TextBox" then
            if cmdlistsettings[2] == "alphabetical" then
                
                cmdguiobject.CanvasSize = UDim2.new(0, 0, 0, 0)

                for i, v in pairs(Admin.Cmds) do
                    if v[1] ~= nil and string.find(string.lower(v[1]), string.lower(string.split(cmdlistsettings[1].Text, " ")[1])) then
                        
                        local Cmd = ExampleCmd:Clone()
                        Cmd.Name = v[1] .. "_Cmd"
                        Cmd.Visible = true
                        Cmd.Parent = cmdguiobject
                        
                        if v[4] ~= nil then
                            Cmd.CmdNameBtn.Text = v[1] .. " [" .. v[4] .. "]"
                        else
                            Cmd.CmdNameBtn.Text = v[1]
                        end
                        
                        Cmd.Size = UDim2.new(0.95, 0, 0, 10e100)
                        Cmd.Size = UDim2.new(0.95, 0, 0, Cmd.CmdNameBtn.TextBounds.Y + 4)
                        Cmd.CmdNameBtn.Size = UDim2.new(0.95, 0, 0, Cmd.CmdNameBtn.TextBounds.Y)
                        
                        cmdguiobject.CanvasSize = UDim2.new(cmdguiobject.CanvasSize.X.Scale, cmdguiobject.CanvasSize.X.Offset, 0, cmdguiobject.CanvasSize.Y.Offset + Cmd.CmdNameBtn.TextBounds.Y + 4)
                        
                        if v[2] ~= nil then
                            Cmd.CmdNameBtn.MouseButton1Down:Connect(function()
                                local createmsg = v[2] .. "\n Argument(s): "
                                
                                if v[4] ~= nil then
                                    createmsg = createmsg .. v[4]
                                else
                                    createmsg = createmsg .. "None."
                                end
        
                                Admin.Notify(v[1] .. " Command", createmsg, "none")
                            end)
                        end
                    end
                end
                
            elseif cmdlistsettings[2] == "none" then
                
                cmdguiobject.CanvasSize = UDim2.new(0, 0, 0, 0)

                for i, v in pairs(Admin.Cmds) do
                    if v[1] ~= nil then
                        
                        local Cmd = ExampleCmd:Clone()
                        Cmd.Name = v[1] .. "_Cmd"
                        Cmd.Visible = true
                        Cmd.Parent = cmdguiobject
                        
                        if v[4] ~= nil then
                            Cmd.CmdNameBtn.Text = v[1] .. " [" .. v[4] .. "]"
                        else
                            Cmd.CmdNameBtn.Text = v[1]
                        end
                        
                        Cmd.Size = UDim2.new(0.95, 0, 0, 10e100)
                        Cmd.Size = UDim2.new(0.95, 0, 0, Cmd.CmdNameBtn.TextBounds.Y + 4)
                        Cmd.CmdNameBtn.Size = UDim2.new(0.95, 0, 0, Cmd.CmdNameBtn.TextBounds.Y)
                        
                        cmdguiobject.CanvasSize = UDim2.new(cmdguiobject.CanvasSize.X.Scale, cmdguiobject.CanvasSize.X.Offset, 0, cmdguiobject.CanvasSize.Y.Offset + Cmd.CmdNameBtn.TextBounds.Y + 4)
                        
                        if v[2] ~= nil then
                            Cmd.CmdNameBtn.MouseButton1Down:Connect(function()
                                local createmsg = v[2] .. "\n Argument(s): "
                                
                                if v[4] ~= nil then
                                    createmsg = createmsg .. v[4]
                                else
                                    createmsg = createmsg .. "None."
                                end
        
                                Admin.Notify(v[1] .. " Command", createmsg, "none")
                            end)
                        end
                    end
                end
                
            end
        end

    end
end

function Admin.GetShortenedPlrFromName(name)
    name = string.lower(tostring(name))
    
    if not game:GetService("Players"):FindFirstChild("me") and name == "me" or game:GetService("Players"):FindFirstChild("me") and game:GetService("Players"):FindFirstChild("me").ClassName ~= "Player" and name == "me" then
        return {LocalPlayer}
    end
    if not game:GetService("Players"):FindFirstChild("all") and name == "all" or game:GetService("Players"):FindFirstChild("all") and game:GetService("Players"):FindFirstChild("all").ClassName ~= "Player" and name == "all" then
        return game:GetService("Players"):GetPlayers()
    end
    if not game:GetService("Players"):FindFirstChild("others") and name == "others" or game:GetService("Players"):FindFirstChild("others") and game:GetService("Players"):FindFirstChild("others").ClassName ~= "Player" and name == "others" then
        name = game:GetService("Players"):GetPlayers()
        for i, v in pairs(name) do
            if v == LocalPlayer then
                table.remove(name, i)
            end
        end
        return name
    end
    
    for i, v in pairs(game.Players:GetPlayers()) do
        if string.lower(string.sub(v.Name, 1, #name)) == name then
            return {v}
        end
    end

    return nil
end

function Admin.AddCommand(cmdname, description, mainfunction, cmdargs)
    for i, v in pairs(Admin.Cmds) do
        if v[1] ~= nil and string.lower(v[1]) == string.lower(cmdname) then
            return nil
        end
    end

    if typeof(mainfunction) == "function" then
        if cmdargs then
            table.insert(Admin.Cmds, {cmdname, description, mainfunction, cmdargs})
        else
            table.insert(Admin.Cmds, {cmdname, description, mainfunction})
        end
    else
        return nil
    end
end



function Admin.GetHatsInWorkspace()
    local amount = 0
    
    for i, v in pairs(game.Workspace:GetDescendants()) do
        if v.ClassName == "Accessory" or v.ClassName == "Hat" then
            if v:FindFirstChild("Handle") and v.Handle.Anchored == false and not game.Players:GetPlayerFromCharacter(v.Parent) then
                amount = amount + 1
            elseif v:FindFirstChild("Handle") and v.Handle.Anchored == false and game.Players:GetPlayerFromCharacter(v.Parent) == game.Players.LocalPlayer then
                amount = amount + 1
            end
        end
    end
    
    return amount
end



--/ Scripting: Intro

game:GetService("TweenService"):Create(IntroBlurEffect, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = 5}):Play()
wait(0.35)

game:GetService("TweenService"):Create(TitleLabelIntro, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 0, TextStrokeTransparency = 0.9}):Play()
wait(0.3)
VersionLabelIntro.Text = "V" .. Settings.Version
game:GetService("TweenService"):Create(VersionLabelIntro, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 1, 0)}):Play()
wait(1.5)

game:GetService("TweenService"):Create(TitleLabelIntro, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 1, TextStrokeTransparency = 1}):Play()
wait(0.25 / 4 * 2.75)
game:GetService("TweenService"):Create(VersionLabelIntro, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 1, TextStrokeTransparency = 1}):Play()
game:GetService("TweenService"):Create(IntroBlurEffect, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = 0}):Play()
wait(0.3)


--/ Main Scripting

-- command box/command(s) functonality/functionalities

if not (typeof(Settings.CommandKey) == "string" and Enum.KeyCode[Settings.CommandKey]) then
    print("Error in command key, key has been set to back slash.")
    Key = "BackSlash"
end

Admin.Events.InputBegan = game:GetService("UserInputService").InputBegan:Connect(function(Key)
    if Key.KeyCode.Name == Settings.CommandKey then
        game:GetService("TweenService"):Create(FrameCmdBar, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Position = UDim2.new(1, 0, 1, 0)}):Play()
        wait(0.05)
        CmdBar:CaptureFocus()
        CmdBar.Text = ""
    end
end)

CmdBar.FocusLost:Connect(function(enterpressed)
    if enterpressed == true then
        
        local getcmd = string.split(string.lower(CmdBar.Text), " ")[1]
        local getargs = string.split(string.lower(CmdBar.Text), " ")
        
        if string.sub(getcmd, 1, #Settings.Prefix) == Settings.Prefix then
            getcmd = string.sub(getcmd, #Settings.Prefix + 1, #getcmd)
        end
        
        for i, v in pairs(string.split(string.lower(CmdBar.Text), ",")) do
            if i ~= 1 then
                table.insert(getargs, v)
            end
        end
        for i, v in pairs(string.split(string.lower(CmdBar.Text), ", ")) do
            if i ~= 1 then
                table.insert(getargs, v)
            end
        end

        table.remove(getargs, 1)

        for i, v in pairs(Admin.Cmds) do
            if v[1] ~= nil and string.find(v[1], "/") then
                for i2, VersionLabel in pairs( string.split(v[1], "/") ) do
                    
                    VersionLabel = string.lower(VersionLabel)
                    if getcmd == VersionLabel then
                        if v[4] ~= nil then
                            v[3](unpack(getargs))
                        else
                            v[3]() 
                        end
                        break
                    end

                end
            elseif v[1] ~= nil then
                v[1] = string.lower(v[1])
                if getcmd == v[1] then
                    if v[4] ~= nil then
                        v[3](unpack(getargs))
                    else
                        v[3]() 
                    end
                    break
                end
            end
        end

        game:GetService("TweenService"):Create(FrameCmdBar, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Position = UDim2.new(1.267, 0, 1, 0)}):Play()
        game:GetService("TweenService"):Create(Cmdlist, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Position = UDim2.new(1, 0, -0.15, 0) }):Play()
	end
end)


LocalPlayer.Chatted:Connect(function(msg)
    if string.sub(msg, 1, #Settings.Prefix) == Settings.Prefix then
        
        local getcmd = string.split(string.lower(msg), " ")[1]
        local getargs = string.split(string.lower(msg), " ")
        
        getcmd = string.sub(getcmd, #Settings.Prefix + 1, #getcmd)

        for i, v in pairs(string.split(string.lower(msg), ",")) do
            if i ~= 1 then
                table.insert(getargs, v)
            end
        end
        for i, v in pairs(string.split(string.lower(msg), ", ")) do
            if i ~= 1 then
                table.insert(getargs, v)
            end
        end

        table.remove(getargs, 1)

        for i, v in pairs(Admin.Cmds) do
            if v[1] ~= nil and string.find(v[1], "/") then
                for i2, VersionLabel in pairs( string.split(v[1], "/") ) do
                    
                    VersionLabel = string.lower(VersionLabel)
                    if getcmd == VersionLabel then
                        wait(0.15)
                        if v[4] ~= nil then
                            v[3](unpack(getargs))
                        else
                            v[3]() 
                        end
                        break
                    end

                end
            elseif v[1] ~= nil then
                print(v[1], v[2])
                v[1] = string.lower(v[1])
                if getcmd == v[1] then
                    if v[4] ~= nil then
                        v[3](unpack(getargs))
                    else
                        v[3]() 
                    end
                    break
                end
            end
        end

    end
end)

CmdBar:GetPropertyChangedSignal("Text"):Connect(function()
    Admin.UpdateCmdList(Cmdlist, {CmdBar, "alphabetical"})
    game:GetService("TweenService"):Create(Cmdlist, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, -0.15, 0) }):Play()
end)


-- creating and adding the actual commands

Admin.AddCommand("Credits", "Notifies the creators of this admin", function()
    Admin.Notify("Welcome", "OverFlow Admin Gui is brought to you by: \nSynttax, ANN0B1S, dhruvil123/Destruidor. \nAdditional commands by red_muta/Uncertain_Times", 7.5)
end)

Admin.AddCommand("Prefix", "Changes the prefix", function(prefix)
    if typeof(prefix) == "string" and #prefix <= 3 then
        Admin.Notify("Changed prefix", "Prefix was succesfully changed to: " .. prefix, 5)
    elseif #prefix > 3 then
        Admin.Notify("Error in prefix", "Prefix cannot be longer than 3 characters", 5)
    end
end, "prefix")

Admin.AddCommand("Runline", "Runs a 1-line of script (a.k.a. the first argument)", function(scriptline)
    local worked, geterror = pcall(function()
        loadstring(tostring(scriptline))()
    end)

    if geterror then
        Admin.Notify("Error in script (runline command)", geterror, 10)
    end
end, "script")

Admin.AddCommand("Guicolor", "Sets color gui in RGB", function(R, B, G)
    if Color3.fromRGB(tonumber(R), tonumber(B), tonumber(G)) ~= nil then
        
        for i, v in pairs(OverflowScreenGui:GetDescendants()) do
            if v.ClassName == "Frame" and v.Name ~= "line" and not v:IsDescendantOf(Intro) then
                v.BackgroundColor3 = Color3.fromRGB(tonumber(R), tonumber(B), tonumber(G))
            end
        end

    else
        Admin.Notify("Error in gui color command", "Arguments need to be RGB (ex. ;Guicolor 255 255 255", "none")
    end
end, "R, G, B")

Admin.AddCommand("Defaultcolor", "Sets color gui to default one", function()
    for i, v in pairs(OverflowScreenGui:GetDescendants()) do
        if v.ClassName == "Frame" and v.Name ~= "line" and not v:IsDescendantOf(Intro) or v.Name == "CmdNameBtn" then
            v.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        end
    end
end)

Admin.AddCommand("Printid", "Prints the current id your humanoid is using", function()
    for i, v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
    Admin.Notify("Got id!", v.Animation.Name .. " | " .. v.Animation.AnimationId, 5)
end
end)

Admin.AddCommand("Fixchat", "If your chat is broken in anyways, this will fix it", function()
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
end)

Admin.AddCommand("Antivoid", "Prevents people from voiding you.", function()
Admin.Notify("Success!", "You will not be able to be voided/claimed by anyone.", 7.5)
game.Players.LocalPlayer.FallenPartsDestroyHeight = 0/0
end)

Admin.AddCommand("Netcheck", "Checks for noobs using networkownership", function()


Admin.AddCommand("Breakroot", "Breats your humanoid root which will prevant things like voiding, tkilling, ect.", function()
Character.Parent = nil
Character:FindFirstChild("HumanoidRootPart"):Destroy()
Character.Parent = workspace
Admin.Notify("Success!", "Your root has been broken.", 7.5)
end)

Admin.AddCommand("Setspawn", "Sets your spawnpoint to your current humanoid cframe position", function()
spawnpos, spawnpoint, lastDeath = nil
spawnpos = LocalPlayer.Character.HumanoidRootPart.CFrame
spawnpoint = true
Admin.Notify("Success!", "Your spawn has been set", 7.5)
end)

local CheckIfWorks = pcall(function()
    gethiddenproperty(LocalPlayer, "SimulationRadius")
end)

local Plrs = {}
local Msg = ""

if CheckIfWorks then
    for i, v in pairs(game.Players:GetPlayers()) do
        if gethiddenproperty(v, "SimulationRadius") >= 5000 then
            table.insert(Plrs, v.Name)
        end
    end

    if #Plrs <= 0 then
        Msg = "Network check ran: No players have been found using networkownership."
    elseif #Plrs == 1 then
        Msg = "Network check ran, the player using network: " .. Plrs[1]
    elseif #Plrs > 1 then
        Msg = "Network check ran, the players using network: "
        for i, v in pairs(Plrs) do
            Msg = Msg .. v .. ", "
        end
        Msg = string.sub(Msg, 1, #Msg - 2)
    end

    return Admin.Notify("Check ran", Msg)
else
    return Admin.Notify("Uh oh", "Error: exploit doesn't support gethiddenproperty/sethiddenproperty?")
end
end)

Admin.AddCommand("Clearhats", "Clears all the hats in the workspace", function()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v.ClassName == "Accessory" or v.ClassName == "Hat" then
            v:Destroy()
        end
    end
    
    
    repeat
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v.ClassName == "Accessory" or v.ClassName == "Hat" then
                if v:FindFirstChild("Handle") and v.Handle.Anchored == false and not game.Players:GetPlayerFromCharacter(v.Parent) then
                    repeat
                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait()
                    until v.Parent == game.Players.LocalPlayer.Character or v.Parent == nil
                    v:Destroy()
                elseif v:FindFirstChild("Handle") and v.Handle.Anchored == false and game.Players:GetPlayerFromCharacter(v.Parent) == game.Players.LocalPlayer then
                    v:Destroy()
                end
            end
        end
        wait()
    until Admin.GetHatsInWorkspace() <= 0
end)

Admin.AddCommand("Findplayer", "Notifies you in it can find the player", function(playername)
    if Admin.GetShortenedPlrFromName(playername) ~= nil and #Admin.GetShortenedPlrFromName(playername) == 1 then
        Admin.Notify("Found player", "Player (" .. Admin.GetShortenedPlrFromName(playername)[1].Name .. ") exists in the server", 10)
    else
        Admin.Notify("Could not find player", "Such player does not exist in the server (or username was spelt wrong?)", 10)
    end
end, "player")

Admin.AddCommand("Rejoin", "Rejoins the server", function(playername)
    spawnpos, spawnpoint, lastDeath = nil
    spawnpos = LocalPlayer.Character.HumanoidRootPart.CFrame
    spawnpoint = true
    if LocalPlayer then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
    else
        Admin.Notify("Error in tp command", "Player or LocalPlayer is not loaded in/is broken?", 10)
    end
end, "player")

Admin.AddCommand("goto/to", "Teleports to player", function(player)
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player
        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if not (LocalPlayer and LocalPlayer.Character) or not (Player and Player.Character) then
                return Admin.Notify("Error in goto/to command", "Player or LocalPlayer does not have character/is not loaded in", 5)
            elseif not (LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or LocalPlayer.Character.PrimaryPart) or not (Player.Character:FindFirstChild("HumanoidRootPart") or Player.Character.PrimaryPart) then
                return Admin.Notify("Error in goto/to command", "Player or LocalPlayer cannot be teleported", 5)
            end
    
            if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Player.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame
            elseif LocalPlayer.Character.PrimaryPart and Player.Character.PrimaryPart then
                LocalPlayer.Character:SetPrimaryPartCFrame(Player.Character.PrimaryPart.CFrame)
            end
        end
    else
        Admin.Notify("Could not find player", "Such player does not exist in the server (or username was spelt wrong?)", 5)
    end
end, "player")

Admin.AddCommand("tp", "Teleports first player argument (player1/players) to second player argument (player2)", function(player1, player2)
    if Admin.GetShortenedPlrFromName(player1) ~= nil and Admin.GetShortenedPlrFromName(player2) ~= nil then
        local Player1
        local Player2

        for i, v in pairs(Admin.GetShortenedPlrFromName(player1)) do
            Player1 = v
            for i2, VersionLabel in pairs(Admin.GetShortenedPlrFromName(player2)) do
                Player2 = VersionLabel
                if not (Player1 and Player1.Character) or not (Player2 and Player2.Character) then
                    return Admin.Notify("Error in tp command", "Player does not have character/is not loaded in", 5)
                elseif not (Player1.Character:FindFirstChild("HumanoidRootPart") or Player1.Character.PrimaryPart) or not (Player2.Character:FindFirstChild("HumanoidRootPart") or Player2.Character.PrimaryPart) then
                    return Admin.Notify("Error in tp command", "Player cannot be teleported", 5)
                end
        
                if Player1.Character:FindFirstChild("HumanoidRootPart") and Player2.Character:FindFirstChild("HumanoidRootPart") then
                    Player1.Character.HumanoidRootPart.CFrame = Player2.Character.HumanoidRootPart.CFrame
                elseif Player1.Character.PrimaryPart and Player2.Character.PrimaryPart then
                    Player1.Character:SetPrimaryPartCFrame(Player2.Character.PrimaryPart.CFrame)
                end
            end

        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player 1, player 2")

Admin.AddCommand("walkspeed/speed/ws", "Sets walkspeed of player, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player, speed)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player
        print(tonumber(speed))
        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if not (Player and Player.Character) then
                return Admin.Notify("Error in walkspeed/speed/ws command", "Player does not have character/is not loaded in", 5)
            elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                return Admin.Notify("Error in walkspeed/speed/ws command", "Player does not have a humanoid", 5)
            end

            if Player.Character:FindFirstChildOfClass("Humanoid") and typeof(tonumber(speed)) == "number" then
                Player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = tonumber(speed)
            elseif typeof(tonumber(speed)) ~= "number" then
                Admin.Notify("Incorrect speed number", "speed value entered is not a number/could not be turned into a number", 5)
            end
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s), speed")

Admin.AddCommand("jumppower/jp", "Sets jumppower of player, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player, power)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player

        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if not (Player and Player.Character) then
                return Admin.Notify("Error in jumppower/jp command", "Player does not have character/is not loaded in", 5)
            elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                return Admin.Notify("Error in jumppower/jp command", "Player does not have a humanoid", 5)
            end

            if Player.Character:FindFirstChildOfClass("Humanoid") and typeof(tonumber(power)) == "number" then
                Player.Character:FindFirstChildOfClass("Humanoid").JumpPower = tonumber(power)
            elseif typeof(tonumber(power)) ~= "number" then
                Admin.Notify("Incorrect jumppower number", "jumppower value entered is not a number/could not be turned into a number", 5)
            end
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s), power")


Admin.AddCommand("hipheight/hh", "Sets hipheight of player, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player, height)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player

        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if not (Player and Player.Character) then
                return Admin.Notify("Error in hipheight/hh command", "Player does not have character/is not loaded in", 5)
            elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                return Admin.Notify("Error in hipheight/hh command", "Player does not have a humanoid", 5)
            end

            if Player.Character:FindFirstChildOfClass("Humanoid") and typeof(tonumber(height)) == "number" then
                Player.Character:FindFirstChildOfClass("Humanoid").HipHeight = tonumber(height)
            elseif typeof(tonumber(height)) ~= "number" then
                Admin.Notify("Incorrect hipheight number", "hipheight value entered is not a number/could not be turned into a number", 5)
            end
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s), height")

Admin.AddCommand("noclip", "Noclips player until disabled/player dies, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player

        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if not (Player and Player.Character) then
                return Admin.Notify("Error in noclip command", "Player does not have character/is not loaded in", 5)
            elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                return Admin.Notify("Error in noclip command", "Player does not have a humanoid", 5)
            end

            if Player.Character:FindFirstChild("-Noclipped") then
                Player.Character:FindFirstChild("-Noclipped"):Destroy()
            end
            
            local Noclipped = Instance.new("ObjectValue")
            Noclipped.Name = "-Noclipped"
            Noclipped.Parent = Player.Character

            local LoopTillEnd
            LoopTillEnd = game:GetService("RunService").Stepped:Connect(function()
                if Player and Player.Character and Player.Character:FindFirstChild("-Noclipped") then
                    for i2, VersionLabel in pairs(Player.Character:GetDescendants()) do
                        if VersionLabel:IsA("BasePart") then
                            VersionLabel.CanCollide = false
                        end
                    end
                else
                    LoopTillEnd:Disconnect()
                end
            end)
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s)")

Admin.AddCommand("clip", "Disables player noclip if player is noclipped with noclip command, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player

        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if Player and Player.Character and Player.Character:FindFirstChild("-Noclipped") then
                Player.Character:FindFirstChild("-Noclipped"):Destroy()
            end
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s)")

Admin.AddCommand("Swim", "Air swims player until disabled/player dies, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player

        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if not (Player and Player.Character) then
                return Admin.Notify("Error in swim command", "Player does not have character/is not loaded in", 5)
            elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                return Admin.Notify("Error in swim command", "Player does not have a humanoid", 5)
            end

            if Player.Character:FindFirstChild("-Airswimming") then
                Player.Character:FindFirstChild("-Airswimming"):Destroy()
            end
            
            local Noclipped = Instance.new("ObjectValue")
            Noclipped.Name = "-Airswimming"
            Noclipped.Parent = Player.Character

            local LoopTillEnd
            LoopTillEnd = game:GetService("RunService").Stepped:Connect(function()
                if Player and Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") and Player.Character:FindFirstChild("-Noclipped") then
                    Player.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Swimming, true)
                else
                    LoopTillEnd:Disconnect()
                end
            end)
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s)")

Admin.AddCommand("Unswim", "Disables player swim if player is swimming/airswimming with swim command, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player

        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if Player and Player.Character and Player.Character:FindFirstChild("-Airswimming") then
                Player.Character:FindFirstChild("-Airswimming"):Destroy()
            end
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s)")

Admin.AddCommand("changestate", "Changes player's humanoid state until disabled/player dies, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player, numberstate)
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player

        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if not (Player and Player.Character) then
                return Admin.Notify("Error in changestate command", "Player does not have character/is not loaded in", 5)
            elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                return Admin.Notify("Error in changestate command", "Player does not have a humanoid", 5)
            end

            if typeof(tonumber(numberstate)) ~= "number" then
                return Admin.Notify("Error in changestate command", "number state is not a number/could not be turned into a number", 5)
            end

            if Player.Character:FindFirstChild("-Statechanging") then
                Player.Character:FindFirstChild("-Statechanging"):Destroy()
            end
            
            local Noclipped = Instance.new("ObjectValue")
            Noclipped.Name = "-Statechanging"
            Noclipped.Parent = Player.Character

            local LoopTillEnd
            LoopTillEnd = game:GetService("RunService").Stepped:Connect(function()
                if Player and Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") and Player.Character:FindFirstChild("-Statechanging") then
                    for i2, VersionLabel in pairs(Player.Character:GetDescendants()) do
                        if VersionLabel.ClassName == "Humanoid" then
                            VersionLabel:ChangeState(tonumber(numberstate))
                        end
                    end
                else
                    LoopTillEnd:Disconnect()
                end
            end)
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s), numberstate")

Admin.AddCommand("unchangestate", "Disables player changestate if player is statechanged with changestate command, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player

        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if Player and Player.Character and Player.Character:FindFirstChild("-Statechanging") then
                Player.Character:FindFirstChild("-Statechanging"):Destroy()
            end
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s)")

Admin.AddCommand("kill", "Kills player, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player
        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if Player and Player.Character and Player.Character then
                Player.Character:BreakJoints()
            end
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s)")

Admin.AddCommand("tkill", "TouchKills player", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player
        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            if i > 1 then
                break
            end
            
            Player = v

            if LocalPlayer.Character.PrimaryPart ~= nil then
                local Character = LocalPlayer.Character
                local previous = LocalPlayer.Character.PrimaryPart.CFrame
                
                Character.Archivable = true
                local Clone = Character:Clone()
                LocalPlayer.Character = Clone
                wait(3)
                LocalPlayer.Character = Character
                wait(0.35)
                
                if LocalPlayer.Character and Player.Character and Player.Character.PrimaryPart ~= nil then
                    if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                        LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):Destroy()
                    end
    
                    local Humanoid = Instance.new("Humanoid")
                    Humanoid.Parent = LocalPlayer.Character
    
                    local Tool = nil
    
                    if LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                        Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    elseif LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
                        Tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                    end
                    print(Tool)

                    if Tool ~= nil then
                        Tool.Parent = LocalPlayer.Backpack

                        local Arm = game.Players.LocalPlayer.Character['Right Arm'].CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
                        Tool.Grip = Arm:ToObjectSpace(Player.Character.PrimaryPart.CFrame):Inverse()
                        
                        Tool.Parent = LocalPlayer.Character
                        Workspace.CurrentCamera.CameraSubject = Tool.Handle
                        repeat
                            wait()
                        until not Tool or Tool and (Tool.Parent == Workspace or Tool.Parent == Player.Character)
        
                        Humanoid.Health = 0
                        LocalPlayer.Character = nil
                    end
                end

                LocalPlayer.CharacterAdded:Wait()
                repeat wait() until LocalPlayer.Character.PrimaryPart ~= nil
                
                LocalPlayer.Character:SetPrimaryPartCFrame(previous)
            else
                break
            end
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s)")

Admin.AddCommand("frespawn/fastrespawn/fspawn", "Respawns you quicker than usual.", function()   
    spawnpos, spawnpoint, lastDeath = nil
    spawnpos = LocalPlayer.Character.HumanoidRootPart.CFrame
    spawnpoint = true
    local originalchar = game.Players.LocalPlayer.Character
    local clonedchar = originalchar:Clone()
    local heartbeat
    heartbeat = game:GetService("RunService").Heartbeat:Connect(function()
        for i = 1, 10 do 
            LocalPlayer.Character = clonedchar
            LocalPlayer.Character = originalchar
        end
    end)
    
    wait(0.6)
    originalchar:FindFirstChildOfClass("Humanoid").Health = 0
    originalchar.AncestryChanged:Wait()
    heartbeat:Disconnect()
end)

Admin.AddCommand("claim", "Claims player with networkownership.", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player

        if LocalPlayer and LocalPlayer.Character and (LocalPlayer.Character:FindFirstChild("Right Arm") and LocalPlayer.Character:FindFirstChild("Right Arm"):IsA("BasePart") or LocalPlayer.Character:FindFirstChild("Right Hand") and LocalPlayer.Character:FindFirstChild("Right Hand"):IsA("BasePart")) then
            if LocalPlayer.Character:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
                local Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                
            
                for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
                    Player = v
                    if Player and Player.Character and (Player.Character:FindFirstChild("Right Arm") and Player.Character:FindFirstChild("Right Arm"):IsA("BasePart") or Player.Character:FindFirstChild("Right Hand") and Player.Character:FindFirstChild("Right Hand"):IsA("BasePart")) then
                        LocalPlayer.Character['Left Leg']:Destroy()
                        LocalPlayer.Character['Right Leg']:Destroy()
                        LocalPlayer.Character['Left Arm']:Destroy()
                        wait(0.2544556)

                        if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then 
                            LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):Destroy()
                        end
                        Instance.new("Humanoid").Parent = LocalPlayer.Character

                        Tool.Parent = LocalPlayer.Character
                        if Tool:FindFirstChild("Handle") and Player.Character.PrimaryPart ~= nil then
                            repeat
                                Player.Character:SetPrimaryPartCFrame(Tool.Handle.CFrame)
                                game:GetService("RunService").Stepped:Wait()
                            until Tool.Parent == Player.Character

                            Workspace.FallenPartsDestroyHeight = 0/1/0
                            local CurrentCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                            wait(0.3)

                            for i = 1, 10 do
                                LocalPlayer.Character.HumanoidRootPart.CFrame = CurrentCFrame - Vector3.new(0, math.huge, 0)
                            end
                            wait(0.3)

                            for i = 1, 10 do
                                LocalPlayer.Character.HumanoidRootPart.CFrame = CurrentCFrame
                            end
                            
                            LocalPlayer.CharacterAdded:Wait()
                            repeat
                                wait()
                            until LocalPlayer.Character.HumanoidRootPart and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("Torso") and LocalPlayer.Character.Torso:FindFirstChild("Neck")
                        
                            if #Admin.GetShortenedPlrFromName(player) > 1 then
                                repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                            end
                        end
                    end
                end
            else
                return Admin.Notify("Need 1 tool", "You need at least 1 tool in order to claim player", 5)
            end
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s)")





local NewClaim = function(plr)
    if plr then
        local Target = plr
        local Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
        if Tool then
        spawn(function()
            game:GetService("RunService").Heartbeat:Connect(function()
                LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
                pcall(function() sethiddenproperty(LocalPlayer, "SimulationRadius", math.pow(math.huge, math.huge) * math.huge) end)

                for i, v in pairs(game.Players:GetPlayers()) do
                    if v ~= LocalPlayer then
                        LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
                        pcall(function() settings().Physics.AllowSleep = false ; sethiddenproperty(LocalPlayer, "SimulationRadius", math.pow(math.huge, math.huge) * math.huge) end)
                        LocalPlayer.ReplicationFocus = Workspace
                    end
                end
            end)
        end)
        Workspace.FallenPartsDestroyHeight =  -50000
        local Pos = LocalPlayer.Character.HumanoidRootPart.CFrame
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -5000, 0)
        local Old = LocalPlayer.Character.Humanoid
        Old.Name = "1"
        local New = Old:Clone()
        New.Name = "Humanoid"
        New.Parent = LocalPlayer.Character
        wait(0.1)
        Old:Destroy()
        wait(0.1)
        Tool.Parent = LocalPlayer.Character
        spawn(function()
            repeat
            game:GetService("RunService").RenderStepped:Wait()
            if LocalPlayer.Character and Tool.Parent ~= Target.Character then
                if LocalPlayer.Character:FindFirstChild("Right Arm") then
                local Arm = LocalPlayer.Character:FindFirstChild("Right Arm")
                local ArmCFrame = Arm.CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
                local Vic = Target.Character.HumanoidRootPart.CFrame
                LocalPlayer.Character.HumanoidRootPart.CFrame = Vic
                Tool.Grip = ArmCFrame:toObjectSpace(Vic):inverse()
                end
            end
            until Tool.Parent == Target.Character
            LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
            New.Health = 0
            Tool.Parent = LocalPlayer.Character
            wait(0.1)
            if Target.Character:FindFirstChild("HumanoidRootPart") then
            if isnetworkowner(Target.Character:FindFirstChild("HumanoidRootPart")) then
                print("Successfully!")
                Target.Character:FindFirstChild("HumanoidRootPart").CFrame = Pos
                spawn(function()
                for i = 1, 10 do
                    for i,v in pairs(Target.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.Velocity = Vector3.new(0, 0, 0)
                    end
                    end
                    game:GetService("RunService").RenderStepped:Wait()
                end
                end)
            end
            end

            LocalPlayer.CharacterAdded:Wait()
            repeat game:GetService("RunService").RenderStepped:Wait() until LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end)
        end
    end
end

Admin.AddCommand("fastclaim/fclaim", "Fast claims player with networkownership.", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player

        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            NewClaim(Player)
        end
    else
        Admin.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", 5)
    end
end, "player(s)")  

Admin.AddCommand("clearchar/clearcharacter", "Clears your character", function()   
    if LocalPlayer and LocalPlayer.Character then
        LocalPlayer.Character:ClearAllChildren()
    end
end)

Admin.AddCommand("playid", "Plays and replicates any animation id.", function(id)   
    if typeof(tonumber(id)) == "number" then
        
        --clone character
        LocalPlayer.Character.Archivable = true
        local OldChar = LocalPlayer.Character
        local FakeChar = LocalPlayer.Character:Clone()
        FakeChar.Parent = workspace
        FakeChar.Name = "aeaeaehajkgfhsjkdgfafklgryhugbjfdsjihgler Cloned Character"
        workspace.CurrentCamera.CameraSubject=FakeChar.Humanoid

        --network
        local NetworkAccess = coroutine.create(function()
        while true do game:GetService("RunService").RenderStepped:Wait()
        game:GetService("Players").LocalPlayer.ReplicationFocus = workspace
        game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge*math.huge) end end)
        coroutine.resume(NetworkAccess)

        --vanity shit
        for i, v in pairs(FakeChar:GetDescendants()) do
            if v:IsA("Part") then
                v.Transparency = 1 
            end
            if v:IsA("SpecialMesh") then
            v.MeshId = "rbxassetid://0" 
            end
        end

        --noclip
        game:GetService('RunService').Stepped:Connect(function()
            pcall(function()
            FakeChar:FindFirstChild("Head").CanCollide = false
            FakeChar:FindFirstChild("Torso").CanCollide = false
            for i, v in pairs(FakeChar:GetDescendants()) do if v:IsA'Part' or v:IsA'Decal' then v.Transparency = 1 end if v:IsA'Sound' then v.Volume = 0 end end
            LocalPlayer.Character.Head.CanCollide = false
            LocalPlayer.Character.Torso.CanCollide = false
            end)
        end)
        game:GetService('RunService').RenderStepped:Connect(function()
            pcall(function()
            FakeChar:FindFirstChild("Head").CanCollide = false
            FakeChar:FindFirstChild("Torso").CanCollide = false
            for i, v in pairs(FakeChar:GetDescendants()) do if v:IsA'Part' or v:IsA'Decal' then v.Transparency = 1 end if v:IsA'Sound' then v.Volume = 0 end end
            LocalPlayer.Character.Head.CanCollide = false
            LocalPlayer.Character.Torso.CanCollide = false
            end)
        end)
        game:GetService('RunService').Heartbeat:Connect(function()
            pcall(function()
            FakeChar:FindFirstChild("Head").CanCollide = false
            FakeChar:FindFirstChild("Torso").CanCollide = false
            for i, v in pairs(FakeChar:GetDescendants()) do if v:IsA'Part' or v:IsA'Decal' then v.Transparency = 1 end if v:IsA'Sound' then v.Volume = 0 end end
            LocalPlayer.Character.Head.CanCollide = false
            LocalPlayer.Character.Torso.CanCollide = false
            end)
        end)






        --functions
        function died()
            LocalPlayer.Character = OldChar
            FakeChar:Destroy()
            LocalPlayer.Character:BreakJoints()
        end
        function Align(Part1,Part0,Position,Angle)
            local AlignPos = Instance.new('AlignPosition', Part1);
            AlignPos.Parent.CanCollide = false;
            AlignPos.ApplyAtCenterOfMass = true;
            AlignPos.MaxForce = 67752;
            AlignPos.MaxVelocity = math.huge/9e110;
            AlignPos.ReactionForceEnabled = false;
            AlignPos.Responsiveness = 200;
            AlignPos.RigidityEnabled = false;
            local AlignOri = Instance.new('AlignOrientation', Part1);
            AlignOri.MaxAngularVelocity = math.huge/9e110;
            AlignOri.MaxTorque = 67752;
            AlignOri.PrimaryAxisOnly = false;
            AlignOri.ReactionTorqueEnabled = false;
            AlignOri.Responsiveness = 200;
            AlignOri.RigidityEnabled = false;
            local AttachmentA=Instance.new('Attachment',Part1);
            local AttachmentB=Instance.new('Attachment',Part0);
            AttachmentB.Orientation = Angle
            AttachmentB.Position = Position
            AlignPos.Attachment0 = AttachmentA;
            AlignPos.Attachment1 = AttachmentB;
            AlignOri.Attachment0 = AttachmentA;
            AlignOri.Attachment1 = AttachmentB;
        end
        function LoadLibrary(a)
            return loadstring(game:HttpGet("https://pastebin.com/raw/KstdzZVB", true))() 
        end
        --setup character for rigging
        LocalPlayer.Character.Torso['Right Shoulder']:Destroy()
        LocalPlayer.Character.Torso['Left Shoulder']:Destroy()
        LocalPlayer.Character.Torso['Right Hip']:Destroy()
        LocalPlayer.Character.Torso['Left Hip']:Destroy()
        LocalPlayer.Character.HumanoidRootPart['RootJoint']:Destroy()
        LocalPlayer.Character.HumanoidRootPart.Anchored = true
        LocalPlayer.Character.Humanoid.PlatformStand = true
        FakeChar['Torso'].Position = LocalPlayer.Character['Torso'].Position


        -- align bodyparts
        for i, v in pairs(LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") and v.Name ~= "Head" then
                if v.Name == "Torso" then
                    Align(LocalPlayer.Character[v.Name],FakeChar[v.Name],Vector3.new(0,0.5,0),Vector3.new(0,0,0))
                else
                    Align(LocalPlayer.Character[v.Name],FakeChar[v.Name],Vector3.new(0,0,0),Vector3.new(0,0,0))
                end
            end
        end
        
        --cleanup
        FakeChar.Humanoid.Died:Connect(died)
        LocalPlayer.Character.Humanoid.Died:Connect(died)

        LocalPlayer.Character=FakeChar
        wait(.5)

        local kfs = game:GetObjects('rbxassetid://' .. tostring(id))[1];
        local poses = {};
        local frames = {};
        local plr = game.Players.LocalPlayer;
        local chr = plr.Character;
        local hum = chr.Humanoid;
        for i, v in pairs(kfs:GetChildren()) do
            table.insert(frames, v.Time)
            poses[v.Time] = {};
            for o, b in pairs(v:GetDescendants()) do
                b.Parent = v;
                table.insert(poses[v.Time], b);
            end
        end
        hum.Animator.Parent = nil;
        for i, v in pairs(hum:GetPlayingAnimationTracks()) do
            v:Stop();
        end
        function swait(n)
            if n > 1 then for i = 1, n do
                game.RunService.Heartbeat:Wait();
            end elseif n == 1 then game.RunService.Heartbeat:Wait() elseif n == 0 then game.RunService.RenderStepped:Wait() end
        end
        local timex = 1;
        local run = true;
        spawn(function() hum.Died:Connect(function() run = false print'stop' end) end);
        while run do
            for i, v in pairs(frames) do
                swait(timex);
                for o, b in pairs(poses[v]) do
                    if b.Name == 'Left Leg' then
                        chr.Torso['Left Hip'].Transform = b.CFrame;
                    end
                    if b.Name == 'Right Leg' then
                        chr.Torso['Right Hip'].Transform = b.CFrame;
                    end
                    if b.Name == 'Left Arm' then
                        chr.Torso['Left Shoulder'].Transform = b.CFrame;
                    end
                    if b.Name == 'Right Arm' then
                        chr.Torso['Right Shoulder'].Transform = b.CFrame;
                    end
                    if b.Name == 'Torso' then
                        chr.HumanoidRootPart['RootJoint'].Transform = b.CFrame;
                    end
                    if b.Name == 'Head' then
                        chr.Torso['Neck'].Transform = b.CFrame;
                    end
                end
            end
        end

    else
        Admin.Notify("Error in playid animation", "ID must be a number/could not be turned into a number", 5)
    end
end, "id")

Admin.AddCommand("hugkill", "Kills player with a tool by hugging and flinging player, can NOT be used on yourself", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player
        local ToolThings = {Tool, PreviousGrip}
        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            if Player ~= LocalPlayer and Player.Character and Player.Character:FindFirstChild("Right Arm") and Player.Character:FindFirstChild("Right Arm").ClassName == "Part" and LocalPlayer.Character and LocalPlayer.Backpack then
                if LocalPlayer.Character:FindFirstChildOfClass("Tool") and LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("Part") then
                    ToolThings.Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                elseif LocalPlayer.Backpack:FindFirstChildOfClass("Tool") and LocalPlayer.Backpack:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("Part") then
                    ToolThings.Tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                end

                if ToolThings.Tool ~= nil then
                    ToolThings.Tool.Parent = LocalPlayer.Backpack
                    ToolThings.PreviousGrip = ToolThings.Tool.Grip
                    wait()
                    ToolThings.Tool.Grip = CFrame.new(Vector3.new(1e308, 1e308, 1e308))

                    if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Anchored = true
                    end
                    if LocalPlayer.Character.PrimaryPart then
                        LocalPlayer.Character.PrimaryPart.Anchored = true
                    end
                    wait()
                    ToolThings.Tool.Parent = LocalPlayer.Character
                    wait()
                    ToolThings.Tool.Grip = ToolThings.PreviousGrip
                    wait()
                    if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Anchored = false
                    end
                    if LocalPlayer.Character.PrimaryPart then
                        LocalPlayer.Character.PrimaryPart.Anchored = false
                    end

                    repeat
                        if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Player.Character.PrimaryPart.CFrame - Player.Character.PrimaryPart.CFrame.RightVector * 1 - Player.Character.PrimaryPart.CFrame.LookVector * 1 + Vector3.new(math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100)
                        elseif LocalPlayer.Character.PrimaryPart then
                            LocalPlayer.Character:SetPrimaryPartCFrame(Player.Character.PrimaryPart.CFrame + CFrame.new(Player.Character.PrimaryPart.CFrame.RightVector * -1 - Player.Character.PrimaryPart.CFrame.LookVector * 1 + Vector3.new(math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100)))
                        end
                        game:GetService("RunService").Stepped:Wait()
                    until not (Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character.HumanoidRootPart.Velocity.X < 100 and Player.Character.HumanoidRootPart.Velocity.Y < 100 and Player.Character.HumanoidRootPart.Velocity.Z < 100)
                    or not (Player and Player.Character and Player.Character.PrimaryPart and Player.Character.PrimaryPart.Velocity.X < 100 and Player.Character.PrimaryPart.Velocity.Y < 100 and Player.Character.PrimaryPart.Velocity.Z < 100)

                    ToolThings.Tool.Parent = LocalPlayer.Backpack
                    ToolThings.Tool.Parent = LocalPlayer.Character
                else
                    return Admin.Notify("Error in hugkill command", "You need at least 1 tool for this to work", 5)
                end
            end
        end
    end
end, "player(s)")



Admin.AddCommand("servercrasher", "Crashes server. If not, lags server really badly.", function(strength)
    if typeof(tonumber(strength)) == "number" then
        wait(0.45)
        local moduleApiTable = require(game.Players.LocalPlayer.PlayerScripts.ChatScript.ChatMain)
                            
        for i = 1, tonumber(strength) do
            moduleApiTable.MessagePosted:fire(string.rep(":clean ", 19000))
        end
    else
        return Admin.Notify("Incorrect strength number", "Strength value is not a number/could not be turned into a number", 5)
    end
end, "strength")

Admin.AddCommand("Fakechat", "Creates a fake white chat message from another user in chat", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player
        
        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            local msg = ""

            if string.split(string.lower(CmdBar.Text), " ")[3] then
                for i2, v2 in pairs(string.split(string.lower(CmdBar.Text), " ")) do
                    if i2 >= 3 then
                        msg = msg .. " " .. v2
                    end
                end
            end

            if string.split(string.lower(CmdBar.Text), ",")[3] then
                for i2, v2 in pairs(string.split(string.lower(CmdBar.Text), ",")) do
                    if i2 >= 3 then
                        msg = msg .. "," .. v2
                    end
                end
            end

            if string.split(string.lower(CmdBar.Text), ", ")[3] then
                for i2, v2 in pairs(string.split(string.lower(CmdBar.Text), ", ")) do
                    if i2 >= 3 then
                        msg = msg .. ", " .. v2
                    end
                end
            end

            if typeof(tostring(msg)) == "string" then
                msg = tostring(msg)
                local Worked = nil
                Worked = pcall(function()
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("What?  à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·[" .. Player.Name .. "]: " .. msg, "ALL")
                end)

                if not Worked then
                    Worked = pcall(function()
                        setclipboard("What?  à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·à¹Ž à¹ŽÌ·[" .. Player.Name .. "]: " .. msg)
                    end)
                    if Worked then
                        Admin.Notify("Error", "Game might have custom chat instead of default chat, ", 5)
                        wait(0.1)
                        Admin.Notify("Copied fake message instead", "Copied the message to your clipboard to paste in chat.", 5)
                    else
                        Admin.Notify("Error", "Game might have custom chat instead of default chat, ", 5)
                        wait(0.1)
                        Admin.Notify("Could not copy fake message", "Attempted to copy fake message but failed, exploit doesn't support setclipboard() function?", 5)
                    end
                end
            end
        end
    end
end, "player(s)", "message")

Admin.AddCommand("GrabKnife", "Loads FE grab knife remake", function()
    local KnifeAccessory

    if LocalPlayer:FindFirstChild("-Running") then
        return Admin.Notify("Command: " .. LocalPlayer["-Running"].Value .. " is already running.", 7)
    elseif not LocalPlayer.Character:FindFirstChildOfClass("Accessory") then
        return Admin.Notify("You need at least 1 hat or preferably accessory: https://www.roblox.com/catalog/4684948729/Kawaii-Knife", 7)
    else

        if LocalPlayer.Character:FindFirstChild("YandereKnife") and LocalPlayer.Character["YandereKnife"].ClassName == "Accessory" then
            KnifeAccessory = LocalPlayer.Character["YandereKnife"]
        else
            KnifeAccessory = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
        end

        local Running = Instance.new("StringValue")
        Running.Parent = LocalPlayer
        Running.Name = "-Running"
        Running.Value = "Grab Knife"

        


        local LeftArm = LocalPlayer.Character["Left Arm"]:Clone()
        LeftArm.Parent = LocalPlayer.Character
        LeftArm.Name = "LeftArm"
        LeftArm.Transparency = 1
        LeftArm:ClearAllChildren()

        local RightArm = LocalPlayer.Character["Right Arm"]:Clone()
        RightArm.Parent = LocalPlayer.Character
        RightArm.Name = "RightArm"
        RightArm.Transparency = 1
        RightArm:ClearAllChildren()

        local Stuff = {
            Events = {}, 
            Debounces = {Button1DownDebounce = false}, 
            PlrHeld = nil, 
            Mode = 1 -- 1 = kill, 2 = throw, 3 = let go, 4 = suicide
        }
        
        if LocalPlayer.Character:FindFirstChild("-GrabKnife") then
            LocalPlayer.Character:FindFirstChild("-GrabKnife"):Destroy()
        end
        if LocalPlayer.Character:FindFirstChild("GrabKnifeLA") then
            LocalPlayer.Character:FindFirstChild("GrabKnifeLA"):Destroy()
        end
        if LocalPlayer.Character:FindFirstChild("GrabKnifeRA") then
            LocalPlayer.Character:FindFirstChild("GrabKnifeRA"):Destroy()
        end
        
        
        
        local LA
        local RA

        local RS = LocalPlayer.Character.Torso["Right Shoulder"]:Clone()
        LocalPlayer.Character.Torso["Right Shoulder"]:Destroy()
        
        RS.Parent = LocalPlayer.Character.Torso
        RS.Part0 = RS.Parent
        RS.Part1 = RightArm

        local Attach0 = Instance.new("Attachment")
        Attach0.Parent = LocalPlayer.Character["Right Arm"]
        local Attach1 = Instance.new("Attachment")
        Attach1.Parent = RightArm
        
        local Pos = Instance.new("AlignPosition")
        Pos.Parent = LocalPlayer.Character.Torso
        Pos.RigidityEnabled = true
        Pos.Attachment0, Pos.Attachment1 = Attach0, Attach1

        local Rot = Instance.new("AlignOrientation")
        Rot.Parent = LocalPlayer.Character.Torso
        Rot.RigidityEnabled = true
        Rot.Attachment0, Rot.Attachment1 = Attach0, Attach1
        
        local LS = LocalPlayer.Character.Torso["Left Shoulder"]:Clone()
        LocalPlayer.Character.Torso["Left Shoulder"]:Destroy()
        
        LS.Parent = LocalPlayer.Character.Torso
        LS.Part0 = LS.Parent
        LS.Part1 = LeftArm

        local Attach0 = Instance.new("Attachment")
        Attach0.Parent = LocalPlayer.Character["Left Arm"]
        local Attach1 = Instance.new("Attachment")
        Attach1.Parent = LeftArm
        
        local Pos = Instance.new("AlignPosition")
        Pos.Parent = LocalPlayer.Character.Torso
        Pos.RigidityEnabled = true
        Pos.Attachment0, Pos.Attachment1 = Attach0, Attach1

        local Rot = Instance.new("AlignOrientation")
        Rot.Parent = LocalPlayer.Character.Torso
        Rot.RigidityEnabled = true
        Rot.Attachment0, Rot.Attachment1 = Attach0, Attach1


        local Knife = Instance.new("Part")
        Knife.Name = "-GrabKnife"
        Knife.Parent = LocalPlayer.Character
        Knife.Size = Vector3.new(0.25, 2, 0.25)
        Knife.Transparency = 1
        Knife.CanCollide = false

        local KnifeWeld = Instance.new("Weld")
        KnifeWeld.Parent = Knife
        KnifeWeld.Part0 = LeftArm
        KnifeWeld.Part1 = Knife
        KnifeWeld.C0 = CFrame.new(Vector3.new(0.2, -0.85, 0)) * CFrame.Angles(math.rad(0), math.rad(00), math.rad(0))
        KnifeWeld.C1 = CFrame.new(Vector3.new(0, 0.75, -0.125)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

        KnifeAccessory.Handle.AccessoryWeld:Destroy()
        local Attach0 = Instance.new("Attachment")
        Attach0.Parent = KnifeAccessory.Handle
        Attach0.CFrame = CFrame.new(Vector3.new(-0.5, 0, -0.5)) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(-90))
        local Attach1 = Instance.new("Attachment")
        Attach1.Parent = Knife
        
        local Pos = Instance.new("AlignPosition")
        Pos.Parent = Knife
        Pos.RigidityEnabled = true
        Pos.Attachment0, Pos.Attachment1 = Attach0, Attach1

        local Rot = Instance.new("AlignOrientation")
        Rot.Parent = Knife
        Rot.RigidityEnabled = true
        Rot.Attachment0, Rot.Attachment1 = Attach0, Attach1
        

        Stuff.Events.ModeChangeEvent = game:GetService("UserInputService").InputBegan:Connect(function(Key)
            if Key.KeyCode == Enum.KeyCode.Q then
                Stuff.Mode = 1
            elseif Key.KeyCode == Enum.KeyCode.E then
                Stuff.Mode = 2
            elseif Key.KeyCode == Enum.KeyCode.R then
                Stuff.Mode = 3
            elseif Key.KeyCode == Enum.KeyCode.T then
                Stuff.Mode = 4
            end
        end)

        Stuff.Events.Button1DownEvent = LocalPlayer:GetMouse().Button1Down:Connect(function()
            if Stuff.Debounces.Button1DownDebounce == false and Stuff.PlrHeld == nil and Stuff.Mode ~= 4 then
            
                Stuff.Debounces.Button1DownDebounce = true
                
                LA = Instance.new("Weld")
                LA.Name = "GrabKnifeLA"
                LA.Parent = LocalPlayer.Character
                LA.Part0 = LocalPlayer.Character.Torso
                LA.Part1 = LeftArm
                LA.C0 = CFrame.new(Vector3.new(-1, 1, 0)) * CFrame.Angles(math.rad(10), math.rad(10), math.rad(-10))
                LA.C1 = CFrame.new(Vector3.new(0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                
                RA = Instance.new("Weld")
                RA.Name = "GrabKnifeRA"
                RA.Parent = LocalPlayer.Character
                RA.Part0 = LocalPlayer.Character.Torso
                RA.Part1 = RightArm
                RA.C0 = CFrame.new(Vector3.new(1, 1, 0)) * CFrame.Angles(math.rad(10), math.rad(-10), math.rad(10))
                RA.C1 = CFrame.new(Vector3.new(-0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                
                wait(0.1)
                game:GetService("TweenService"):Create(LA, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), { C0 = CFrame.new(Vector3.new(-1, 0.75, 0)) * CFrame.Angles(math.rad(80), math.rad(-90), math.rad(-10)) }):Play()
                game:GetService("TweenService"):Create(RA, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), { C0 = CFrame.new(Vector3.new(1, 0.75, 0)) * CFrame.Angles(math.rad(70), math.rad(40), math.rad(10)) }):Play()
                
                local PossiblePlr
                for i = 1, 20 do
                    if Stuff.PlrHeld == nil then
                        PossiblePlr = game.Workspace:FindPartOnRay(Ray.new(LocalPlayer.Character.HumanoidRootPart.Position, LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 2))
                        if PossiblePlr ~= nil and game.Players:GetPlayerFromCharacter(PossiblePlr.Parent) and game.Players:GetPlayerFromCharacter(PossiblePlr.Parent).Character then
                            Stuff.PlrHeld = game.Players:GetPlayerFromCharacter(PossiblePlr.Parent)
                            break
                        end
                        wait(0.0375)
                    end
                end
                LA:Destroy()
                RA:Destroy()
                LA = nil
                RA = nil
                Stuff.Debounces.Button1DownDebounce = false
                
            elseif Stuff.Mode ~= 4 and Stuff.PlrHeld ~= nil and Stuff.PlrHeld.ClassName == "Player" and Stuff.PlrHeld.Character and Stuff.PlrHeld.Character.PrimaryPart and Stuff.PlrHeld.Character:FindFirstChildOfClass("Humanoid") and Stuff.PlrHeld.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
                
                if Stuff.Mode == 1 then -- kill
                    game:GetService("TweenService"):Create(LA, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { C0 = CFrame.new(Vector3.new(-1, 0.75, 0)) * CFrame.Angles(math.rad(90), math.rad(-100), math.rad(-10)) }):Play()
                    wait(0.35)
                    game:GetService("TweenService"):Create(LA, TweenInfo.new(0.175, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { C0 = CFrame.new(Vector3.new(-1, 0.75, 0)) * CFrame.Angles(math.rad(50), math.rad(-60), math.rad(-20)) }):Play()
                    wait(0.175)
                    Stuff.PlrHeld.Character:FindFirstChildOfClass("Humanoid").Health = 0
                    wait(0.25)
                    Stuff.PlrHeld = nil
                    if LA then
                    LA:Destroy()
                    LA = nil
                    end
                    if RA then
                    RA:Destroy()
                    RA = nil
                    end
                elseif Stuff.Mode == 2 then -- throw
                    game:GetService("TweenService"):Create(LA, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { C0 = CFrame.new(Vector3.new(-1, 0.75, 0)) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(-10)) }):Play()
                    game:GetService("TweenService"):Create(RA, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { C0 = CFrame.new(Vector3.new(1, 0.75, 1)) * CFrame.Angles(math.rad(70), math.rad(60), math.rad(10)) }):Play()
                    wait(0.075)
                    Stuff.PlrHeld.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
                    local BF = Instance.new("BodyForce")
                    BF.Parent = Stuff.PlrHeld.Character.PrimaryPart
                    BF.Force = Vector3.new(0, 20, 0) + LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 20
                    wait(0.25)
                    BF:Destroy()
                    wait(0.25)
                    Stuff.PlrHeld.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                    if Stuff.PlrHeld.Character.PrimaryPart:FindFirstChild("CFrameFix") then
                        Stuff.PlrHeld.Character.PrimaryPart:FindFirstChild("CFrameFix"):Destroy()
                    end
                    Stuff.PlrHeld = nil
                    if LA then
                    LA:Destroy()
                    LA = nil
                    end
                    if RA then
                    RA:Destroy()
                    RA = nil
                    end
                elseif Stuff.Mode == 3 then -- let go
                    if Stuff.PlrHeld.Character.PrimaryPart:FindFirstChild("CFrameFix") then
                        Stuff.PlrHeld.Character.PrimaryPart:FindFirstChild("CFrameFix"):Destroy()
                    end
                    Stuff.PlrHeld.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                    Stuff.PlrHeld = nil
                    if LA then
                    LA:Destroy()
                    LA = nil
                    end
                    if RA then
                    RA:Destroy()
                    RA = nil
                    end
                end

            elseif Stuff.Mode == 4 then -- suicide

                if LA then
                    LA:Destroy()
                    LA = nil
                end
                if RA then
                    RA:Destroy()
                    RA = nil
                end

                LA = Instance.new("Weld")
                LA.Name = "GrabKnifeLA"
                LA.Parent = LocalPlayer.Character
                LA.Part0 = LocalPlayer.Character.Torso
                LA.Part1 = LeftArm
                LA.C0 = CFrame.new(Vector3.new(-1, 0.75, 0)) * CFrame.Angles(math.rad(10), math.rad(10), math.rad(-10))
                LA.C1 = CFrame.new(Vector3.new(0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                wait(0.5)
                
                game:GetService("TweenService"):Create(LA, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { C0 = CFrame.new(Vector3.new(-1.5, 0.75, 0)) * CFrame.Angles(math.rad(80), math.rad(-100), math.rad(-10)) }):Play()
                wait(1.5)

                game:GetService("TweenService"):Create(LA, TweenInfo.new(0.075, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { C0 = CFrame.new(Vector3.new(-1.5, 0.75, 1)) * CFrame.Angles(math.rad(30), math.rad(-130), math.rad(-10)) }):Play()
                wait(0.1)
                if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                    LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
                end

            end
        end)


        repeat
            if Stuff.PlrHeld ~= nil and Stuff.PlrHeld.ClassName == "Player" and Stuff.PlrHeld.Character and Stuff.PlrHeld.Character.PrimaryPart and Stuff.PlrHeld.Character:FindFirstChildOfClass("Humanoid") and Stuff.PlrHeld.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
                if LA == nil then
                    LA = Instance.new("Weld")
                    LA.Name = "GrabKnifeLA"
                    LA.Parent = LocalPlayer.Character
                    LA.Part0 = LocalPlayer.Character.Torso
                    LA.Part1 = LeftArm
                    LA.C0 = CFrame.new(Vector3.new(-1, 0.75, 0)) * CFrame.Angles(math.rad(80), math.rad(-90), math.rad(-10))
                    LA.C1 = CFrame.new(Vector3.new(0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                end
                if RA == nil then
                    RA = Instance.new("Weld")
                    RA.Name = "GrabKnifeRA"
                    RA.Parent = LocalPlayer.Character
                    RA.Part0 = LocalPlayer.Character.Torso
                    RA.Part1 = RightArm
                    RA.C0 = CFrame.new(Vector3.new(1, 0.75, 0)) * CFrame.Angles(math.rad(70), math.rad(40), math.rad(10))
                    RA.C1 = CFrame.new(Vector3.new(-0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                end
                for i, v in pairs(Stuff.PlrHeld.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false 
                    end
                end
                Stuff.PlrHeld.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
                if not Stuff.PlrHeld.Character.PrimaryPart:FindFirstChild("CFrameFix") then
                    local bv = Instance.new("BodyVelocity")
                    bv.Name = "CFrameFix"
                    bv.Parent = Stuff.PlrHeld.Character.PrimaryPart
                    bv.Velocity = Vector3.new(0, 0, 0)
                end
                Stuff.PlrHeld.Character:SetPrimaryPartCFrame(LocalPlayer.Character.PrimaryPart.CFrame + LocalPlayer.Character.PrimaryPart.CFrame.LookVector * LocalPlayer.Character.PrimaryPart.Size.Z)
            end
            game:GetService("RunService").Stepped:Wait()
        until not (LocalPlayer and LocalPlayer.Character and Knife and Knife.Parent == LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health > 0)

        if LA ~= nil then
            LA:Destroy()
            LA = nil
        end
        if RA ~= nil then
            RA:Destroy() 
            RA = nil
        end

        for i, v in pairs(Stuff.Events) do
            v:Disconnect() 
        end

        if LocalPlayer:FindFirstChild("-Running") then
            LocalPlayer:FindFirstChild("-Running"):Destroy()
        end

        if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
        end

    end
end)

local function Punish(Target)
    if Target and Target ~= LocalPlayer then
        local Before = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RootPart.CFrame
        game:GetService("Players").LocalPlayer.Character:Destroy()
        game:GetService("Players").LocalPlayer.CharacterAppearanceLoaded:wait()
        local OldHum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        local NewHum = OldHum:Clone()
        NewHum.Parent = game:GetService("Players").LocalPlayer.Character
        wait(0.1)
        OldHum:Destroy()
        local Tool = game:GetService'Players'.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(Tool)
        repeat
            game["Run Service"].Heartbeat:wait()
            Target.Character.HumanoidRootPart.CFrame = Tool.Handle.CFrame
        until Tool.Parent == Target.Character
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(10000,750000000,10000))
        game:GetService("Players").LocalPlayer.CharacterAppearanceLoaded:wait()
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RootPart.CFrame = Before
    end
end

Admin.AddCommand("punish", "Punishes player with a tool, can NOT be used on yourself", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player
        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            
            Punish(Player)
            local IsPunished = Instance.new("ObjectValue")
            IsPunished.Name = "-Punished"
            IsPunished.Parent = Player
            
            local PunishTillStopped
            PunishTillStopped = Player.CharacterAppearanceLoaded:Connect(function()
                if IsPunished.Parent == Player then
                    Punish(Player)
                else
                    PunishTillStopped:Disconnect()
                end
            end)
        end
    end
end, "player(s)")

Admin.AddCommand("unpunish", "Unpunishes player with a tool, can NOT be used on yourself", function(player)   
    if Admin.GetShortenedPlrFromName(player) ~= nil then
        local Player
        for i, v in pairs(Admin.GetShortenedPlrFromName(player)) do
            Player = v
            
            if Player:FindFirstChild("-Punished") then
                Player:FindFirstChild("-Punished"):Destroy()
            end
        end
    end
end, "player(s)")

Admin.AddCommand("Dupetools", "Dupes tools (for testing purposes, only works in fencing)", function(amount)   
    amount = tonumber(amount)
    if game.PlaceId == 12109643 and amount ~= nil then
        
        local Tools = {}
        local Pos = LocalPlayer.Character.HumanoidRootPart.CFrame
        local Pos1 = CFrame.new(0,100000,0)
        
        for _ = 1, amount do
            LocalPlayer.Character.HumanoidRootPart.CFrame = Pos1
            wait(.2)
            LocalPlayer.Character.HumanoidRootPart.Anchored = true
            LocalPlayer.Character.Humanoid:UnequipTools()
            
            for _,v in pairs(LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
                if v:IsA("Tool") and v:FindFirstChild("Handle") then
                    v.Parent = LocalPlayer.Character
                    v.Handle.Anchored = true
                    v.Parent = workspace
                    table.insert(Tools,v)
                end
            end

            LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(15)
            LocalPlayer.CharacterAdded:wait():WaitForChild("HumanoidRootPart").CFrame = Pos
        end

        if type(firetouchinterest) == "function" then
            
            for _,v in pairs(Tools) do
                pcall(coroutine.wrap(function()
                    v.Handle.Anchored = false
                    firetouchinterest(v.Handle, LocalPlayer.Character:WaitForChild("HumanoidRootPart"), 0)
                    repeat
                        wait()
                    until v.Parent == LocalPlayer.Character
                    firetouchinterest(v.Handle, LocalPlayer.Character.HumanoidRootPart,1)
                end))
            end

        else

            LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(0.15)
            
            for _,v in pairs(Tools) do
                spawn(function()
                    v.Handle.Anchored = false
                    while v.Parent ~= LocalPlayer.Character and game:GetService("RunService").Heartbeat:wait() do
                        v.Handle.CFrame = LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                    end
                end)
            end

            wait((function(num)
                local a = 0
                for _ = 1, num do
                    a = a + .1
                end
                return a
            end)(#Tools))
            LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end

    elseif game.PlaceId == 12109643 and amount == nil then
        return Admin.Notify("Error in dupetool command", "First argument must be a number", 5)
    elseif game.PlaceId ~= 12109643 then
        return Admin.Notify("Error in dupetool command", "Game isn't correct fencing place (12109643)", 5)
    end
end, "amount")




-- cmdlist updates when changes happen to textbox.Text so we might aswell update it once here
Admin.UpdateCmdList(Cmdlist, {CmdBar, "alphabetical"})

-- creating notification popup to welcome the user

Admin.Notify("Welcome", "Welcome to OverFlow Admin Gui, brought to you by: \nSynttax, ANN0B1S, dhruvil123/Destruidor. Prefix is: " .. Settings.Prefix, 7.5)


while true do
	if OverflowScreenGui and OverflowScreenGui.Parent == game:GetService("CoreGui") then
        wait()
    else
        for i, v in pairs(Admin.Events) do
            v:Disconnect()
        end
        Admin = nil
        
		break
	end
end
