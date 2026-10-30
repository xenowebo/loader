local Xen0UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ui-01/01/01/01.lua"))()

local Window = Xen0UI:MakeWindow({
	Name = "[ PREMIUM ] Xen0 Hub",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "OrionTest"
})

local rawfile = "https://raw.githubusercontent.com/xenowebo/lua/main/"

local function Loadscript(file)
    local source = game:HttpGet(rawfile .. file)
    local func = loadstring(source)

    if not func then
        error("Failed to compile: " .. file)
    end

    return func()
end

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
			Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Axirian FE",
	Callback = function()
      		Loadscript("AxirianFE.lua")
			  Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Invincible Animation",
	Callback = function()
      		Loadscript("Invincible.lua")
			  Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Egor Animation [maybe outdated]",
	Callback = function()
      		Loadscript("Egor.lua")
			  Xen0UI:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Server Hop",
	Callback = function()
      		Loadscript("ServerHop.lua")
			  Xen0UI:Destroy()
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
