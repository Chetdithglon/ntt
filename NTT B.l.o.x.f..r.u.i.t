
--NTT --blox fruit

local ScreenGUI = Instance.new("ScreenGui")

--main
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local sea = Instance.new("TextLabel")

--page
local b_page1 = Instance.new("ScrollingFrame") --farm
local b_page2 = Instance.new("ScrollingFrame") --stat

--bar 
local bar = Instance.new("Frame")
local bar1 = Instance.new("Frame")

--button
local b_1 = Instance.new("TextButton")
local b_2 = Instance.new("TextButton")

--check position
local pos_1 = Instance.new("TextLabel")

--on off
local exit = Instance.new("TextButton") 

--farm
m_tbar = Instance.new("Frame")
m_t1 = Instance.new("TextButton")
m_t2 = Instance.new("TextButton")
m_t3 = Instance.new("TextButton")

m_f1 = Instance.new("TextLabel")
m_b1 = Instance.new("TextButton")
m_f2 = Instance.new("TextLabel")
m_b2 = Instance.new("TextButton")
m_f3 = Instance.new("TextLabel")
m_b3 = Instance.new("TextButton")
m_f4 = Instance.new("TextLabel")
m_b4 = Instance.new("TextButton")
m_f5 = Instance.new("TextLabel")
m_b5 = Instance.new("TextButton")
m_f6 = Instance.new("TextLabel")
m_b6 = Instance.new("TextButton")


--------------------------------------------------------------------------

--main code frame button script

ScreenGUI.Name = "ScreenGUI"
ScreenGUI.Parent = game.CoreGui
ScreenGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGUI -- nằm trên khung ẩn
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --màu khung
main.Position = UDim2.new(0.200126051, 0, 0.228999169, 0) -- vị trí đứng
main.Size = UDim2.new(0, 640, 0, 280) -- kích cở
main.BorderColor3 = Color3.fromRGB(250, 250, 250)
main.Visible = false

bar1.Name = "bar1"
bar1.Parent = main
bar1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
bar1.Position = UDim2.new(0, 0, 0.102285722, 0)
bar1.Size = UDim2.new(0, 100, 0, 250)
bar1.BorderColor3 = Color3.fromRGB(250, 250, 250)

--button
b_1.Name = "b_1"
b_1.Parent = main
b_1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
b_1.Position = UDim2.new(0, 0, 0.110000000, 0)
b_1.Size = UDim2.new(0, 100, 0, 25)
b_1.Font = Enum.Font.Ubuntu
b_1.BorderColor3 = Color3.fromRGB(250, 250, 250)
b_1.Text = "   Main"
b_1.TextColor3 = Color3.fromRGB(255, 255, 255)
b_1.TextSize = 14.000
b_1.TextWrapped = false
b_1.TextXAlignment = Enum.TextXAlignment.Left

b_2.Name = "b_2"
b_2.Parent = main
b_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
b_2.Position = UDim2.new(0, 0, 0.210000000, 0)
b_2.Size = UDim2.new(0, 100, 0, 25)
b_2.Font = Enum.Font.Ubuntu
b_2.BorderColor3 = Color3.fromRGB(250, 250, 250)
b_2.Text = "   Stat"
b_2.TextColor3 = Color3.fromRGB(255, 255, 255)
b_2.TextSize = 14.000
b_2.TextWrapped = false
b_2.TextXAlignment = Enum.TextXAlignment.Left

--trang tab

--page
b_page1.Name = "b_page1"--farm
b_page1.Parent = main
b_page1.Active = true
b_page1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
b_page1.BackgroundTransparency = 1.000
b_page1.BorderSizePixel = 0
b_page1.Size = UDim2.new(0, 498, 0, 230)
b_page1.ScrollBarThickness = 0
b_page1.Position = UDim2.new(0.17631148, 0, 0.094285722, 0)
b_page1.Visible = true                         

b_page2.Name = "b_page2" --stat
b_page2.Parent = main
b_page2.Active = true
b_page2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
b_page2.BackgroundTransparency = 1.000
b_page2.BorderSizePixel = 0
b_page2.Size = UDim2.new(0, 498, 0, 230)
b_page2.ScrollBarThickness = 0
b_page2.Position = UDim2.new(0.17631148, 0, 0.094285722, 0)
b_page2.Visible = false     

--bar

bar.Name = "bar"
bar.Parent = main
bar.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
bar.Size = UDim2.new(0, 640, 0, 26)
bar.BorderColor3 = Color3.fromRGB(250, 250, 250)

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 150, 0, 26)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "   NTT HUB | Farm"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

--đóng  mở

exit.Name = "exit"
exit.Parent = ScreenGUI
exit.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
exit.Position = UDim2.new(0.70162201, 0, 0.103285708, 0)
exit.Size = UDim2.new(0, 50, 0, 50)
exit.Font = Enum.Font.Ubuntu
exit.Text = "Open"
exit.TextColor3 = Color3.fromRGB(250, 255, 250)
exit.TextSize = 20.000
exit.BorderColor3 = Color3.fromRGB(250, 250, 250)
exit.MouseButton1Down:connect(function()
--on off 
if exit.Text == "Open" then --on
exit.Text = "Close"
game.CoreGui.ScreenGUI.main.Visible = true
elseif exit.Text == "Close" then --off
exit.Text = "Open"
game.CoreGui.ScreenGUI.main.Visible = false
end
end)


--setting sea

sea.Name = "sea"
sea.Parent = main
sea.BackgroundTransparency = 1.000
sea.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
sea.BorderSizePixel = 0
sea.Position = UDim2.new(0.85262296, 0, 0, 0)
sea.Size = UDim2.new(0, 90, 0, 26)
sea.Font = Enum.Font.Ubuntu
sea.Text = "Blox Fruit | Sea ."
sea.TextColor3 = Color3.fromRGB(255, 255, 255)
sea.TextSize = 14.000

--check sea
if game.PlaceId == 2753915549 then -- sea1
sea.Text = "Blox Fruit | Sea 1"
elseif game.PlaceId == 4442272183 then -- sea2
sea.Text = "Blox Fruit | Sea 2"
elseif game.PlaceId == 7449423635 then -- sea3
sea.Text = "Blox Fruit | Sea 3"
end

--thu gọn script

--click
function click()
game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

--use tool
function mele()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Sharkman Karate"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Combat"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Dragon Talon"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Superhuman"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Electric Claw"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Death Step"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Black Leg"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Electro"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Fishman Karate"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Dragon Claw"))
end
function sword()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Katana"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Dual Katana"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Cutlass"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Bisento"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Koko"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Pole (2nd Form"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Saddi"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Wando"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Dual-Headed Blade"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Longsword"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Trident"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Shark Saw"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Triple Katana"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Twin Hooks"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Iron Mace"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Wardens Sword"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Soul Cane"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Pipe"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Jitte"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Gravity Cane"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Dragon Trident"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Yama"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Tushita"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Shisui"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Saber"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Rengoku"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Pole (1st Form"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Midnight Blade"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Cavander"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Buddy Sword"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "True Triple Katana"))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "Dark Blade"))
end
function fruit()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild( "game.Players.LocalPlayer.Data.DevilFruit.Value"))
end



