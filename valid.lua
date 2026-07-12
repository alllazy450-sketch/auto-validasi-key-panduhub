pcall(function()
    local myKey = "your key here" 
    writefile("kezod_key.txt", myKey)
    writefile("kezod_auth.txt", myKey)
    writefile("kezod_config.txt", myKey)
    getgenv().Key = myKey
    getgenv().kezod_key = myKey
end)

task.wait(3)

loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/kezodxyz/kezod@main/autofarm_tester"))()

task.spawn(function()
    local CoreGui = game:GetService("CoreGui")
    local Players = game:GetService("Players")
    local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
    
    task.wait(3)

    local TargetBox = PlayerGui:FindFirstChild("TextBox", true) or CoreGui:FindFirstChild("TextBox", true)
    
    if TargetBox and TargetBox:IsA("TextBox") then
        TargetBox.Text = "your key here"
        task.wait(0.5)
        TargetBox:ReleaseFocus(true)
    end
end)