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
	"Calculating uptime..."
)

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
      		Loadscript("Orbitium.lua")
			  Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Destroy GUI",
	Callback = function()
			  Xen0UI:Destroy()
  	end    
})