--tp script
function TP1(P1)
                    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if Distance < 150 then
                        Speed = 20000
                    elseif Distance < 200 then
                        Speed = 5000
                    elseif Distance < 300 then
                        Speed = 500
                    elseif Distance < 500 then
                        Speed = 150
                    elseif Distance < 1000 then
                        Speed = 100
                    elseif Distance >= 1500 then
                        Speed = 90
                    end                                  
                   local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance/Speed), {CFrame = P1 * CFrame.new(0,0,0) }) tween:Play()                    
                end
                
                function stoptp()
                local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0), {CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame }) tween:Play()                    
    end
    
    function usetool()
    if m_b1.Text == "Tool : Mele" then
    mele()
    elseif m_b1.Text == "Tool : Sword" then
    sword()
    elseif m_b1.Text == "Tool : Fruit" then
    fruit() 
    end end
    
    function CheckQuest()
                                    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                           if game.PlaceId == 2753915549 then -- sea1
                                        if MyLevel == 1 or MyLevel <= 9 then --Bandit
                                            Ms = "Bandit [Lv. 5]"
                                            NameQuest = "BanditQuest1"
                                            LevelQuest = 1
                                            NameMon = "Bandit Quest Giver"
                                            CFrameQuest = CFrame.new(1061.603271484375, 16.8598575592041, 1547.625)
                                            CFrameMob = CFrame.new(1039.3878173828125, 80.12092590332031, 1592.404296875)
                                            CFrameBring = CFrame.new(1192.048583984375, 16.7034969329834, 1611.431884765625)
                                            
                                            elseif MyLevel == 10 or MyLevel <= 14 then --monkey
                                            Ms = "Monkey [Lv. 14]"
                                            NameQuest = "JungleQuest"
                                            LevelQuest = 1
                                            NameMon = "Adventurer"
                                            CFrameQuest = CFrame.new(-1599.786865234375, 37.195369720458984, 156.74978637695312)
                                            CFrameMob = CFrame.new(-1776.05419921875, 74.84989166259766, 47.772865295410156)
                                            CFrameBring = CFrame.new(-1633.2825927734375, 15.852092742919922, 96.47166442871094)
                                            
                                            elseif MyLevel == 15 or MyLevel <= 29 then --Gozila
                                            Ms = "Gorilla [Lv. 20]"
                                            NameQuest = "JungleQuest"
                                            LevelQuest = 2
                                            NameMon = "Adventurer"
                                            CFrameQuest = CFrame.new(-1599.786865234375, 37.195369720458984, 156.74978637695312)
                                            CFrameMob = CFrame.new(-1321.07080078125, 82.16122436523438, -456.7127380371094)
                                            CFrameBring = CFrame.new(-1241.55078125, 6.27936315536499, -517.3883666992188)
                                            
                                            elseif MyLevel == 30 or MyLevel <= 39 then --pirate
                                            Ms = "Pirate [Lv. 35]"
                                            NameQuest = "BuggyQuest1"
                                            LevelQuest = 1
                                            NameMon = "Pirate Adventurer"
                                            CFrameQuest = CFrame.new(-1139.61767578125, 5.095293998718262, 3828.553365625)
                                            CFrameMob = CFrame.new(-1147.6865234375, 59.39506149291992, 3995.663818359375)
                                            CFrameBring = CFrame.new(-1179.3768310546875, 5.095293998718262, 3921.2919921875)
                                            
                                            elseif MyLevel == 40 or MyLevel <= 59 then --brute
                                            Ms = "Brute [Lv. 45]"
                                            NameQuest = "BuggyQuest1"
                                            LevelQuest = 2
                                            NameMon = "Pirate Adventurer"
                                            CFrameQuest = CFrame.new(-1139.61767578125, 5.095293998718262, 3828.553365625)
                                            CFrameMob = CFrame.new(-1134.163818359375, 93.64710235595703, 4317.65966796875)
                                            CFrameBring = CFrame.new(-1098.1475830078125, 14.809873580932617, 4337.5419921875)
                                            
                                            elseif MyLevel == 60 or MyLevel <= 74 then --Desert Bandit
                                            Ms = "Desert Bandit [Lv. 60]" --name mob
                                            NameQuest = "DesertQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Desert Adventurer"    --name npc
                                            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
                                            CFrameMob = CFrame.new(1053.786865234375, 52.50192642211914, 4489.82421875)
                                            CFrameBring = CFrame.new(922.7894897460938, 6.44875955581665, 4481.28125)
                                            
      elseif MyLevel == 75 or MyLevel <= 89 then --Desert Officre
                                            Ms = "Desert Officer [Lv. 70]" --name mob
                                            NameQuest = "DesertQuest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Desert Adventurer"    --name npc
                                            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
                                            CFrameMob = CFrame.new(1561.3385009765625, 15.330206871032715, 4274.2587890625)      
                                            CFrameBring = CFrame.new(1613.4285888671875, 1.6109551191329956, 4360.02294921875)

    elseif MyLevel == 90 or MyLevel <= 99 then --Snow Bandit
                                            Ms = "Snow Bandit [Lv. 90]" --name mob
                                            NameQuest = "SnowQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Villager"    --name npc
                                            CFrameQuest = CFrame.new(1388.31689453125, 87.27276611328125, -1298.2066650390625)
                                            CFrameMob = CFrame.new(1419.9039306640625, 119.61993408203125, -1414.1715087890625)
                                            CFrameBring = CFrame.new(1386.5888671875, 87.27276611328125, -1379.3212890625)
                                            
      elseif MyLevel == 100 or MyLevel <= 119 then --Snowman
                                            Ms = "Snowman [Lv. 100]" --name mob
                                            NameQuest = "SnowQuest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Villager"    --name npc
                                            CFrameQuest = CFrame.new(1388.31689453125, 87.27276611328125, -1298.2066650390625)
                                            CFrameMob = CFrame.new(1220.4559326171875, 138.01181030273438, -1489.2388916015625)        
                              CFrameBring = CFrame.new(1150.3426513671875, 106.23611450195312, -1516.80078125)

  elseif MyLevel == 120 or MyLevel <= 149 then --Chief Petty Officer
                                            Ms = "Chief Petty Officer [Lv. 120]" --name mob
                                            NameQuest = "MarineQuest2" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Marine"    --name npc
                                            CFrameQuest = CFrame.new(-5037.93017578125, 28.65203285217285, 4324.2392578125)
                                            CFrameMob = CFrame.new(-4760.70263671875, 74.91291046142578, 4461.4365234375)
                                            CFrameBring = CFrame.new(-4867.0634765625, 20.65203285217285, 4359.71337890625)
                                            
                                            elseif MyLevel == 150 or MyLevel <= 174 then --Sky Bandit [Lv. 150]
                                            Ms = "Sky Bandit [Lv. 150]" --name mob
                                            NameQuest = "SkyQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Sky Adventurer"    --name npc
                                            CFrameQuest = CFrame.new(-4840.443359375, 717.6693725585938, -2620.983154296875)
                                            CFrameMob = CFrame.new(-4954.38720703125, 365.4177551269531, -2911.190673828125)
                                            CFrameBring = CFrame.new(-5003.708984375, 278.0669860839844, -2866.371826171875)
                                            
                                            elseif MyLevel == 175 or MyLevel <= 189 then --Dark Master [Lv. 175]
                                            Ms = "Dark Master [Lv. 175]" --name mob
                                            NameQuest = "SkyQuest" --name get quest
                                            LevelQuest = 2         -- lv quest
                                            NameMon = "Sky Adventurer"    --name npc
                                            CFrameQuest = CFrame.new(-4840.443359375, 717.6693725585938, -2620.983154296875)
                                            CFrameMob = CFrame.new(-5181.4873046875, 448.37725830078125, -2172.572998046875)    
     CFrameBring = CFrame.new(-5258.681640625, 388.6519470214844, -2278.768310546875)
                                       
               elseif MyLevel == 190 or MyLevel <= 209 then --m_b3
                                            Ms = "Prisoner [Lv. 190]" --name mob
                                            NameQuest = "PrisonerQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Jail Keeper"    --name npc
                                            CFrameQuest = CFrame.new(5307.03271484375, 1.6550424098968506, 473.080810546875)
                                            CFrameMob = CFrame.new(5246.40869140625, 72.6520004272461, 355.7655029296875)
                                            CFrameBring = CFrame.new(5166.82177734375, 1.798761248588562, 457.5108337402344)
   
  elseif MyLevel == 210 or MyLevel <= 249 then --m_b3
                                            Ms = "Dangerous Prisoner [Lv. 210]" --name mob
                                            NameQuest = "PrisonerQuest" --name get quest
                                            LevelQuest = 2         -- lv quest
                                            NameMon = "Jail Keeper"    --name npc
                                            CFrameQuest = CFrame.new(5307.03271484375, 1.6550424098968506, 473.080810546875)
                                            CFrameMob = CFrame.new(5664.5263671875, 72.6520004272461, 663.6072998046875)       
                                                         CFrameBring = CFrame.new(5609.08935546875, 1.6338006258010864, 659.2885131835938)     
                                       
   elseif MyLevel == 250 or MyLevel <= 299 then --Toga Warrior [Lv. 225]
                                            Ms = "Toga Warrior [Lv. 250]" --name mob
                                            NameQuest = "ColosseumQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Colosseum Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-1578.853759765625, 7.38933801651001, -2985.190185546875)
                                            CFrameMob = CFrame.new(-1780.4468994140625, 45.20888900756836, -2735.003173828125) 
                                      CFrameBring = CFrame.new(-1909.5372314453125, 7.289072513580322, -2760.071044921875)
               
  elseif MyLevel == 300 or MyLevel <= 324 then --Military Soldier [Lv. 300]
                                            Ms = "Military Soldier [Lv. 300]" --name mob
                                            NameQuest = "MagmaQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "The Mayor"    --name npc
                                            CFrameQuest = CFrame.new(-5315.4609375, 12.23685073852539, 8516.6962890625)
                                            CFrameMob = CFrame.new(-5615.11962890625, 59.20390701293945, 8445.76953125)
                                            CFrameBring = CFrame.new(-5377.1494140625, 8.990673065185547, 8493.80859375)
   
  elseif MyLevel == 325 or MyLevel <= 449 then --Military Spy [Lv. 325]
                                            Ms = "Military Spy [Lv. 325]" --name mob
                                            NameQuest = "MagmaQuest" --name get quest
                                            LevelQuest = 2       -- lv quest
                                            NameMon = "The Mayor"    --name npc
                                            CFrameQuest = CFrame.new(-5315.4609375, 12.23685073852539, 8516.6962890625)
                                            CFrameMob = CFrame.new(-5729.09130859375, 115.57196807861328, 8622.763671875)         
  CFrameBring = CFrame.new(-5849.50927734375, 77.23063659667969, 8823.505859375)

 elseif MyLevel == 450 or MyLevel <= 474 then --God's Guard [Lv. 450]
                                            Ms = "God's Guard [Lv. 450]" --name mob
                                            NameQuest = "SkyExp1Quest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Mole"    --name npc
                                            CFrameQuest = CFrame.new(-4722.51416015625, 845.2769775390625, -1951.57275390625)
                                            CFrameMob = CFrame.new(-4627.7509765625, 866.9027709960938, -1938.8880615234375)
                                            CFrameBring = CFrame.new(-4740.54541015625, 845.2769775390625, -1903.8253173828125)
   
  elseif MyLevel == 475 or MyLevel <= 524 then --Shanda [Lv. 475]
                                            Ms = "Shanda [Lv. 475]" --name mob
                                            NameQuest = "SkyExp1Quest" --name get quest
                                            LevelQuest = 2         -- lv quest
                                            NameMon = "Mole"    --name npc
                                            CFrameQuest = CFrame.new(-7860.5810546875, 5545.49169921875, -380.9195251464844)
                                            CFrameMob = CFrame.new(-7686.40673828125, 5600.93701171875, -441.3550109863281)   
              CFrameBring = CFrame.new(-7651.97216796875, 5545.49169921875, -519.1795043945312)

     elseif MyLevel == 525 or MyLevel <= 549 then --Royal Squad [Lv. 525]
                                            Ms = "Royal Squad [Lv. 525]" --name mob
                                            NameQuest = "SkyExp2Quest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Gan Fall Adventurer"    --name npc
                                            CFrameQuest = CFrame.new(-7905.001953125, 5635.96240234375, -1412.4091796875)
                                            CFrameMob = CFrame.new(-7634.65771484375, 5637.08056640625, -1411.266845703125)
                                            CFrameBring = CFrame.new(-7690.3349609375, 5606.876953125, -1456.149658203125)
   
  elseif MyLevel == 550 or MyLevel <= 624 then --Royal Soldier [Lv. 550]
                                            Ms = "Royal Soldier [Lv. 550]" --name mob
                                            NameQuest = "SkyExp2Quest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Gan Fall Adventurer"    --name npc
                                            CFrameQuest = CFrame.new(-7905.001953125, 5635.96240234375, -1412.4091796875)
                                            CFrameMob = CFrame.new(-7837.5185546875, 5681.2587890625, -1790.808837890625)     
       CFrameBring = CFrame.new(-7838.7861328125, 5606.876953125, -1820.982666015625)

      elseif MyLevel == 625 or MyLevel <= 649 then --Galley Pirate [Lv. 625]
                                            Ms = "Galley Pirate [Lv. 625]" --name mob
                                            NameQuest = "FountainQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Freezeburg Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(5257.8203125, 38.501129150390625, 4049.2529296875)
                                            CFrameMob = CFrame.new(5559.6796875, 152.30133056640625, 4002.3876953125)
                                            CFrameBring = CFrame.new(5576.9287109375, 38.501129150390625, 3942.519287109375)
   
  elseif MyLevel == 650 or MyLevel >= 675 then --Galley Captain [Lv. 650]
                                            Ms = "Galley Captain [Lv. 650]" --name mob
                                            NameQuest = "FountainQuest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Freezeburg Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(5257.8203125, 38.501129150390625, 4049.2529296875)
                                            CFrameMob = CFrame.new(5527.89501953125, 89.71221923828125, 4855.52490234375)    
                                                  CFrameBring = CFrame.new(5474.2099609375, 43.79754638671875, 4858.40478515625)            
