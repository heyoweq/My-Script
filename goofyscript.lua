getgenv().autoTap = true
getgenv().autoBasic = true
getgenv().autoWood = true

spawn(function()
while autoTap do wait(0.2)
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        wait(0.2)
    end
end)

spawn(function()
while autoBasic do wait(0.3)
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer({}, "Starter", 1)
    end
end)

spawn(function()
while autoWood do wait(0.3)
    local args = {[1] = {},[2] = "Wood Egg",[3] = 1}game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
    end
end)








