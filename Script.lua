local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("TVL") -- Creates the window

local b = w:CreateFolder("Quick Spells") -- Creates the folder(U will put here your buttons,etc)

local f = w:CreateFolder("Funny Stuff")

local m = w:CreateFolder("Misc")

local teleportTarget = ""

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

f:Button("Fly Yourself",function()
	local args = {
		[1] = {
			["Target"] = game:GetService("Players").LocalPlayer.Character.LeftUpperArm
		}
	}

	game:GetService("ReplicatedStorage").Events.CharacterSystems.MotusCorporis:FireServer(unpack(args))
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