end end    

    if game.PlaceId == 4442272183 then -- sea2                                                                                 
 if MyLevel == 700 or MyLevel <= 724 then --Raider [Lv. 700]
                                            Ms = "Raider [Lv. 700]" --name mob
                                            NameQuest = "Area1Quest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Area 1 Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-427.6253662109375, 73.31376647949219, 1836.4666748046875)
                                            CFrameBring = CFrame.new(-721.4496459960938, 39.483028411865234, 2367.37353515625) 
                                            CFrameMob = CFrame.new(-477.41650390625, 99.85147857666016, 2325.179443359375)
                                            
                                            elseif MyLevel == 725 or MyLevel <= 774 then --Mercenary [Lv. 725]"
                                            Ms = "Mercenary [Lv. 725]" --name mob
                                            NameQuest = "Area1Quest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Area 1 Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-427.6253662109375, 73.31376647949219, 1836.4666748046875)
                                            CFrameMob = CFrame.new(-856.7423095703125, 135.76040649414062, 1488.4263916015625)
                                            CFrameBring = CFrame.new(-933.7117919921875, 73.30294036865234, 1704.3751220703125) or CFrame.new(-1089.43212890625, 73.30294036865234, 1176.912353515625) 
                                            
                                            elseif MyLevel == 775 or MyLevel <= 874 then --Swan Pirate [Lv. 775]
                                            Ms = "Swan Pirate [Lv. 775]" --name mob
                                            NameQuest = "Area2Quest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Area 2 Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(635.6129150390625, 73.41377258300781, 918.0537109375)
                                            CFrameMob = CFrame.new(930.8262329101562, 151.6645965576172, 1192.30859375)
                                            CFrameBring = CFrame.new(929.234130859375, 73.30294036865234, 1210.5303955078125)
                                                                                                            
  elseif MyLevel == 875 or MyLevel <= 899 then --Marine Lieutenant [Lv. 875]
                                            Ms = "Marine Lieutenant [Lv. 875]" --name mob
                                            NameQuest = "MarineQuest3" --name get quest
                                            LevelQuest = 1      -- lv quest
                                            NameMon = "Marine Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-2441.47705078125, 73.35932922363281, -3217.752685546875)
                                            CFrameMob = CFrame.new(-2921.725341796875, 152.91773986816406, -3089.07470703125)
                                            CFrameBring = CFrame.new(-2843.622314453125, 73.30936431884766, -2990.433349609375)                                           

      elseif MyLevel == 900 or MyLevel <= 949 then --Marine Captain [Lv. 900]
                                            Ms = "Marine Captain [Lv. 900]" --name mob
                                            NameQuest = "MarineQuest3" --name get quest
                                            LevelQuest = 2         -- lv quest
                                            NameMon = "Marine Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-2441.47705078125, 73.35932922363281, -3217.752685546875)
                                            CFrameMob = CFrame.new(-2007.395751953125, 120.147216796875, -3203.88916015625)
                                            CFrameBring = CFrame.new(-1955.32568359375, 73.30936431884766, -3273.25341796875)   
                                            
                                            elseif MyLevel == 950 or MyLevel <= 974 then --Zombie [Lv. 950]
                                            Ms = "Zombie [Lv. 950]" --name mob
                                            NameQuest = "ZombieQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Graveyard Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-5495.4521484375, 48.823360443115234, -794.7634887695312)
                                            CFrameMob = CFrame.new(-5727.2783203125, 126.3752212524414, -728.1871337890625)
                                            CFrameBring = CFrame.new(-5677.216796875, 48.82343673706055, -696.4016723632812)
                                            
  elseif MyLevel == 975 or MyLevel <= 999 then --Vampire [Lv. 975]
                                            Ms = "Vampire [Lv. 975]" --name mob
                                            NameQuest = "ZombieQuest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Graveyard Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-5495.4521484375, 48.823360443115234, -794.7634887695312)
                                            CFrameMob = CFrame.new(-5922.28125, 42.31851577758789, -1084.8621826171875)
                                            CFrameBring = CFrame.new(-6050.15869140625, 6.745943546295166, -1314.393328125)                

                             elseif MyLevel == 1000 or MyLevel <= 1049 then --Snow Trooper [Lv. 1000]
                                            Ms = "Snow Trooper [Lv. 1000]" --name mob
                                            NameQuest = "SnowMountainQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Snow Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(607.1868286132812, 401.7651672363281, -5372.98046875)
                                            CFrameMob = CFrame.new(538.6248168945312, 428.3368835449219, -5546.4677734375)
                                            CFrameBring = CFrame.new(604.3399047851562, 401.7651672363281, -5566.1025390625)
                                            
  elseif MyLevel == 1050 or MyLevel <= 1099 then --Winter Warrior [Lv. 1050]
                                            Ms = "Winter Warrior [Lv. 1050]" --name mob
                                            NameQuest = "SnowMountainQuest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Snow Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(607.018310546875, 401.7651672363281, -5371.32080078125)
                                            CFrameMob = CFrame.new(1397.455078125, 465.8684387207031, -5203.23388671875)
                                            CFrameBring = CFrame.new(1316.513916015625, 429.7651062011719, -5313.61572265625)   

                                          elseif MyLevel == 1100 or MyLevel <= 1124 then --Lab Subordinate [Lv. 1100]
                                            Ms = "Lab Subordinate [Lv. 1100]" --name mob
                                            NameQuest = "IceSideQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Ice Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-6062.630859375, 16.295000076293945, -4903.611328125)
                                            CFrameMob = CFrame.new(-5836.0224609375, 48.78202819824219, -4508.833984375)
                                            CFrameBring = CFrame.new(-5737.90966796875, 16.295000076293945, -4500.74365234375)
                                            
  elseif MyLevel == 1125 or MyLevel <= 1174 then --Horned Warrior [Lv. 1125]
                                            Ms = "Horned Warrior [Lv. 1125]" --name mob
                                            NameQuest = "IceSideQuest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Ice Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-6062.630859375, 16.295000076293945, -4903.611328125)
                                            CFrameMob = CFrame.new(-6400.66796875, 25.011735916137695, -5818.05712890625)
                                            CFrameBring = CFrame.new(-6466.91748046875, 16.29500389099121, -5705.90283203125)           

                elseif MyLevel == 1175 or MyLevel <= 1199 then --Magma Ninja [Lv. 1175]
                                            Ms = "Magma Ninja [Lv. 1175]" --name mob
                                            NameQuest = "FireSideQuest" --name& get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Fire Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-5428.10595703125, 16.295000076293945, -5297.57177734375)
                                            CFrameMob = CFrame.new(-5750.71630859375, 62.33693313598633, -5983.71435546875)
                                            CFrameBring = CFrame.new(-5720.39404296875, 16.295000076293945, -5812.42138671875) or CFrame.new(-5185.24169921875, 16.295122146606445, -6091.33935546875)                       
                                            
  elseif MyLevel == 1200 or MyLevel <= 1349 then --Lava Pirate [Lv. 1200]
                                            Ms = "Lava Pirate [Lv. 1200]" --name mob
                                            NameQuest = "FireSideQuest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Fire Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-5428.10595703125, 16.295000076293945, -5297.57177734375)
                                            CFrameMob = CFrame.new(-5283.6630859375, 47.871910095214844, -4677.29345703125)
                                            CFrameBring = CFrame.new(-5289.73193359375, 16.295000076293945, -4558.72412109375)    

                     elseif MyLevel == 1350 or MyLevel <= 1374 then --Arctic Warrior [Lv. 1350]
                                            Ms = "Arctic Warrior [Lv. 1350]" --name mob
                                            NameQuest = "FrostQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Frost Quest Give"    --name npc
                                            CFrameQuest = CFrame.new(5667.05908203125, 28.51487159729004, -6484.171875)
                                            CFrameMob = CFrame.new(5993.02587890625, 58.28438186645508, -6174.68896484375)
                                            CFrameBring = CFrame.new(6118.96240234375, 28.71002769470215, -6218.337890625)
                                            
  elseif MyLevel == 1375 or MyLevel <= 1424 then --Snow Lurker [Lv. 1375]
                                            Ms = "Snow Lurker [Lv. 1375]" --name mob
                                            NameQuest = "FrostQuest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Frost Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(5667.05908203125, 28.51487159729004, -6484.171875)
                                            CFrameMob = CFrame.new(5557.3349609375, 57.892425537109375, -6598.27685546875)
                                            CFrameBring = CFrame.new(5601.07373046875, 28.939659118652344, -6723.14306640625)     

                           elseif MyLevel == 1425 or MyLevel <= 1449 then --Sea Soldier [Lv. 1425]
                                            Ms = "Sea Soldier [Lv. 1425]" --name mob
                                            NameQuest = "ForgottenQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Forgotten Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-3053.992431640625, 237.1895294189453, -10146.0830078125)
                                            CFrameMob = CFrame.new(-3519.587646484375, 74.93817138671875, -9724.068359375)
                                            CFrameBring = CFrame.new(-3368.539794921875, 27.295886993408203, -9782.5263671875)
                                            
  elseif MyLevel == 1450 or MyLevel >= 1474 then --Water Fighter [Lv. 1450]
                                            Ms = "Water Fighter [Lv. 1450]" --name mob
                                            NameQuest = "ForgottenQuest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Forgotten Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-3053.992431640625, 237.1895294189453, -10146.0830078125)
                                            CFrameMob = CFrame.new(-3435.46923828125, 290.52178955078125, -10501.794921875)
                                            CFrameBring = CFrame.new(-3419.48974609375, 239.18936157226562, -10508.7607421875)                                                                                                
                                            end end
                                            
                   if game.PlaceId == 7449423635 then -- sea3    
