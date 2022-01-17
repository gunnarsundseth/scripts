if not game:IsLoaded() then

	game.Loaded:Wait()
 
 end
 local Players = game:GetService("Players")
 Lp = Players.LocalPlayer
 Character = Lp.Character

 function Teleport()
	if not game:IsLoaded() then

	game.Loaded:Wait()
 
 end
 local Players = game:GetService("Players")
 Lp = Players.LocalPlayer
 Character = Lp.Character

 function Teleport(waittime)
	wait(waittime)
	local button = Lp.PlayerGui:WaitForChild("Gates").ImageLabel.Proceed

	local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
	for i,v in pairs(events) do
   		for i,v in pairs(getconnections(button[v])) do
       		v:Fire()
   		end
	end
end

 end
 if game.PlaceId == 6698092752 then
	repeat
		for i,f in pairs(game:GetService("Workspace").GateSpawn:GetChildren()) do
			if string.match(f.Name, "Arank") or string.match(f.Name, "Brank") then
				while true do
					print(f.Name)
					wait(0.01)
					f.CFrame = Character.HumanoidRootPart.CFrame
					Teleport(10)
				end
			end
		end
	until false
else
	print("dungeon")
	while wait() do
		for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			if string.match(v.Name, "ExitGate") then
				v.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				Teleport(10)
			end
			if string.match(v.Name, "Mobs") then
				print(v)
					if v:FindFirstChild("Enemy") then
						print("a")
							repeat
								wait()
								local ohString1 = "INFERNUS METEOR"
								game:GetService("Players").LocalPlayer.Backpack.Mage.Fire["FireMage(OnClick)"].Damage:FireServer(ohString1, v.HumanoidRootPart.Position)
								local ohString2 = "INFERNUS FLOOR"
								game:GetService("Players").LocalPlayer.Backpack.Mage.Fire["FireMage(OnClick)"].Damage:FireServer(ohString2, v.HumanoidRootPart.Position)
							until v.Humanoid.Health <= 0
						end
					end
				end
			end
		end
