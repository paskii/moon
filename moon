--KEY IS B

getgenv().tog = false
getgenv().key = "b"
getgenv().X = 0
getgenv().Y = 800
getgenv().Z = 0

game:GetService("RunService").Heartbeat:Connect(function()
        if getgenv().tog then
                local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(getgenv().X, getgenv().Y, getgenv().Z)
                game:GetService("RunService").RenderStepped:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
        end
end)

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(keyPressed)
        if keyPressed == string.lower(getgenv().key) then
                pcall(function()
                        if getgenv().tog == false then
                                getgenv().tog = true
                                game.StarterGui:SetCore("SendNotification", {
                                        Title = "yallah.#1818",
                                        Text = "Moon Enabled" })
                        elseif getgenv().tog == true then
                                getgenv().tog = false
                                game.StarterGui:SetCore("SendNotification", {
                                        Title = "yallah.#1818",
                                        Text = "Moon Disabled" })
                        end
                end)
        end
end)
hookfunction(game.Players.LocalPlayer.IsInGroup, function() return true end)