if MyLevel == 1500 or MyLevel <= 1524 then --Pirate Millionaire [Lv. 1500]
                                            Ms = "Pirate Millionaire [Lv. 1500]" --name mob
                                            NameQuest = "PiratePortQuest" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Pirate Port Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-289.6327819824219, 44.136451721191406, 5579.84228515625)
                                            CFrameMob = CFrame.new(-506.41162109375, 81.82060241699219, 5568.873046875)
                                            CFrameBring = CFrame.new(-565.9216918945312, 44.15378952026367, 5530.4326171875) 
                                            
  elseif MyLevel == 1525 or MyLevel <= 1574 then --Pistol Billionaire [Lv. 1525] 
                                            Ms = "Pistol Billionaire [Lv. 1525]" --name mob
                                            NameQuest = "PiratePortQuest" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Pirate Port Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-289.6327819824219, 44.136451721191406, 5579.84228515625)
                                            CFrameMob = CFrame.new(46.07829666137695, 134.91697692871094, 6076.12109375)
                                            CFrameBring = CFrame.new(-5.446301460266113, 74.13822937011719, 6129.6318359375)       
                                            
                                            elseif MyLevel == 1575 or MyLevel <= 1599 then --m_b3
                                            Ms = "Dragon Crew Warrior [Lv. 1575]" --name mob
                                            NameQuest = "AmazonQuest1" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Amazon Area 1 Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(5834.0126953125, 51.69459533691406, -1103.0084228515625)
                                            CFrameMob = CFrame.new(6297.81591796875, 109.59271240234375, -1086.8896484375)
                                            CFrameBring = CFrame.new(6491.39453125, 51.83952331542969, -979.994384765625)
                                            
  elseif MyLevel == 1600 or MyLevel <= 1624 then --m_b3
                                            Ms = "m_b31" --name mob
                                            NameQuest = "AmazonQuest1" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Amazon Area 1 Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(5834.0126953125, 51.69459533691406, -1103.0084228515625)
                                            CFrameMob = CFrame.new(6710.20361328125, 427.42218017578125, 115.1513900756836)
                                            CFrameBring = CFrame.new(6630.39697265625, 378.73773193359375, 262.2434387207031)                                             

                elseif MyLevel == 1625 or MyLevel <= 1649 then --m_b3
                                            Ms = "Female Islander [Lv. 1625]" --name mob
                                            NameQuest = "AmazonQuest2" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Amazon Area 2 Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(5447.1455078125, 601.9468994140625, 750.1180419921875)
                                            CFrameMob = CFrame.new(4646.63916015625, 792.59423828125, 776.8380126953125)
                                            CFrameBring = CFrame.new(4746.7080078125, 730.677001953125, 692.0280151367188)
                                            
  elseif MyLevel == 1650 or MyLevel <= 1699 then --Giant Islander [Lv. 1650]
                                            Ms = "Giant Islander [Lv. 1650]" --name mob
                                            NameQuest = "AmazonQuest2" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Amazon Area 2 Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(5447.1455078125, 601.9468994140625, 750.1180419921875)
                                            CFrameMob = CFrame.new(4920.9521484375, 670.2709350585938, -8.560141563415527)
                                            CFrameBring = CFrame.new(4763.189453125, 590.780029296875, -36.859249114990234)          

             elseif MyLevel == 1700 or MyLevel <= 1724 then --Marine Commodore [Lv. 1700]
                                            Ms = "Marine Commodore [Lv. 1700]" --name mob
                                            NameQuest = "MarineTreeIsland" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Marine Tree Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(2179.129150390625, 29.04867935180664, -6738.630859375)
                                            CFrameMob = CFrame.new(2440.161376953125, 126.5625991821289, -7372.95263671875)
                                            CFrameBring = CFrame.new(2339.177001953125, 73.4631576538086, -7515.31396484375)
                                            
  elseif MyLevel == 1725 or MyLevel <= 1774 then --Marine Rear Admiral [Lv. 1725]
                                            Ms = "Marine Rear Admiral [Lv. 1725]" --name mob
                                            NameQuest = "MarineTreeIsland" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Marine Tree Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(2179.129150390625, 29.04867935180664, -6738.630859375)
                                            CFrameMob = CFrame.new(3785.75634765625, 191.74342346191406, -7079.556640625)
                                            CFrameBring = CFrame.new(3670.998046875, 160.86729431152344, -7010.044921875)                

             elseif MyLevel == 1775 or MyLevel <= 1799 then --Fishman Raider [Lv. 1775]
                                            Ms = "Fishman Raider [Lv. 1775]" --name mob
                                            NameQuest = "DeepForestIsland3" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Turtle Adventure Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-10584.568359375, 332.1058654785156, -8758.7568359375)
                                            CFrameMob = CFrame.new(-10532.115234375, 374.5972900390625, -8267.361328125)
                                            CFrameBring = CFrame.new(-10686.943359375, 332.1058654785156, -8476.6474609375) or CFrame.new(-10408.716796875, 332.1058654785156, -8357.494140625)
                                            
  elseif MyLevel == 1800 or MyLevel <= 1824 then --Fishman Captain [Lv. 1800]
                                            Ms = "Fishman Captain [Lv. 1800]" --name mob
                                            NameQuest = "DeepForestIsland3" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Turtle Adventure Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-10584.568359375, 332.1058654785156, -8758.7568359375)
                                            CFrameMob = CFrame.new(-10308.4921875, 376.1828308105469, -8790.044921875)
                                            CFrameBring = CFrame.new(-10957.3740234375, 332.1058654785156, -8808.9951171875)   or CFrame.new(-11094.2783203125, 332.0664367675781, -9118.0009765625)              

                                             elseif MyLevel == 1825 or MyLevel <= 1849 then --Forest Pirate [Lv. 1825]
                                            Ms = "Forest Pirate [Lv. 1825]" --name mob
                                            NameQuest = "DeepForestIsland" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Deep Forest Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-13233.65625, 332.72137451171875, -7627.02490234375)
                                            CFrameMob = CFrame.new(-13497.9482421875, 391.09967041015625, -7907.6767578125)
                                            CFrameBring = CFrame.new(-13482.9677734375, 332.72137451171875, -7868.55712890625)
                                            
  elseif MyLevel == 1850 or MyLevel <= 1899 then --Mythological Pirate [Lv. 1850]
                                            Ms = "Mythological Pirate [Lv. 1850]" --name mob
                                            NameQuest = "DeepForestIsland" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Deep Forest Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-13233.65625, 332.72137451171875, -7627.02490234375)
                                            CFrameMob = CFrame.new(-13506.3642578125, 581.2453002929688, -6984.3818359375)
                                            CFrameBring = CFrame.new(-13658.9287109375, 470.13092041015625, -6991.89794921875)    or CFrame.new(  -13249.5517578125, 520.3683471679688, -6797.69970703125)                                   

