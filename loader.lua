local Xen0UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ui-01/01/01/01.lua"))()

local Window = Xen0UI:MakeWindow({
	Name = "[ PREMIUM ] Xen0 Hub",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "OrionTest"
})

--//__________________________________________________\\----//__________________________________________________\\----//__________________________________________________\\--
local rawfile = "https://raw.githubusercontent.com/xenowebo/lua/main/"

local function Loadscript(file)
    local source = game:HttpGet(rawfile .. file)
    local func = loadstring(source)

    if not func then
        error("Failed to compile: " .. file)
    end

    return func()
end

local function detectCurrentExecutor()
    local name, version = "Unknown", "N/A"
    
    if identifyexecutor then
        name, version = identifyexecutor()
    elseif nexomia then 
        name = "Nexomia"
    elseif solara then
        name = "Solara"
    elseif wave then
        name = "Wave"
    elseif XENO_LOADED or xeno then
        name = "Xeno"
    elseif potassium then
        name = "Potassium"
    elseif real then
        name = "Real Executor"
    elseif synapsez or sz or synz then
        name = "Synapse Z"
    elseif essential then
        name = "Essential"
    elseif volt then
        name = "Volt"
    elseif getexecutorname then
        name = getexecutorname()
    elseif syn then
        name = "Synapse"
    elseif Krnl then
        name = "KRNL"
    elseif fluxus then
        name = "Fluxus"
    elseif IsElectron then
        name = "Electron"
    end
    
    if version and version ~= "N/A" then
        return name .. " (" .. version .. ")"
    end
    return name
end

local currentExecutor = detectCurrentExecutor()

local startTime = os.time()

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local fpsCount = 0

RunService.Heartbeat:Connect(function()
    fpsCount = fpsCount + 1
end)

local SupportedGames = {
    [10901242398] = "No Limit Strongest Punch Simulator",
    [286090429]   = "Arsenal",
    [17424681530] = "Beat Obbies for Noobs",
    [10694086657] = "[350] Find the Noobs",
    [4510014022]  = "Ninja Legends",
    [3101667897]  = "Legends of Speed",
    [188814234]   = "Natural Disaster Survival",
    [16140645601] = "Just a Baseplate"
}

local function getGameDetails()
    local currentPlaceId = game.PlaceId
    local gameName = SupportedGames[currentPlaceId]

    if not gameName then
        local MarketPlaceService = game:GetService("MarketplaceService")
        local success, info = pcall(function() 
            return MarketPlaceService:GetProductInfo(currentPlaceId) 
        end)
        
        if success and info and info.Name then
            gameName = info.Name .. " (Universal Mode)"
        else
            gameName = "Universal Mode"
        end
    end
    return gameName, currentPlaceId
end

local detectedGame, placeId = getGameDetails()

local Players = game:GetService("Players")
--//__________________________________________________\\----//__________________________________________________\\----//__________________________________________________\\--

