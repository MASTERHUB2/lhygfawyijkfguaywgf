local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/MASTERHUB2/UIDIS/main/uidiscordremixexe2.lua")()



local LocalPlayer = game:GetService("Players").LocalPlayer
local VirtualUser = game:GetService('VirtualUser')


local function UpdateTime()
   local GameTime = math.floor(workspace.DistributedGameTime+0.5)
   local Hour = math.floor(GameTime/(60^2))%24
   local Minute = math.floor(GameTime/(60^1))%60
   local Second = math.floor(GameTime/(60^0))%60
   game:GetService("CoreGui").Discord.MainFrame.TopFrame.TopFrameHolder.ServersHolder.ServerFrame.ChannelContentFrame.ChannelHolder.Label.Text = ("Server Time \n".."Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
end

spawn(function()
   while true do
       UpdateTime()
       game:GetService("RunService").RenderStepped:Wait()
   end
end)

-- sword : 7251993295 http://www.roblox.com/asset/?id=7251993295
-- cart : 7294901968 http://www.roblox.com/asset/?id=7294901968
-- person : 7252023075 http://www.roblox.com/asset/?id=7252023075
-- devil : 7044284832 http://www.roblox.com/asset/?id=7044284832
-- misc : 7044233235 http://www.roblox.com/asset/?id=7044233235
-- teleport : 7044226690 http://www.roblox.com/asset/?id=7044226690
-- stats : 7040410130 http://www.roblox.com/asset/?id=7040410130
-- main :  7040391851 http://www.roblox.com/asset/?id=7040391851
-- setting : 7040347038 http://www.roblox.com/asset/?id=7040347038

local win = DiscordLib:Window("MASTER HUB", "")

local serv = win:Server("Blox Fruit", "")

local Tab1 = serv:Channel("Main", "http://www.roblox.com/asset/?id=7040391851")
Tab1:Label("Server Time")
Tab1:Toggle("Auto Farm Level",_G.AutoFarm,function(s)
   print(s)
end)