elseif MyLevel == 1900 or MyLevel <= 1924 then --Jungle Pirate [Lv. 1900]
                                            Ms = "Jungle Pirate [Lv. 1900]" --name mob
                                            NameQuest = "DeepForestIsland2" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Deep Forest Area 2 Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-12683.2880859375, 391.20391845703125, -9901.1484375)
                                            CFrameMob = CFrame.new(-12090.5185546875, 447.84625244140625, -10561.8701171875)
                                            CFrameBring = CFrame.new(-11803.9326171875, 332.0815124511719, -10570.623046875) or CFrame.new(-12265.771484375, 332.0815124511719, -10488.734375)
                                            
  elseif MyLevel == 1925 or MyLevel <= 1974 then --Jungle Pirate [Lv. 1900]
                                            Ms = "Jungle Pirate [Lv. 1900]" --name mob
                                            NameQuest = "DeepForestIsland2" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Deep Forest Area 2 Quest Giver"    --name npc
                                            CFrameQuest = CFrame.new(-12683.2880859375, 391.20391845703125, -9901.1484375)
                                            CFrameMob = CFrame.new(-13335.2841796875, 446.6105041503906, -9916.2177734375)
                                            CFrameBring = CFrame.new(-13365.779296875, 391.8888854980469, -9815.4404296875)          

                                   elseif MyLevel == 1975 or MyLevel <= 1999 then --Reborn Skeleton [Lv. 1975]
                                            Ms = "Reborn Skeleton [Lv. 1975]" --name mob
                                            NameQuest = "HauntedQuest1" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Haunted Castle Quest Giver 1"    --name npc
                                            CFrameQuest = CFrame.new(-9480.8701171875, 142.4469451904297, 5567.6015625)
                                            CFrameMob = CFrame.new(-8761.7587890625, 176.92678833007812, 6178.2587890625)
                                            CFrameBring = CFrame.new(-8753.0634765625, 142.44805908203125, 6054.65185546875)
                                            
  elseif MyLevel == 2000 or MyLevel <= 2024 then --Living Zombie [Lv. 2000]
                                            Ms = "Living Zombie [Lv. 2000]" --name mob
                                            NameQuest = "HauntedQuest1" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Haunted Castle Quest Giver 1"    --name npc
                                            CFrameQuest = CFrame.new(-9480.8701171875, 142.4469451904297, 5567.6015625)
                                            CFrameMob = CFrame.new(-10080.99609375, 238.17595214844, 5915.44775390625)
                                            CFrameBring = CFrame.new(-10151.8662109375, 138.96990966796875, 5999.3056640625)                     

                        elseif MyLevel == 2025 or MyLevel <= 2049 then --Demonic Soul [Lv. 2025]
                                            Ms = "Demonic Soul [Lv. 2025]" --name mob
                                            NameQuest = "HauntedQuest2" --name get quest
                                            LevelQuest = 1         -- lv quest
                                            NameMon = "Haunted Castle Quest Giver 2"    --name npc
                                            CFrameQuest = CFrame.new(-9515.3583984375, 172.44805908203125, 6077.98193359375)
                                            CFrameMob = CFrame.new(-9567.6455078125, 205.01329040527344, 6041.50439453125)
                                            CFrameBring = CFrame.new(-9628.9521484375, 172.44805908203125, 6135.67529296875) or CFrame.new(-9355.6806640625, 172.44805908203125, 6128.958984375)
                                            
  elseif MyLevel == 2050 or MyLevel >= 2400 then --m_b3
                                            Ms = "Posessed Mummy [Lv. 2050]" --name mob
                                            NameQuest = "HauntedQuest2" --name get quest
                                            LevelQuest = 2        -- lv quest
                                            NameMon = "Haunted Castle Quest Giver 2"    --name npc
                                            CFrameQuest = CFrame.new(-9515.3583984375, 172.44805908203125, 6077.98193359375)
                                            CFrameMob = CFrame.new(-9683.0595703125, 30.237384796142578, 6359.37890625)
                                            CFrameBring = CFrame.new(-9592.609375, 6.502960681915283, 6304.86767578125)                                             