local Tab = Window:MakeTab({
	Name = "Stats📊",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph(
	"Executor📝",
	"Running on: " .. currentExecutor
)

local timeParagraph = Tab:AddParagraph(
	"Time⏳",
	"Calculating..."
)
--//__________________________________________________\\----//__________________________________________________\\----//__________________________________________________\\--
task.spawn(function()
    while task.wait(1) do
        local elapsed = os.time() - startTime

        local hours = math.floor(elapsed / 3600)
        local minutes = math.floor((elapsed % 3600) / 60)
        local seconds = elapsed % 60
        local timeString = string.format("%02dh:%02dm:%02ds", hours, minutes, seconds)

        timeParagraph:Set(
            "Play Time: " .. timeString,
            "Play Time: " .. timeString
        )
    end
end)
--//__________________________________________________\\----//__________________________________________________\\----//__________________________________________________\\--

local performanceParagraph = Tab:AddParagraph(
    "FPS AND Ping📶",
    "FPS: Calculating... \nPing: Calculating..."
)
--//__________________________________________________\\----//__________________________________________________\\----//__________________________________________________\\--
task.spawn(function()
    while task.wait(1) do
        local currentPing = "N/A"
        if LocalPlayer then
            local success, result = pcall(function() 
                return LocalPlayer:GetNetworkPing() 
            end)
            if success then
                currentPing = string.format("%.0f ms", result * 1000)
            end
        end

        performanceParagraph:Set(
            "FPS: " .. tostring(fpsCount) .. "\nPing: " .. currentPing,
            "FPS: " .. tostring(fpsCount) .. "\nPing: " .. currentPing
        )

        fpsCount = 0
    end
end)
--//__________________________________________________\\----//__________________________________________________\\----//__________________________________________________\\--

Tab:AddParagraph(
    "Game PlaceID🎮",
    "Current Game: " .. detectedGame .. "\nPlace ID: " .. tostring(placeId)
)

local serverParagraph = Tab:AddParagraph(
    "Server Stats",
    "Calculating server age..."
)
--//__________________________________________________\\----//__________________________________________________\\----//__________________________________________________\\--
task.spawn(function()
    while task.wait(1) do
        local serverTime = math.floor(workspace.DistributedGameTime)

        local hours = math.floor(serverTime / 3600)
        local minutes = math.floor((serverTime % 3600) / 60)
        local seconds = serverTime % 60
        local ageString = string.format("%02dh:%02dm:%02ds", hours, minutes, seconds)
        
        local activePlayers = #Players:GetPlayers()
        local maxLobbySize = Players.MaxPlayers

        serverParagraph:Set(
            "Server Age: " .. ageString .. 
            "\nPlayers In Lobby: " .. tostring(activePlayers) .. "/" .. tostring(maxLobbySize),
            "Server Age: " .. ageString .. 
            "\nPlayers In Lobby: " .. tostring(activePlayers) .. "/" .. tostring(maxLobbySize)
        )
    end
end)
--//__________________________________________________\\----//__________________________________________________\\----//__________________________________________________\\--

local Tab = Window:MakeTab({
	Name = "Universal 🌍",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Scripts"
})

Tab:AddButton({
	Name = "XenoYield FE",
	Callback = function()
      		Loadscript("XenoYield.lua")
  	end    
})

Tab:AddButton({
	Name = "Cobalt SPY",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Wortexios/CobaltSpy/main/Cobalt"))()
  	end    
})

Tab:AddButton({
	Name = "Fly GUI",
	Callback = function()
      		Loadscript("Fly.lua")
  	end    
})

Tab:AddButton({
	Name = "Fling All",
	Callback = function()
      		Loadscript("Fling.lua")
  	end    
})

Tab:AddButton({
	Name = "FPS Counter",
	Callback = function()
      		Loadscript("FPSCounter.lua")
  	end    
})

Tab:AddButton({
	Name = "Server Hop",
	Callback = function()
      		Loadscript("ServerHop.lua")
  	end    
})

local Section = Tab:AddSection({
	Name = "made by Vaehz on YT"
})

Tab:AddButton({
	Name = "Product Faker v2",
	Callback = function()
      		loadstring(game:HttpGet("https://loadstring.net/raw/Va8W0lE1PS"))()
  	end    
})

Tab:AddButton({
	Name = "Brainrot Police",
	Callback = function()
      		loadstring(game:HttpGet("https://loadstring.net/raw/PSH2TOWUGP"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Just a Baseplate",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Scripts"
})

Tab:AddButton({
	Name = "Emote Wheel",
	Callback = function()
      		Loadscript("EmoteWheel.lua")
  	end    
})

Tab:AddButton({
	Name = "Axirian FE",
	Callback = function()
      		Loadscript("AxirianFE.lua")
  	end    
})

Tab:AddButton({
	Name = "Invincible Animation",
	Callback = function()
      		Loadscript("Invincible.lua")
  	end    
})

Tab:AddButton({
	Name = "Egor Animation [maybe outdated]",
	Callback = function()
      		Loadscript("Egor.lua")
  	end    
})

Tab:AddButton({
	Name = "Server Hop",
	Callback = function()
      		Loadscript("ServerHop.lua")
  	end    
})

local Tab = Window:MakeTab({
	Name = "Experiences 🎮",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Scripts"
})

Tab:AddButton({
	Name = "Arsenal",
	Callback = function()
      		Loadscript("Arsenal.lua")
			Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Beat Obby For Noobs",
	Callback = function()
      		Loadscript("SpeedJumpGUI.lua")
			Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "[350] Find The Noobs",
	Callback = function()
      		Loadscript("FindTheNoobs.lua")
			Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Legends Of Speed",
	Callback = function()
      		Loadscript("LegendsOfSpeed.lua")
			Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Ninja Legends",
	Callback = function()
      		Loadscript("NinjaLegends.lua")
			Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "NO LIMIT STRONGEST PUNCH SIMULATOR",
	Callback = function()
      		Loadscript("NoLimitStrongestPunchSimulator.lua")
			Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Natural Disaster Survival",
	Callback = function()
      		Loadscript("NaturalDisasterSurvival.lua")
			Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Destroy GUI",
	Callback = function()
			Xen0UI:Destroy()
  	end    
})

--DO NOT THIS IS A SKID THIS SCRIPT WAS MADE BY StarCodeHailkuato, blixxARSENAL, blixxEXE, Xen0Scripture--
print("DO NOT THIS IS A SKID THIS SCRIPT WAS MADE BY StarCodeHailkuato, blixxARSENAL, blixxEXE, Xen0Scripture")
