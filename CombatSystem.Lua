-- CombatSystem credits "X1f0yz"

local debris = game:GetService("Debris")
local RS = game:GetService("ReplicatedStorage")
local Remotes = RS.Remotes

Remotes.Attack.OnServerEvent:Connect(function(player:  Player, argumentdata)
		local character = player.Character
		if character then
				local humanoid: Humanoid = character:FindFirstChild("Humanoid")
				if humanoid then
						if character:FindFirstChild("Attacking") then
								return
						end
						
						local attacking = Instance.new("Folder")
						attacking.Name = "Attacking"
						attacking.Parent = character
						debris:AddItem(attacking, 2)
			
						print(player.Name .."is Attacking")
				end
		end
end)