end end                                                                                                        
                end

    
--end scrit thu gọn
if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then -- sea3

--flasattack
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    y.activeController.timeToNextAttack = 0
                    y.activeController.hitboxMagnitude = 60.9
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 1
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)  end  end end) end) 
end
_G.FastAttack = true --on
    

--farm
m_f1.Parent = b_page1
m_f1.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
m_f1.Position = UDim2.new(0, 0, 0.0300000000, 0)
m_f1.Size = UDim2.new(0, 498, 0, 30)
m_f1.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_f1.Font = Enum.Font.Ubuntu
m_f1.Text = "   "
m_f1.TextColor3 = Color3.fromRGB(255, 255, 255)
m_f1.TextSize = 14.000
m_f1.TextWrapped = true
m_f1.TextXAlignment = Enum.TextXAlignment.Left

m_b1.Name = "m_b1"
m_b1.Parent = m_f1
m_b1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m_b1.Size = UDim2.new(0, 80, 0, 30)
m_b1.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_b1.Font = Enum.Font.SourceSans
m_b1.Text = "Tool : Select"
m_b1.TextColor3 = Color3.fromRGB(250, 250, 250)
m_b1.TextSize = 18.000
m_b1.MouseButton1Down:connect(function()
m_tbar.Visible = true
end)

function bartool()
m_tbar.Name = "m_tbar"
m_tbar.Parent = b_page1
m_tbar.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
m_tbar.Position = UDim2.new(0, 0, 0.0850000000, 0)
m_tbar.Size = UDim2.new(0, 80, 0, 60)
m_tbar.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_tbar.Visible = false

m_t1.Name = "m_t1"
m_t1.Parent = m_tbar
m_t1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m_t1.Size = UDim2.new(0, 80, 0, 20)
m_t1.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_t1.Font = Enum.Font.SourceSans
m_t1.Text = "Mele"
m_t1.TextColor3 = Color3.fromRGB(250, 250, 250)
m_t1.TextSize = 15.000
m_t1.MouseButton1Down:connect(function()
m_b1.Text = "Tool : Mele"
m_tbar.Visible = false
end)

m_t2.Name = "m_t2"
m_t2.Parent = m_tbar
m_t2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m_t2.Size = UDim2.new(0, 80, 0, 20)
m_t2.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_t2.Font = Enum.Font.SourceSans
m_t2.Position = UDim2.new(0, 0, 0.3500000000, 0)
m_t2.Text = "Sword"
m_t2.TextColor3 = Color3.fromRGB(250, 250, 250)
m_t2.TextSize = 15.000
m_t2.MouseButton1Down:connect(function()
m_b1.Text = "Tool : Sword"
m_tbar.Visible = false
end)

m_t3.Name = "m_t3"
m_t3.Parent = m_tbar
m_t3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m_t3.Size = UDim2.new(0, 80, 0, 20)
m_t3.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_t3.Font = Enum.Font.SourceSans
m_t3.Position = UDim2.new(0, 0, 0.7000000000, 0)
m_t3.Text = "Fruit"
m_t3.TextColor3 = Color3.fromRGB(250, 250, 250)
m_t3.TextSize = 15.000
m_t3.MouseButton1Down:connect(function()
m_b1.Text = "Tool : Fruit"
m_tbar.Visible = false
end) end

_G.bringmob = true

