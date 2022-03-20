
local narcu = Instance.new("ScreenGui")
local narc = Instance.new("Frame")
local commlog = Instance.new("TextLabel")
local command = Instance.new("TextBox")
local notify = Instance.new("Frame")
local titlenotify = Instance.new("TextLabel")
local notifyinsideframe = Instance.new("Frame")
local desc = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")



narcu.Name = "narcu"
narcu.Parent = game.CoreGui
narcu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

narc.Name = "narc"
narc.Parent = narcu
narc.BackgroundColor3 = Color3.fromRGB(33, 23, 2)
narc.BorderColor3 = Color3.fromRGB(255, 149, 0)
narc.Position = UDim2.new(0.00874635205, 0, 0.581595123, 0)
narc.Size = UDim2.new(0.436588913, 0, 0.407361954, 0)

commlog.Name = "commlog"
commlog.Parent = narc
commlog.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
commlog.BackgroundTransparency = 2.020
commlog.Position = UDim2.new(0.016668966, 0, 0.0259549245, 0)
commlog.Size = UDim2.new(0.969949901, 0, 0.891566277, 0)
commlog.Font = Enum.Font.Code
commlog.TextColor3 = Color3.fromRGB(255, 149, 0)
commlog.TextSize = 14.000
commlog.TextWrapped = true
commlog.TextXAlignment = Enum.TextXAlignment.Left
commlog.TextYAlignment = Enum.TextYAlignment.Top

command.Name = "command"
command.Parent = narc
command.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
command.BackgroundTransparency = 1.000
command.Position = UDim2.new(0.0116861435, 0, 0.917521179, 0)
command.Size = UDim2.new(0.974958241, 0, 0.0602409653, 0)
command.Font = Enum.Font.SourceSans
command.PlaceholderColor3 = Color3.fromRGB(117, 68, 0)
command.PlaceholderText = "command here"
command.Text = ""
command.TextColor3 = Color3.fromRGB(255, 149, 0)
command.TextSize = 14.000
command.TextXAlignment = Enum.TextXAlignment.Left

notify.Name = "notify"
notify.Parent = narcu
notify.BackgroundColor3 = Color3.fromRGB(33, 23, 2)
notify.BorderColor3 = Color3.fromRGB(255, 149, 0)
notify.Position = UDim2.new(0.796647251, 0, 0.850306749, 0)
notify.Size = UDim2.new(0.196064144, 0, 0.138650313, 0)

titlenotify.Name = "title-notify"
titlenotify.Parent = notify
titlenotify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titlenotify.BackgroundTransparency = 1.000
titlenotify.BorderColor3 = Color3.fromRGB(255, 149, 0)
titlenotify.Position = UDim2.new(0.0223048329, 0, 0, 0)
titlenotify.Size = UDim2.new(0.977695167, 0, 0.168141589, 0)
titlenotify.Font = Enum.Font.SourceSans
titlenotify.Text = "title"
titlenotify.TextColor3 = Color3.fromRGB(255, 149, 0)
titlenotify.TextSize = 14.000
titlenotify.TextXAlignment = Enum.TextXAlignment.Left

notifyinsideframe.Name = "notify-insideframe"
notifyinsideframe.Parent = notify
notifyinsideframe.BackgroundColor3 = Color3.fromRGB(255, 149, 0)
notifyinsideframe.BackgroundTransparency = 0.950
notifyinsideframe.Position = UDim2.new(0.0223048329, 0, 0.168141589, 0)
notifyinsideframe.Size = UDim2.new(0.955390334, 0, 0.769911468, 0)

desc.Name = "desc"
desc.Parent = notifyinsideframe
desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
desc.BackgroundTransparency = 1.000
desc.Size = UDim2.new(1, 0, 1, 0)
desc.Font = Enum.Font.SourceSans
desc.Text = "Desc"
desc.TextColor3 = Color3.fromRGB(255, 255, 255)
desc.TextSize = 14.000
desc.TextWrapped = true
desc.TextXAlignment = Enum.TextXAlignment.Left
desc.TextYAlignment = Enum.TextYAlignment.Top

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = notifyinsideframe

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = notify

-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
notify.Visible = false
local s = Instance.new("Sound")

s.Name = "Sound"
s.SoundId = "http://www.roblox.com/asset/?id=3398620867"
s.Volume = 10
s.Looped = false
s.archivable = false
s.Parent = game.Workspace


function createNotify(title, desc2, duration)
	notify.Visible = true
	s:play()
	titlenotify.Text = title
	desc.Text = desc2
	wait(duration)
	notify.Visible = false

end

-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
narc.Visible = false
local openIf = false
local versionRenge = "1.0.1"
command.PlaceholderText = "Insert your command here."

commlog.Text = "narcu renge "..versionRenge..", \n\nThis is narcu our project that will be released! Want to see more info? Check it out here: https://sites.google.com/view/narcu/start"




game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.F4 then
		if openIf == false then
			openIf = true
			narc.Visible = true
		elseif openIf == true then
			openIf = false
			narc.Visible = false
		end
	end
end)

game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.Return then
		if openIf == true then
			if command.Text == "close" then
				narc.Visible = false
				createNotify("Function", "Function provoked on NARCU.main, NARCU closed but you didn't closed the process.", 8)
			elseif command.Text == "close-process" then
					narc.Visible = false
					createNotify("Function", "Function provoked on NARCU.main, NARCU closed the process. Thanks for all user!", 8)
					narcu:Destroy()
			elseif command.Text then
				commlog.Text = "Hmm... Looks like "..command.Text.." does not exists."
			end

		elseif openIf == false then
			print("apiNotOpen")
		end
	end
end)




createNotify("Welcome!", "NARCU has been loaded correctly. Press F4 to view the console.", 8)
