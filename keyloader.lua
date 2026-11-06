
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
passwordBox.PlaceholderText = "Enter Password"
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

-- Permanent keys
local permanentKeys = {
    ["reviewer0987654321"] = true,
    ["tester0987654321"] = true,
    ["premium0987654321"] = true
}

-- URLs
local keyUrlFile = "https://raw.githubusercontent.com/xenowebo/loader/loader/current-key-url.txt"
local getKeyUrl = "https://pastebin.com/7DRt1iRq"
local loaderUrl = "https://raw.githubusercontent.com/xenowebo/loader/loader/loader.lua"

local function trim(value)
    return value:match("^%s*(.-)%s*$")
end

-- Fetch the current weekly key
local function getWeeklyKey()
    local url = trim(game:HttpGet(keyUrlFile))

    if not url:match("^https://pastebin%.com/raw/[A-Za-z0-9]+$") then
        error("Invalid weekly key URL")
    end

    local key = trim(game:HttpGet(url))

    if key == "" then
        error("Weekly key is empty")
    end

    return key
end

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

local function runLoader()
    local source = game:HttpGet(loaderUrl)
    local func, compileError = loadstring(source)

    assert(func, compileError)
    func()
end

local function checkPassword()
    local entered = trim(passwordBox.Text)
    local valid = permanentKeys[entered] == true

    if not valid then
        local success, weeklyKey = pcall(getWeeklyKey)

        if not success then
            warn("Weekly key check failed:", weeklyKey)
            passwordBox.Text = ""
            return
        end

        valid = (entered == weeklyKey)
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

                local success, err = pcall(runLoader)

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
toclipboard("https://mboost.me/ftQ")
end)

submitButton.MouseButton1Click:Connect(checkPassword)

passwordBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        checkPassword()
    end
end)

task.wait(1)
enableGui()