m_f2.Parent = b_page1
m_f2.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
m_f2.Position = UDim2.new(0, 0, 0.1000000000, 0)
m_f2.Size = UDim2.new(0, 498, 0, 30)
m_f2.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_f2.Font = Enum.Font.Ubuntu
m_f2.Text = "   Auto Farm Level"
m_f2.TextColor3 = Color3.fromRGB(255, 255, 255)
m_f2.TextSize = 14.000
m_f2.TextWrapped = true
m_f2.TextXAlignment = Enum.TextXAlignment.Left

m_b2.Name = "m_b2"
m_b2.Parent = m_f2
m_b2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m_b2.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
m_b2.Size = UDim2.new(0, 20, 0, 20)
m_b2.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_b2.Font = Enum.Font.SourceSans
m_b2.Text = ""
m_b2.TextColor3 = Color3.fromRGB(250, 250, 250)
m_b2.TextSize = 30.000
m_b2.MouseButton1Down:connect(function()
--on off 
if m_b2.Text == "" then --on
m_b2.Text = "X"
_G.m_b2 = true
elseif m_b2.Text == "X" then --off
m_b2.Text = ""
_G.m_b2 = false
stoptp()
end
end)

game:GetService('RunService').RenderStepped:connect(function() --fix quest
      if _G.m_b2 then
      if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
if _G.q1 then
_G.q1 = false
wait(180)
game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible = false
_G.q1 = true
end end end end)
          
                _G.bring2 = true
   game:GetService('RunService').RenderStepped:connect(function()
 if _G.m_b2 then
 CheckQuest() 
game.Players.LocalPlayer.Character.Animate.Disabled = false
          local humanoid = game.Players.LocalPlayer.Character.Humanoid 
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)  -- jump
game.Players.LocalPlayer.Character.Humanoid.Sit = false
             
if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
TP1(CFrameMob)
      
for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
      if v.Name == Ms then --name mob
      local pos = v.HumanoidRootPart --check pos
                    local Distance = (pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if Distance < 500 then
                  Speed = 725
                  elseif Distance < 200 then
                  Speed = 7000
                  elseif Distance < 150 then
                  Speed = 200000
                  elseif Distance < 1000 then
                        Speed = 400        
    elseif Distance >= 1500 then
                  Speed = 100
           end
       
       if v.Humanoid.Health > 0 then -- check health
       usetool()
       click() -- click          
       v.Humanoid:ChangeState(14)
      v.HumanoidRootPart.Size = Vector3.new(50, 50, 10)     --size hix box  
      v.HumanoidRootPart.CanCollide = false                                                
v.Head.CanCollide = false                                 
if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        
game:GetService("TweenService"):Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                        {CFrame = v.HumanoidRootPart.CFrame* CFrame.new(0, 40, 0) }
                    ):Play()                  
                                         
                      
 end end end end           
  end end)
 _G.getquest = true
game:GetService('RunService').RenderStepped:connect(function() -- get quest
if _G.getquest then
 if _G.m_b2 then
 _G.getquest = false
 CheckQuest()
  if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then                 
       TP1(CFrameQuest)
 for i,v in pairs(game.Workspace.NPCs:GetDescendants()) do
      if v.Name == NameMon then
      
local pos = v.Head --check pos
                    local Distance = (pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if Distance <=10 then
                  wait(5.3)           
local args = {
    [1] = "StartQuest",
    [2] = NameQuest,
    [3] = LevelQuest
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
           end  end end end end end wait(5.5) _G.getquest = true end)       
           
           game:GetService('RunService').RenderStepped:connect(function()
           if _G.m_b2 then
if _G.bringmob then       --bring mob
if _G.bring2 then
_G.bring2 = false
CheckQuest()
  if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then                
for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
      if v.Name == Ms then --name mob
if (v.HumanoidRootPart.Position - CFrameBring.Position).Magnitude <= 250 then
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
v.HumanoidRootPart.CFrame =  CFrameBring
v.Humanoid:ChangeState(14)
      v.HumanoidRootPart.Size = Vector3.new(60, 60, 10)     --size hix box  
      v.HumanoidRootPart.CanCollide = false                                                
v.Head.CanCollide = false                                 
if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)                    
                        end end end end end end end wait(4) _G.bring2 = true end)
 

m_f3.Parent = b_page1
m_f3.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
m_f3.Position = UDim2.new(0, 0, 0.1700000000, 0)
m_f3.Size = UDim2.new(0, 498, 0, 30)
m_f3.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_f3.Font = Enum.Font.Ubuntu
m_f3.Text = "   Auto Farm Mob"
m_f3.TextColor3 = Color3.fromRGB(255, 255, 255)
m_f3.TextSize = 14.000
m_f3.TextWrapped = true
m_f3.TextXAlignment = Enum.TextXAlignment.Left

m_b3.Name = "m_b3"
m_b3.Parent = m_f3
m_b3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m_b3.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
m_b3.Size = UDim2.new(0, 20, 0, 20)
m_b3.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_b3.Font = Enum.Font.SourceSans
m_b3.Text = ""
m_b3.TextColor3 = Color3.fromRGB(250, 250, 250)
m_b3.TextSize = 30.000
m_b3.MouseButton1Down:connect(function()
--on off 
if m_b3.Text == "" then --on
m_b3.Text = "X"
_G.m_b3 = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.m_b3 then --script

                   local humanoid = game.Players.LocalPlayer.Character.Humanoid 
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)  -- jump
                   
for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
      if v.ClassName == "Model" then --name mob
      local pos = v.HumanoidRootPart --check pos
                    local Distance = (pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if Distance < 500 then
                  Speed = 725
                  elseif Distance < 200 then
                  Speed = 7000
                  elseif Distance < 150 then
                  Speed = 200000
                  elseif Distance < 1000 then
                        Speed = 400        
    elseif Distance >= 1500 then
                  Speed = 100
           end
            
       if v.Humanoid.Health > 0 then -- check health
     usetool()
       if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1200 then
       
       click() -- click          
       v.Humanoid:ChangeState(14)
      v.HumanoidRootPart.Size = Vector3.new(50, 50, 10)     --size hix box  
      v.HumanoidRootPart.CanCollide = false                                                
v.Head.CanCollide = false                                 
if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        
game:GetService("TweenService"):Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                        {CFrame = v.HumanoidRootPart.CFrame* CFrame.new(0, 40, 0) }
                    ):Play()       
                                      
                 end end end end

end
end)
elseif m_b3.Text == "X" then --off
m_b3.Text = ""
_G.m_b3 = false
stoptp()
end
end)

m_f4.Parent = b_page1
m_f4.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
m_f4.Position = UDim2.new(0, 0, 0.2400000000, 0)
m_f4.Size = UDim2.new(0, 498, 0, 30)
m_f4.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_f4.Font = Enum.Font.Ubuntu
m_f4.Text = "   Auto Farm Chest"
m_f4.TextColor3 = Color3.fromRGB(255, 255, 255)
m_f4.TextSize = 14.000
m_f4.TextWrapped = true
m_f4.TextXAlignment = Enum.TextXAlignment.Left

m_b4.Name = "m_b4"
m_b4.Parent = m_f4
m_b4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m_b4.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
m_b4.Size = UDim2.new(0, 20, 0, 20)
m_b4.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_b4.Font = Enum.Font.SourceSans
m_b4.Text = ""
m_b4.TextColor3 = Color3.fromRGB(250, 250, 250)
m_b4.TextSize = 30.000
m_b4.MouseButton1Down:connect(function()
--on off 
if m_b4.Text == "" then --on
m_b4.Text = "X"
_G.m_b4 = true
elseif m_b4.Text == "X" then --off
m_b4.Text = ""
_G.m_b4 = false
end
end)
--tp chest
_G.chest = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.m_b4 then --script
if _G.chest then
_G.chest = false
local humanoid = game.Players.LocalPlayer.Character.Humanoid 
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)  -- jump
for i,v in pairs(game.Workspace:GetDescendants()) do
if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
local Distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if Distance < 500 then
                  Speed = 725
                  elseif Distance < 200 then
                  Speed = 7000
                  elseif Distance < 150 then
                  Speed = 200000
                  elseif Distance < 1000 then
                        Speed = 200        
    elseif Distance >= 1500 then
                  Speed = 100
           end
