local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.5, 0, 0.8, 0)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundTransparency = 0.5
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 20)
uiCorner.Parent = mainFrame

local sidebarFrame = Instance.new("Frame")
sidebarFrame.Size = UDim2.new(0.2, 0, 1, 0)
sidebarFrame.Position = UDim2.new(0, 0, 0, 0)
sidebarFrame.BackgroundTransparency = 0.5
sidebarFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
sidebarFrame.Parent = mainFrame

local sidebarUIListLayout = Instance.new("UIListLayout")
sidebarUIListLayout.Padding = UDim.new(0, 10)
sidebarUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
sidebarUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
sidebarUIListLayout.Parent = sidebarFrame

local scriptsCategory = Instance.new("TextButton")
scriptsCategory.Text = "Scripts"
scriptsCategory.Size = UDim2.new(1, 0, 0, 50)
scriptsCategory.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
scriptsCategory.Font = Enum.Font.SourceSansBold
scriptsCategory.TextSize = 18
scriptsCategory.TextColor3 = Color3.new(1, 1, 1)
scriptsCategory.Parent = sidebarFrame

local universalCategory = Instance.new("TextButton")
universalCategory.Text = "Universal"
universalCategory.Size = UDim2.new(1, 0, 0, 50)
universalCategory.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
universalCategory.Font = Enum.Font.SourceSansBold
universalCategory.TextSize = 18
universalCategory.TextColor3 = Color3.new(1, 1, 1)
universalCategory.Parent = sidebarFrame

local sidebarCategoryCorner = Instance.new("UICorner")
sidebarCategoryCorner.CornerRadius = UDim.new(0, 10)
sidebarCategoryCorner.Parent = scriptsCategory

local sidebarCategoryCorner2 = Instance.new("UICorner")
sidebarCategoryCorner2.CornerRadius = UDim.new(0, 10)
sidebarCategoryCorner2.Parent = universalCategory

local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(0.8, 0, 1, 0)
contentFrame.Position = UDim2.new(0.2, 0, 0, 0)
contentFrame.BackgroundTransparency = 1
contentFrame.Parent = mainFrame

local contentFrameCorner = Instance.new("UICorner")
contentFrameCorner.CornerRadius = UDim.new(0, 20)
contentFrameCorner.Parent = contentFrame

local function createButton(text, position, callback)
    local button = Instance.new("TextButton")
    button.Text = text
    button.Size = UDim2.new(0.8, 0, 0, 50)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Parent = contentFrame

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 10)
    buttonCorner.Parent = button

    button.MouseButton1Click:Connect(callback)
end

local function createScriptsButtons()
    createButton("OP Gun", UDim2.new(0.1, 0, 0.1, 0), function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Y8xVz9ny", true))()
    end)

    createButton("Bypass Forced Walkspeed", UDim2.new(0.1, 0, 0.3, 0), function()
        print("Bypass Forced Walkspeed executed")
    end)

    createButton("Rublex Autofarm", UDim2.new(0.1, 0, 0.5, 0), function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Insanityyz/Ultranite/main/paperspls/rublexautofarm"))()
    end)
end

local function createUniversalButtons()
    createButton("Noclip", UDim2.new(0.1, 0, 0.1, 0), function()
        print("Noclip activated")
    end)

    local speedButton = Instance.new("TextButton")
    speedButton.Text = "Speed"
    speedButton.Size = UDim2.new(0.4, 0, 0, 50)
    speedButton.Position = UDim2.new(0.1, 0, 0.3, 0)
    speedButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    speedButton.Font = Enum.Font.SourceSans
    speedButton.TextSize = 18
    speedButton.TextColor3 = Color3.new(1, 1, 1)
    speedButton.Parent = contentFrame

    local speedButtonCorner = Instance.new("UICorner")
    speedButtonCorner.CornerRadius = UDim.new(0, 10)
    speedButtonCorner.Parent = speedButton

    local speedTextBox = Instance.new("TextBox")
    speedTextBox.PlaceholderText = "Enter speed..."
    speedTextBox.Size = UDim2.new(0.3, 0, 0, 50)
    speedTextBox.Position = UDim2.new(0.55, 0, 0.3, 0)
    speedTextBox.BackgroundTransparency = 0.8
    speedTextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    speedTextBox.Font = Enum.Font.SourceSans
    speedTextBox.TextSize = 18
    speedTextBox.TextColor3 = Color3.new(1, 1, 1)
    speedTextBox.Parent = contentFrame

    local applySpeedButton = Instance.new("TextButton")
    applySpeedButton.Text = "Apply"
    applySpeedButton.Size = UDim2.new(0.2, 0, 0, 50)
    applySpeedButton.Position = UDim2.new(0.9, 0, 0.3, 0)
    applySpeedButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    applySpeedButton.Font = Enum.Font.SourceSans
    applySpeedButton.TextSize = 18
    applySpeedButton.TextColor3 = Color3.new(1, 1, 1)
    applySpeedButton.Parent = contentFrame

    local applySpeedButtonCorner = Instance.new("UICorner")
    applySpeedButtonCorner.CornerRadius = UDim.new(0, 10)
    applySpeedButtonCorner.Parent = applySpeedButton

    applySpeedButton.MouseButton1Click:Connect(function()
        local speed = tonumber(speedTextBox.Text)
        if speed then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
            print("Walkspeed set to " .. speed)
        else
            print("Invalid speed input")
        end
    end)
end

createScriptsButtons()

local function switchCategory(category)
    if category == "Scripts" then
        for _, child in ipairs(contentFrame:GetChildren()) do
            if child:IsA("GuiObject") then
                child:Destroy()
            end
        end
        createScriptsButtons()
    elseif category == "Universal" then
        for _, child in ipairs(contentFrame:GetChildren()) do
            if child:IsA("GuiObject") then
                child:Destroy()
            end
        end
        createUniversalButtons()
    end
end

scriptsCategory.MouseButton1Click:Connect(function()
    switchCategory("Scripts")
end)

universalCategory.MouseButton1Click:Connect(function()
    switchCategory("Universal")
end)

local minimized = false
local minimizeButton = Instance.new("TextButton")
minimizeButton.Text = "_"
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -40, 0, 10)
minimizeButton.BackgroundTransparency = 1
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 18
minimizeButton.TextStrokeTransparency = 0
minimizeButton.Parent = mainFrame

local function toggleMinimize()
    if minimized then
        minimized = false
        contentFrame.Visible = true
        mainFrame:TweenSizeAndPosition(
            UDim2.new(0.5, 0, 0.8, 0),
            UDim2.new(0.5, 0, 0.5, 0),
            Enum.EasingDirection.Out,
            Enum.EasingStyle.Quad,
            0.6,
            true
        )
    else
        minimized = true
        contentFrame.Visible = false
        mainFrame:TweenSizeAndPosition(
            UDim2.new(0, 60, 0, 30),
            UDim2.new(0.5, 0, 0.5, 0),
            Enum.EasingDirection.Out,
            Enum.EasingStyle.Quad,
            0.6,
            true
        )
    end
end

minimizeButton.MouseButton1Click:Connect(toggleMinimize)

local closeButton = Instance.new("TextButton")
closeButton.Text = "X"
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -80, 0, 10)
closeButton.BackgroundTransparency = 1
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.TextStrokeTransparency = 0
closeButton.Parent = mainFrame

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
