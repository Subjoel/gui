_G.Main = {}

function _G.Main:CreateWindow()
    local notify = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local ImageButton = Instance.new("ImageButton")

    --Properties:

    notify.Name = "notify"
    notify.Parent = (game:GetService("CoreGui") or gethui())

    Frame.Parent = notify
    Frame.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
    Frame.Position = UDim2.new(0.764291286, 0, 0.610972583, 0)
    Frame.Size = UDim2.new(0.235708699, 0, 0.134663358, 0)
    Frame.Style = Enum.FrameStyle.RobloxRound

    TextLabel.Parent = notify
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.765857458, 0, 0.610972583, 0)
    TextLabel.Size = UDim2.new(0.23179327, 0, 0.0897755623, 0)
    TextLabel.Font = Enum.Font.Unknown
    TextLabel.Text = _G.Text
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 14.000
    TextLabel.TextYAlignment = Enum.TextYAlignment.Top
    _G.Frame = {}
    --ImageButtonClick = _G.ButtonClick
    function _G.Frame:ImageButton(ImageButtonClick)
        ImageButton.Parent = notify
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.Position = UDim2.new(0.819107294, 0, 0.629675746, 0)
        ImageButton.Size = UDim2.new(0.125293657, 0, 0.185785517, 0)
        ImageButton.Image = "rbxassetid://12600834659"
        ImageButton.MouseButton1Click:Connect(function()
        pcall(ImageButtonClick)
        end)
    end
    return _G.Frame
end
local Frame1 = _G.Main:CreateWindow()
Frame1:ImageButton(function()
        _G.ButtonClick()
end)
return _G.Main