if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
game:GetService("TweenService"):Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                        {CFrame = v.CFrame }
                    ):Play()       
                    end end end end end wait(1) _G.chest = true end)

m_f5.Parent = b_page1
m_f5.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
m_f5.Position = UDim2.new(0, 0, 0.3100000000, 0)
m_f5.Size = UDim2.new(0, 498, 0, 30)
m_f5.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_f5.Font = Enum.Font.Ubuntu
m_f5.Text = "   Auto Farm Ectoplasm"
m_f5.TextColor3 = Color3.fromRGB(255, 255, 255)
m_f5.TextSize = 14.000
m_f5.TextWrapped = true
m_f5.TextXAlignment = Enum.TextXAlignment.Left

m_b5.Name = "m_b5"
m_b5.Parent = m_f5
m_b5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m_b5.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
m_b5.Size = UDim2.new(0, 20, 0, 20)
m_b5.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_b5.Font = Enum.Font.SourceSans
m_b5.Text = ""
m_b5.TextColor3 = Color3.fromRGB(250, 250, 250)
m_b5.TextSize = 30.000
m_b5.MouseButton1Down:connect(function()
if m_b5.Text == "" then --on
m_b5.Text = "X"
_G.m_b5 = true
elseif m_b5.Text == "X" then --off
m_b5.Text = ""
_G.m_b5 = false
end
end)
 --ectoplasm
game:GetService('RunService').RenderStepped:connect(function()
if _G.m_b5 then --script

local pos = CFrame.new(931.3291015625, 126.3013916015625, 33132.6015625) --check pos
                    local Distance = (pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if Distance >= 5000 then                
if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
elseif game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(931.3291015625, 126.3013916015625, 33132.6015625)
end end

TP1(CFrame.new(931.3291015625, 126.3013916015625, 33132.6015625))
local humanoid = game.Players.LocalPlayer.Character.Humanoid 
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)  -- jump
for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
      if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" then --name mob
      local pos = v.HumanoidRootPart --check pos
                    local Distance = (pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if Distance < 500 then
                  Speed = 725
                  elseif Distance < 200 then
                  Speed = 7000
                  elseif Distance < 150 then
                  Speed = 200000
                  elseif Distance < 1000 then
                        Speed = 400        
    elseif Distance >= 1500 then
                  Speed = 100
           end
            
       if v.Humanoid.Health > 0 then -- check health
     usetool()
     click() -- click          
       v.Humanoid:ChangeState(14)
      v.HumanoidRootPart.Size = Vector3.new(50, 50, 10)     --size hix box  
      v.HumanoidRootPart.CanCollide = false                                                
v.Head.CanCollide = false                                 
if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        
game:GetService("TweenService"):Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                        {CFrame = v.HumanoidRootPart.CFrame* CFrame.new(0, 40, 0) }
                    ):Play()       
                    
                    end end end end end)
                    
    --bring mob                                 
   _G.bring1  = true _G.bringmob = true
   game:GetService('RunService').RenderStepped:connect(function()
if _G.m_b5 then             
                if _G.bringmob then       --bring mob
if _G.bring1 then
_G.bring1 = false
for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
      if v.Name == "Ship Deckhand [Lv. 1250]" then --name mob
      local CFramebring1 = CFrame.new(1220.455810546875, 126.04237365722656, 33080.3125) or  CFrame.new(620.1790771484375, 126.0723876953125, 33022.390625)
if (v.HumanoidRootPart.Position - CFramebring1.Position).Magnitude <= 500 then
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
v.HumanoidRootPart.CFrame =  CFramebring1
v.Humanoid:ChangeState(14)
      v.HumanoidRootPart.Size = Vector3.new(60, 60, 10)     --size hix box  
      v.HumanoidRootPart.CanCollide = false                                                
v.Head.CanCollide = false                                 
if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)                    
                        end end end
      for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
      if v.Name == "Ship Engineer [Lv. 1275]"  then --name mob
      local CFramebring2 = CFrame.new(930.0367431640625, 125.52970123291016, 33432.359375)
if (v.HumanoidRootPart.Position - CFramebring2.Position).Magnitude <= 500 then
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
v.HumanoidRootPart.CFrame =  CFramebring2
v.Humanoid:ChangeState(14)
      v.HumanoidRootPart.Size = Vector3.new(60, 60, 10)     --size hix box  
      v.HumanoidRootPart.CanCollide = false                                                
v.Head.CanCollide = false                                 
if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)                    
                        end end    end
for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
      if v.Name == "Ship Steward [Lv. 1300]" then --name mob
      local CFramebring3 = CFrame.new(968.4664306640625, 40.78610610961914, 32981.1015625)
if (v.HumanoidRootPart.Position - CFramebring3.Position).Magnitude <= 500 then
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
v.HumanoidRootPart.CFrame =  CFramebring3
v.Humanoid:ChangeState(14)
      v.HumanoidRootPart.Size = Vector3.new(60, 60, 10)     --size hix box  
      v.HumanoidRootPart.CanCollide = false                                                
v.Head.CanCollide = false                                 
if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)                    
                        end end        end     
 end end end wait(4) _G.bring2 = true end)    

                 
m_f6.Parent = b_page1
m_f6.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
m_f6.Position = UDim2.new(0, 0, 0.3800000000, 0)
m_f6.Size = UDim2.new(0, 498, 0, 30)
m_f6.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_f6.Font = Enum.Font.Ubuntu
m_f6.Text = "   Auto Farm Bone"
m_f6.TextColor3 = Color3.fromRGB(255, 255, 255)
m_f6.TextSize = 14.000
m_f6.TextWrapped = true
m_f6.TextXAlignment = Enum.TextXAlignment.Left

m_b6.Name = "m_b6"
m_b6.Parent = m_f6
m_b6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m_b6.Position = UDim2.new(0.94000000, 0, 0.120000000, 0)
m_b6.Size = UDim2.new(0, 20, 0, 20)
m_b6.BorderColor3 = Color3.fromRGB(250, 250, 250)
m_b6.Font = Enum.Font.SourceSans
m_b6.Text = ""
m_b6.TextColor3 = Color3.fromRGB(250, 250, 250)
m_b6.TextSize = 30.000
m_b6.MouseButton1Down:connect(function()
--on off 
if m_b6.Text == "" then --on
m_b6.Text = "X"
_G.m_b6 = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.m_b6 then --script



end
end)
elseif m_b6.Text == "X" then --off
m_b6.Text = ""
_G.m_b6 = false
end
end)



bartool()




-- Scripts

local function LDLMGWH_fake_script() --farm
	local script = Instance.new('LocalScript', b_1)
	script.Parent.MouseButton1Down:connect(function()
		
    TextLabel.Text = "   NTT HUB | Farm"
	end)
end
coroutine.wrap(LDLMGWH_fake_script)()
local function OJTG_fake_script() -- scripts.LocalScript 
	local script = Instance.new('LocalScript', b_2)
	script.Parent.MouseButton1Down:connect(function()   
    TextLabel.Text = "   NTT HUB | Stat"
    
	end)
end
    
coroutine.wrap(OJTG_fake_script)()
