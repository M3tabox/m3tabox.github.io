local a=Instance.new("ScreenGui")local b=Instance.new("Frame")local c=Instance.new("Frame")local d=Instance.new("TextButton")local e=Instance.new("TextLabel")local f=Instance.new("TextLabel")local g=Instance.new("Frame")local h=Instance.new("TextButton")local i=Instance.new("TextButton")local j=Instance.new("TextButton")local k=Instance.new("TextButton")local l=Instance.new("TextButton")local m=Instance.new("TextButton")local n=Instance.new("TextButton")local o=Instance.new("TextButton")local p=Instance.new("TextButton")local q=Instance.new("TextButton")local r=Instance.new("TextButton")local s=Instance.new("TextButton")local t=Instance.new("TextButton")local u=Instance.new("TextButton")local v=Instance.new("TextButton")local w=Instance.new("TextButton")local x=Instance.new("TextLabel")local y=Instance.new("Frame")local z=Instance.new("TextButton")local A=Instance.new("TextButton")local B=Instance.new("TextButton")local C=Instance.new("TextButton")local D=Instance.new("TextButton")local E=Instance.new("TextButton")local F=Instance.new("TextButton")local G=Instance.new("TextLabel")local H=Instance.new("Frame")local I=Instance.new("TextLabel")local J=Instance.new("TextButton")local K=Instance.new("TextButton")local L=game.Players.LocalPlayer.Character.Animate;a.Name="AnimationChanger"a.Parent=game:WaitForChild("CoreGui")a.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;b.Name="Main"b.Parent=a;b.BackgroundColor3=Color3.new(0.278431,0.278431,0.278431)b.BorderSizePixel=0;b.Position=UDim2.new(0.421999991,0,-1,0)b.Size=UDim2.new(0,300,0,250)b.Active=true;b.Draggable=true;c.Name="TopBar"c.Parent=b;c.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)c.BorderSizePixel=0;c.Size=UDim2.new(0,300,0,30)d.Name="Close"d.Parent=c;d.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)d.BorderSizePixel=0;d.Position=UDim2.new(0.899999976,0,0,0)d.Size=UDim2.new(0,30,0,30)d.Font=Enum.Font.SciFi;d.Text="x"d.TextColor3=Color3.new(1,0,0.0156863)d.TextSize=20;d.MouseButton1Click:Connect(function()wait(0.3)b:TweenPosition(UDim2.new(0.421999991,0,-1.28400004,0))wait(3)a:Destroy()end)e.Parent=c;e.BackgroundColor3=Color3.new(1,1,1)e.BackgroundTransparency=1;e.BorderSizePixel=0;e.Position=UDim2.new(0,0,0.600000024,0)e.Size=UDim2.new(0,270,0,10)e.Font=Enum.Font.SourceSans;e.Text="Click to equip"e.TextColor3=Color3.new(1,1,1)e.TextSize=15;f.Parent=c;f.BackgroundColor3=Color3.new(1,1,1)f.BackgroundTransparency=1;f.BorderSizePixel=0;f.Position=UDim2.new(0,0,-0.0266667679,0)f.Size=UDim2.new(0,270,0,20)f.Font=Enum.Font.SourceSans;f.Text="Animation Changer"f.TextColor3=Color3.new(1,1,1)f.TextSize=20;g.Name="NormalTab"g.Parent=b;g.BackgroundColor3=Color3.new(0.278431,0.278431,0.278431)g.BackgroundTransparency=1;g.BorderSizePixel=0;g.Position=UDim2.new(0.5,0,0.119999997,0)g.Size=UDim2.new(0,150,0,500)h.Name="A_Astronaut"h.Parent=g;h.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)h.BorderSizePixel=0;h.Position=UDim2.new(0,0,0.815764725,0)h.Size=UDim2.new(0,150,0,30)h.Font=Enum.Font.SciFi;h.Text="Astronaut"h.TextColor3=Color3.new(1,1,1)h.TextSize=20;h.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=891621366"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=891633237"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=891667138"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=891636393"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=891627522"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=891609353"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=891617961"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)i.Name="A_Bubbly"i.Parent=g;i.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)i.BorderSizePixel=0;i.Position=UDim2.new(0,0,0.349019617,0)i.Size=UDim2.new(0,150,0,30)i.Font=Enum.Font.SciFi;i.Text="Bubbly"i.TextColor3=Color3.new(1,1,1)i.TextSize=20;i.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=910004836"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=910009958"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=910034870"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=910025107"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=910016857"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=910001910"L.swimidle.SwimIdle.AnimationId="http://www.roblox.com/asset/?id=910030921"L.swim.Swim.AnimationId="http://www.roblox.com/asset/?id=910028158"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)j.Name="A_Cartoony"j.Parent=g;j.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)j.BorderSizePixel=0;j.Position=UDim2.new(0,0,0.407272667,0)j.Size=UDim2.new(0,150,0,30)j.Font=Enum.Font.SciFi;j.Text="Cartoony"j.TextColor3=Color3.new(1,1,1)j.TextSize=20;j.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=742637544"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=742638445"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=742640026"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=742638842"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=742637942"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=742636889"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=742637151"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)k.Name="A_Elder"k.Parent=g;k.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)k.BorderSizePixel=0;k.Position=UDim2.new(6.51925802e-09,0,0.636310041,0)k.Size=UDim2.new(0,150,0,30)k.Font=Enum.Font.SciFi;k.Text="Elder"k.TextColor3=Color3.new(1,1,1)k.TextSize=20;k.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=845397899"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=845400520"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=845403856"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=845386501"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=845398858"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=845392038"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=845396048"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)l.Name="A_Knight"l.Parent=g;l.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)l.BorderSizePixel=0;l.Position=UDim2.new(0,0,0.52352941,0)l.Size=UDim2.new(0,150,0,30)l.Font=Enum.Font.SciFi;l.Text="Knight"l.TextColor3=Color3.new(1,1,1)l.TextSize=20;l.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=657595757"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=657568135"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=657552124"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=657564596"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=658409194"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=658360781"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=657600338"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)m.Name="A_Levitation"m.Parent=g;m.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)m.BorderSizePixel=0;m.Position=UDim2.new(0,0,0.115472436,0)m.Size=UDim2.new(0,150,0,30)m.Font=Enum.Font.SciFi;m.Text="Levitation"m.TextColor3=Color3.new(1,1,1)m.TextSize=20;m.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=616006778"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=616008087"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=616013216"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=616010382"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=616008936"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=616003713"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=616005863"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)n.Name="A_Mage"n.Parent=g;n.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)n.BorderSizePixel=0;n.Position=UDim2.new(0,0,0.696203232,0)n.Size=UDim2.new(0,150,0,30)n.Font=Enum.Font.SciFi;n.Text="Mage"n.TextColor3=Color3.new(1,1,1)n.TextSize=20;n.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=707742142"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=707855907"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=707897309"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=707861613"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=707853694"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=707826056"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=707829716"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)o.Name="A_Ninja"o.Parent=g;o.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)o.BorderSizePixel=0;o.Position=UDim2.new(0,0,0.0597896464,0)o.Size=UDim2.new(0,150,0,30)o.Font=Enum.Font.SciFi;o.Text="Ninja"o.TextColor3=Color3.new(1,1,1)o.TextSize=20;o.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=656117400"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=656118341"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=656121766"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=656118852"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=656117878"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=656114359"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=656115606"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)p.Name="A_Pirate"p.Parent=g;p.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)p.BorderSizePixel=0;p.Position=UDim2.new(-0.000333309174,0,0.874588311,0)p.Size=UDim2.new(0,150,0,30)p.Font=Enum.Font.SciFi;p.Text="Pirate"p.TextColor3=Color3.new(1,1,1)p.TextSize=20;p.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=750781874"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=750782770"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=750785693"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=750783738"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=750782230"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=750779899"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=750780242"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)q.Name="A_Robot"q.Parent=g;q.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)q.BorderSizePixel=0;q.Position=UDim2.new(0,0,0.291479498,0)q.Size=UDim2.new(0,150,0,30)q.Font=Enum.Font.SciFi;q.Text="Robot"q.TextColor3=Color3.new(1,1,1)q.TextSize=20;q.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=616088211"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=616089559"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=616095330"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=616091570"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=616090535"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=616086039"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=616087089"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)r.Name="A_Stylish"r.Parent=g;r.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)r.BorderSizePixel=0;r.Position=UDim2.new(0,0,0.232816339,0)r.Size=UDim2.new(0,150,0,30)r.Font=Enum.Font.SciFi;r.Text="Stylish"r.TextColor3=Color3.new(1,1,1)r.TextSize=20;r.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=616136790"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=616138447"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=616146177"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=616140816"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=616139451"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=616133594"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=616134815"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)s.Name="A_SuperHero"s.Parent=g;s.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)s.BorderSizePixel=0;s.Position=UDim2.new(0,0,0.464919746,0)s.Size=UDim2.new(0,150,0,30)s.Font=Enum.Font.SciFi;s.Text="SuperHero"s.TextColor3=Color3.new(1,1,1)s.TextSize=20;s.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=616111295"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=616113536"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=616122287"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=616117076"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=616115533"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=616104706"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=616108001"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)t.Name="A_Toy"t.Parent=g;t.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)t.BorderSizePixel=0;t.Position=UDim2.new(6.51925802e-09,0,0.756028414,0)t.Size=UDim2.new(0,150,0,30)t.Font=Enum.Font.SciFi;t.Text="Toy"t.TextColor3=Color3.new(1,1,1)t.TextSize=20;t.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=782841498"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=782845736"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=782843345"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=782842708"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=782847020"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=782843869"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=782846423"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)u.Name="A_Vampire"u.Parent=g;u.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)u.BorderSizePixel=0;u.Position=UDim2.new(0,0,0.934021354,0)u.Size=UDim2.new(0,150,0,30)u.Font=Enum.Font.SciFi;u.Text="Vampire"u.TextColor3=Color3.new(1,1,1)u.TextSize=20;u.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=1083445855"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=1083450166"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=1083473930"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=1083462077"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=1083455352"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=1083439238"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=1083443587"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)v.Name="A_Werewolf"v.Parent=g;v.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)v.BorderSizePixel=0;v.Position=UDim2.new(-0.000333368778,0,0.174509808,0)v.Size=UDim2.new(0,150,0,30)v.Font=Enum.Font.SciFi;v.Text="Werewolf"v.TextColor3=Color3.new(1,1,1)v.TextSize=20;v.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=1083195517"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=1083214717"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=1083178339"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=1083216690"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=1083218792"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=1083182000"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=1083189019"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)w.Name="A_Zombie"w.Parent=g;w.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)w.BorderSizePixel=0;w.Position=UDim2.new(-1.1920929e-07,0,0.582352936,0)w.Size=UDim2.new(0,150,0,30)w.Font=Enum.Font.SciFi;w.Text="Zombie"w.TextColor3=Color3.new(1,1,1)w.TextSize=20;w.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=616158929"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=616160636"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=616168032"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=616163682"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=616161997"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=616156119"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=616157476"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)x.Name="Category"x.Parent=g;x.BackgroundColor3=Color3.new(0.156863,0.156863,0.156863)x.BorderSizePixel=0;x.Size=UDim2.new(0,150,0,30)x.Text="Normal"x.TextColor3=Color3.new(0,0.835294,1)x.TextSize=14;y.Name="SpecialTab"y.Parent=b;y.BackgroundColor3=Color3.new(0.278431,0.278431,0.278431)y.BackgroundTransparency=1;y.BorderSizePixel=0;y.Position=UDim2.new(0,0,0.119999997,0)y.Size=UDim2.new(0,150,0,230)z.Name="A_Patrol"z.Parent=y;z.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)z.BorderSizePixel=0;z.Position=UDim2.new(0,0,0.259960413,0)z.Size=UDim2.new(0,150,0,30)z.Font=Enum.Font.SciFi;z.Text="Patrol"z.TextColor3=Color3.new(1,1,1)z.TextSize=20;z.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=1149612882"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=1150842221"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=1151231493"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=1150967949"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=1148811837"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=1148811837"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=1148863382"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)A.Name="A_Confident"A.Parent=y;A.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)A.BorderSizePixel=0;A.Position=UDim2.new(0,0,0.389248967,0)A.Size=UDim2.new(0,150,0,30)A.Font=Enum.Font.SciFi;A.Text="Confident"A.TextColor3=Color3.new(1,1,1)A.TextSize=20;A.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=1069977950"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=1069987858"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=1070017263"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=1070001516"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=1069984524"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=1069946257"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=1069973677"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)B.Name="A_Popstar"B.Parent=y;B.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)B.BorderSizePixel=0;B.Position=UDim2.new(0,0,0.130671918,0)B.Size=UDim2.new(0,150,0,30)B.Font=Enum.Font.SciFi;B.Text="Popstar"B.TextColor3=Color3.new(1,1,1)B.TextSize=20;B.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=1212900985"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=1150842221"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=1212980338"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=1212980348"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=1212954642"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=1213044953"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=1212900995"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)C.Name="A_Cowboy"C.Parent=y;C.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)C.BorderSizePixel=0;C.Position=UDim2.new(0,0,0.772964239,0)C.Size=UDim2.new(0,150,0,30)C.Font=Enum.Font.SciFi;C.Text="Cowboy"C.TextColor3=Color3.new(1,1,1)C.TextSize=20;C.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=1014390418"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=1014398616"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=1014421541"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=1014401683"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=1014394726"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=1014380606"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=1014384571"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)D.Name="A_Ghost"D.Parent=y;D.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)D.BorderSizePixel=0;D.Position=UDim2.new(0,0,0.900632322,0)D.Size=UDim2.new(0,150,0,30)D.Font=Enum.Font.SciFi;D.Text="Ghost"D.TextColor3=Color3.new(1,1,1)D.TextSize=20;D.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=616006778"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=616008087"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=616013216"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=616013216"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=616008936"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=616005863"L.swimidle.SwimIdle.AnimationId="http://www.roblox.com/asset/?id=616012453"L.swim.Swim.AnimationId="http://www.roblox.com/asset/?id=616011509"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)E.Name="A_Sneaky"E.Parent=y;E.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)E.BorderSizePixel=0;E.Position=UDim2.new(0,0,0.517628431,0)E.Size=UDim2.new(0,150,0,30)E.Font=Enum.Font.SciFi;E.Text="Sneaky"E.TextColor3=Color3.new(1,1,1)E.TextSize=20;E.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=1132473842"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=1132477671"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=1132510133"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=1132494274"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=1132489853"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=1132461372"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=1132469004"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)F.Name="A_Princess"F.Parent=y;F.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)F.BorderSizePixel=0;F.Position=UDim2.new(0,0,0.645296335,0)F.Size=UDim2.new(0,150,0,30)F.Font=Enum.Font.SciFi;F.Text="Princess"F.TextColor3=Color3.new(1,1,1)F.TextSize=20;F.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=941003647"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=941013098"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=941028902"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=941015281"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=941008832"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=940996062"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=941000007"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)G.Name="Category"G.Parent=y;G.BackgroundColor3=Color3.new(0.156863,0.156863,0.156863)G.BorderSizePixel=0;G.Size=UDim2.new(0,150,0,30)G.Text="Special"G.TextColor3=Color3.new(0,0.835294,1)G.TextSize=14;H.Name="OtherTab"H.Parent=b;H.BackgroundColor3=Color3.new(0.278431,0.278431,0.278431)H.BackgroundTransparency=1;H.BorderSizePixel=0;H.Position=UDim2.new(0,0,1.06800008,0)H.Size=UDim2.new(0,150,0,220)I.Name="Category"I.Parent=H;I.BackgroundColor3=Color3.new(0.156863,0.156863,0.156863)I.BorderSizePixel=0;I.Size=UDim2.new(0,150,0,30)I.Text="Other"I.TextColor3=Color3.new(0,0.835294,1)I.TextSize=14;J.Name="A_None"J.Parent=H;J.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)J.BorderSizePixel=0;J.Position=UDim2.new(0,0,0.134545445,0)J.Size=UDim2.new(0,150,0,30)J.Font=Enum.Font.SciFi;J.Text="None"J.TextColor3=Color3.new(1,1,1)J.TextSize=20;J.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=0"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=0"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=0"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=0"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=0"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=0"L.swimidle.SwimIdle.AnimationId="http://www.roblox.com/asset/?id=0"L.swim.Swim.AnimationId="http://www.roblox.com/asset/?id=0"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)K.Name="A_Anthro"K.Parent=H;K.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)K.BorderSizePixel=0;K.Position=UDim2.new(0,0,0.269090891,0)K.Size=UDim2.new(0,150,0,30)K.Font=Enum.Font.SciFi;K.Text="Anthro (Default)"K.TextColor3=Color3.new(1,1,1)K.TextSize=20;K.MouseButton1Click:Connect(function()L.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=2510196951"L.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=2510197257"L.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=2510202577"L.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=2510198475"L.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=2510197830"L.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=2510192778"L.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=2510195892"game.Players.LocalPlayer.Character.Humanoid.Jump=true end)wait(1)b:TweenPosition(UDim2.new(0.421999991,0,0.28400004,0))
