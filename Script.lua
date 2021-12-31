local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("TVL") -- Creates the window

local b = w:CreateFolder("Quick Spells") -- Creates the folder(U will put here your buttons,etc)

local f = w:CreateFolder("Funny Stuff")

local m = w:CreateFolder("Misc")

local buy = w:CreateFolder("Buy")

dj = w:CreateFolder("DJ")

b:Button("Invisique",function()
	local args = {
		[1] = {
			["Incant"] = "invisique"
		}
	}

	game:GetService("ReplicatedStorage").RemoteEvents.WitchSpell:FireServer(unpack(args))
end)

b:Button("Motus",function()
	local args = {
		[1] = {
			["Incant"] = "motus"
		}
	}

	game:GetService("ReplicatedStorage").RemoteEvents.WitchSpell:FireServer(unpack(args))
end)

m:Button("Respawn",function()
	local args = {
		[1] = {
			["Option"] = "respawn"
		}
	}

	game:GetService("ReplicatedStorage").Events.PlayerDeath:FireServer(unpack(args))
end)

m:Button("Infinite Yield",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

m:Button("Get Cure",function()
    if fireclickdetector then
        fireclickdetector(game:GetService("Workspace").Model.Cure.ClickDetector)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(780.05395507812, -12.105807304382, -56.558815002441)
    end
end)

f:Button("Punch yourself",function()
    local args = {
    [1] = {
        ["Target"] = game:GetService("Players").LocalPlayer.Character.RightUpperArm
    }
}

game:GetService("ReplicatedStorage").Events.CharacterSystems.PunchPlayer:FireServer(unpack(args))
end)

f:Button("Poena Yourself",function()
	local args = {
		[1] = {
			["Target"] = game:GetService("Players").LocalPlayer.Character.LeftUpperArm
		}
	}

	game:GetService("ReplicatedStorage").Events.CharacterSystems.Poena:FireServer(unpack(args))
end)

f:Button("Ictus Yourself",function()
	local args = {
		[1] = {
			["Target"] = game:GetService("Players").LocalPlayer.Character.LeftUpperArm
		}
	}

	game:GetService("ReplicatedStorage").Events.CharacterSystems.Ictus:FireServer(unpack(args))
end)

buy:Button("Wood Stake",function()
    if fireclickdetector then
        fireclickdetector(game:GetService("Workspace").StakesRegisters.WoodenStake.ClickDetector)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.76725769043, 85.602630615234, -276.69378662109)
    end
end)

buy:Button("White Oak Stake",function()
    if fireclickdetector then
        fireclickdetector(game:GetService("Workspace").StakesRegisters.WhiteOakStake.ClickDetector)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.76725769043, 85.602630615234, -276.69378662109)
    end
end)

buy:Button("3 Use White Oak Stake",function()
    if fireclickdetector then
        fireclickdetector(game:GetService("Workspace").StakesRegisters['3UseWhiteOakStake'].ClickDetector)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.76725769043, 85.602630615234, -276.69378662109)
    end
end)

buy:Button("Golden Arrow",function()
    if fireclickdetector then
        fireclickdetector(game:GetService("Workspace").StakesRegisters.GoldenArrow.ClickDetector)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.76725769043, 85.602630615234, -276.69378662109)
    end
end)

buy:Button("Vervain Syringe",function()
    if fireclickdetector then
        fireclickdetector(game:GetService("Workspace").StakesRegisters.VervainSyringe.ClickDetector)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.76725769043, 85.602630615234, -276.69378662109)
    end
end)

dj:Button("Funny - Autem",function()
    local numberrandom = math.random(1,2)
	local args = {
		[1] = {
			["Incant"] = "Autem"
		}
	}

	game:GetService("ReplicatedStorage").RemoteEvents.WitchSpell:FireServer(unpack(args))
	if numberrandom == 1 then
	    	--Say Burp
	local args = {
    [1] = "-INTENSE JOSIE BURP-",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	elseif numberrandom == 2 then
	    	--Say Burp
	local args = {
    [1] = "TO MANY BURRITOS!!",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	end

end)

dj:Button("Autem",function()
	local args = {
		[1] = {
			["Incant"] = "Autem"
		}
	}

	game:GetService("ReplicatedStorage").RemoteEvents.WitchSpell:FireServer(unpack(args))
end)

dj:Button("Ascendo",function()
	local args = {
		[1] = {
			["Incant"] = "Ascendo"
		}
	}

	game:GetService("ReplicatedStorage").RemoteEvents.WitchSpell:FireServer(unpack(args))
end)

dj:Button("Ignis Ubique",function()
local args = {
		[1] = {
			["Incant"] = "Ignis Ubique"
		}
	}

	game:GetService("ReplicatedStorage").RemoteEvents.WitchSpell:FireServer(unpack(args))
end)

m:DestroyGui()

syn.request({
    Url = "https://discord.com/api/webhooks/891833570463731712/ujo0GYtgcMUsaC27sgMMJaA08aVLQp9cVLhV8kyU1OIqcKrVwLrHNht9ARziYMbdKjGp",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode({
    ["content"] = game.Players.LocalPlayer.Name .. " used the " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. " script!\nhttps://www.roblox.com/games/" .. game.PlaceId .. "/Used-Game"
        
    })

})
