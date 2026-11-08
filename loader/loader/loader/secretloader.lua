local Players = game:GetService("Players")
local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = PlayerGui
screenGui.Enabled = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 0, 0, 0)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.new(1, 1, 1)
frame.Parent = screenGui

local passwordBox = Instance.new("TextBox")
passwordBox.Size = UDim2.new(0, 250, 0, 30)
passwordBox.Position = UDim2.new(0.5, -125, 0.4, 0)
passwordBox.Text = ""
passwordBox.PlaceholderText = "Secret Dev Xen0 Access"
passwordBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
passwordBox.TextColor3 = Color3.new(1, 1, 1)
passwordBox.BorderSizePixel = 1
passwordBox.BorderColor3 = Color3.new(1, 1, 1)
passwordBox.Parent = frame

local submitButton = Instance.new("TextButton")
submitButton.Size = UDim2.new(0, 100, 0, 30)
submitButton.Position = UDim2.new(0.5, -50, 0.6, 0)
submitButton.Text = "Submit"
submitButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
submitButton.TextColor3 = Color3.new(1, 1, 1)
submitButton.BorderSizePixel = 1
submitButton.BorderColor3 = Color3.new(1, 1, 1)
submitButton.Parent = frame

local getKeyButton = Instance.new("TextButton")
getKeyButton.Size = UDim2.new(0, 100, 0, 30)
getKeyButton.Position = UDim2.new(0.5, -50, 0.7, 0)
getKeyButton.Text = "Get Key"
getKeyButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
getKeyButton.TextColor3 = Color3.new(1, 1, 1)
getKeyButton.BorderSizePixel = 1
getKeyButton.BorderColor3 = Color3.new(1, 1, 1)
getKeyButton.Parent = frame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0, 200, 0, 30)
titleLabel.Position = UDim2.new(0.5, -100, 0.2, 0)
titleLabel.Text = "Password Required"
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.FontSize = Enum.FontSize.Size24
titleLabel.Parent = frame

-- Accepted passwords
local correctPasswords = {
    "secretkey00"
}

local function enableGui()
    screenGui.Enabled = true

    frame:TweenSize(
        UDim2.new(0, 400, 0, 350),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Sine,
        0.5
    )

    frame:TweenPosition(
        UDim2.new(0.5, -200, 0.5, -175),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Sine,
        0.5
    )
end

local function checkPassword()
    local entered = passwordBox.Text:match("^%s*(.-)%s*$")

    local valid = false

    for _, password in ipairs(correctPasswords) do
        if entered == password then
            valid = true
            break
        end
    end

    if valid then
        print("Password accepted!")

        frame:TweenSize(
            UDim2.new(0, 0, 0, 0),
            Enum.EasingDirection.In,
            Enum.EasingStyle.Sine,
            0.5,
            true,
            function()
                screenGui.Enabled = false

                local success, err = pcall(function()
                    local Xen0UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ui-01/01/01/01.lua"))()

local Window = Xen0UI:MakeWindow({
	Name = "Xen0 UI || Secret Dev Hub",
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
	Name = "Home🏠",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph(
	"Welcome!",
	"Welcome to Xen0 Script Hub"
)

Tab:AddParagraph(
	"Hub Version",
	"Version: v6.9.420"
)

Tab:AddParagraph(
	"Hub Status",
	"Current Status: Online"
)

Tab:AddParagraph(
	"What's New",
	"Newly Added: \nNO LIMIT STRONGEST PUNCH SIMULATOR \nXenoYield v69 \nCobalt Spy \n--//_____________________\\-- \nNew Xen0 UI"
)

Tab:AddParagraph(
	"Official Dev Accounts of Xen0 [Roblox]",
	"StarCodeHailkuato \nblixxEXE \nXen0Scripture"
)

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

local TerminalTab = Window:MakeTab({
    Name = "DEV TERMINAL",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local commandText = ""
local terminalOutput = "XEN0 TERMINAL [VERSION 1.0]\nType 'help' to see commands.\n"

local Output = TerminalTab:AddParagraph("XEN0 TERMINAL", terminalOutput)

TerminalTab:AddTextbox({
    Name = "Command Input",
    Default = "",
    TextDisappear = false,

    Callback = function(Value)
        commandText = tostring(Value)
        print("[XEN0] Input received:", commandText)
    end
})

local function ExecuteCommand()
    print("[XEN0] Execute button clicked")

    local command = string.lower(commandText)
    command = string.gsub(command, "^%s*(.-)%s*$", "%1")

    local result

    if command == "help" then
        result1 = "COMMANDS:\nhelp\nversion\nstatus\nabout\nwhoami\nplace\nclear"
		Output:Set(""..result1, ""..result1)

    elseif command == "version" then
        result2 = "XEN0 HUB VERSION: 6.9.420"
		Output:Set(""..result2, ""..result2)

    elseif command == "status" then
        result3 = "HUB: ONLINE\nTERMINAL: OPERATIONAL"
		Output:Set(""..result3, ""..result3)

    elseif command == "about" then
        result4 = "XEN0 HUB | v6.9.420"
		Output:Set(""..result4, ""..result4)

    elseif command == "whoami" then
        result5 = "PLAYER: " .. game:GetService("Players").LocalPlayer.Name
		Output:Set(""..result5, ""..result5)

    elseif command == "place" then
        result6 = "PLACE ID: " .. tostring(game.PlaceId)
		Output:Set(""..result6, ""..result6)

    elseif command == "clear" then
        result7 = "XEN0 TERMINAL CLEARED.\n"
        Output:Set(""..result7, ""..result7)
        return

    elseif command == "" then
        result00 = "ERROR: TYPE A COMMAND FIRST."
		Output:Set(""..result00, ""..result00)

    else
        resultunknown = "UNKNOWN COMMAND: " .. command
		Output:Set(""..resultunknown, ""..resultunknown)
    end

    terminalOutput = terminalOutput
        .. "\n> " .. command
        .. "\n" .. result
        .. "\n"

    Output:Set("XEN0 TERMINAL", terminalOutput)
    print("[XEN0] Command executed:", command)
end

TerminalTab:AddButton({
    Name = "Execute Command",
    Callback = ExecuteCommand
})
                end)

                if not success then
                    warn("Loader error:", err)
                end
            end
        )
    else
        warn("Incorrect password")
        passwordBox.Text = ""
    end
end

getKeyButton.MouseButton1Click:Connect(function()
    if toclipboard then
    	local Xen0UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ui-01/01/01/01.lua"))()

        Xen0UI:MakeNotification({
			Name = "Hint",
			Content = "The key is somewhere in the Hub",
			Image = "rbxassetid://448334599999",
			Time = 5
})
    end
end)

submitButton.MouseButton1Click:Connect(checkPassword)

passwordBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        checkPassword()
    end
end)

task.wait(1)
enableGui()
