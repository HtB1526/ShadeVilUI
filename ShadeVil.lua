--[[
	[*]: ShadeVil UI Library, an fork of "Not anton" library that he using
	[*]: version: 1.01
	[*]: By HtB#1526
    **********************************************************************
	// Change Log:
	Added "IsActive" to Table and fixed readonly funcs
]]
local ShadeVilTable = {
	Log={},ShadeVilVersion="1.01",IsActive = false
}
local function _print(Name,str,INTERNAME)
	local iserr,isinf,iswar
	if INTERNAME:lower() == "err"then
		iserr=true
	elseif INTERNAME:lower()=="inf"then
		isinf=true
	elseif INTERNAME:lower()=="warn"then
		iswar=true
	end
	local t_t=os.date("*t")
	local sec,minute,h=tostring(t_t.sec),tostring(t_t.min),tostring(t_t.hour)
	if rconsoleprint and rconsoleerr and rconsoleinfo and rconsolewarn and rconsolename then
		rconsolename(Name.." - Console | ShadeVil "..ShadeVilTable.ShadeVilVersion.." | "..h..":"..minute..":"..sec.." / "..os.date("%A, %m %B %Y"))
		if iserr then 
			rconsoleerr(h..":"..minute..":"..sec.." // "..str)
		elseif isinf then 
			rconsoleinfo(h..":"..minute..":"..sec.." // "..str)
		elseif iswar then 
			rconsolewarn(h..":"..minute..":"..sec.." // "..str)
		else
			rconsoleprint(h..":"..minute..":"..sec.." // "..str.."\n")
		end
	else 
		print(h..":"..minute..":"..sec.." / "..os.date("%A, %m %B %Y").." | "..Name.." :: "..str)
	end
end
_print("ShadeVil UI","Checking reqs ...","null")
local IsLibSupported = true
if not writefile or not isfile then 
	_print("ShadeVil UI","Your executor cannot run lib, reason: missing isfile/writefile","null")
	IsLibSupported = false
end
local sro = setreadonly or makereadonly or make_readonly
if not sro then 
	_print("ShadeVil UI","Your executor cannot run lib, reason: missing readonly functions","null")
	IsLibSupported = false
end
if not IsLibSupported then return end
_print("ShadeVil UI","Your executor is can load Library!","null")
ShadeVilTable.IsActive=true
local function RandomString(l)
	local data = ""
	for i=0,l,1 do
		data = data..tostring(string.char(math.ceil(math.random() * 254)))
	end
	return data
end
function ShadeVilTable:CreateWindow(Tittle,AutoTheme)
	local CanLoadTheme
	if AutoTheme and type(AutoTheme)=="boolean"then CanLoadTheme=AutoTheme else CanLoadTheme=false end
	function ShadeVilTable.Log:Error(ErrName)
		_print(Tittle,"An Error occured!\n"..ErrName,"Err")
	end
	function ShadeVilTable.Log:Info(str)
		_print(Tittle,"Info: "..str,"Inf")
	end
	function ShadeVilTable.Log:Warn(str)
		_print(Tittle,"Warning: "..str,"warn")
	end
	local Ayyyyyyyyyyyyyy = Instance.new("ScreenGui",game:GetService("CoreGui"))
	local Main = Instance.new("Frame",Ayyyyyyyyyyyyyy)
	local TopBar = Instance.new("Frame",Main)
	local TextLabel = Instance.new("TextLabel",TopBar)
	local UICorner = Instance.new("UICorner",TopBar)
	local UICorner_2 = Instance.new("UICorner",Main)
	local UIListLayout = Instance.new("UIListLayout")
	local uis = game:GetService("UserInputService")
	local Exit = Instance.new("TextButton")
	local Tabs = Instance.new("Frame",Main)
	local UICorner4 = Instance.new("UICorner",Tabs)
	local Buttonsa = Instance.new("Frame",Tabs)
	local Shadow = Instance.new("ImageLabel")	
	local UIListLayouta = Instance.new("UIListLayout",Buttonsa)
	local UICorner_2 = Instance.new("UICorner")
	local NotificationsList = Instance.new("Frame",Ayyyyyyyyyyyyyy)
	local UIListLayout420 = Instance.new("UIListLayout",NotificationsList)
	local Pages = Instance.new("Frame",Main)
	local ae = true
	local Mouse = game.Players.LocalPlayer:GetMouse()
	local e = {}
	local dragging = false;
	local dragging
	local dragInput
	local dragStart
	local startPos
	Ayyyyyyyyyyyyyy.Name = RandomString(math.random(5,20)).."ShadeVil[\""..Tittle.."\"]"..RandomString(math.random(15,math.random(50,200)))
	Ayyyyyyyyyyyyyy.ZIndexBehavior = Enum.ZIndexBehavior.Global
	Ayyyyyyyyyyyyyy.AutoLocalize = false
	Main.Name = RandomString(math.random(2,4)).."M"..RandomString(math.random(2,4)).."a"..RandomString(math.random(2,4)).."i"..RandomString(math.random(2,4)).."n"..RandomString(math.random(2,4))
	Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.193620175, 0, 0.301840484, 0)
	Main.Size = UDim2.new(0, 594, 0, 305)
	Tabs.Name = RandomString(math.random(2,4)).."T"..RandomString(math.random(2,4)).."a"..RandomString(math.random(2,4)).."b"..RandomString(math.random(2,4)).."s"..RandomString(math.random(2,4))
	Tabs.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Tabs.Position = UDim2.new(0, 0, 0.114754096, 0)
	Tabs.Size = UDim2.new(0, 100, 0, 269)
	UICorner4.CornerRadius = UDim.new(0, 4)
	Buttonsa.Name = RandomString(math.random(2,4)).."B"..RandomString(math.random(2,4)).."u"..RandomString(math.random(2,4)).."t"..RandomString(math.random(2,4)).."t"..RandomString(math.random(2,4)).."o"..RandomString(math.random(2,4)).."n"..RandomString(math.random(2,4)).."s"..RandomString(math.random(2,4))
	Buttonsa.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Buttonsa.BackgroundTransparency = 1.000
	Buttonsa.Position = UDim2.new(0, 0, 0, 4)
	Buttonsa.Size = UDim2.new(1, 0, 1, -4)
	UIListLayouta.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayouta.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayouta.Padding = UDim.new(0, 4)

	function e:Theme(Color, Type)
		Type=Type:lower()
		if Type == "topbar" then
			TopBar.BackgroundColor3 = Color
		elseif Type == "tabs" then
			Tabs.BackgroundColor3 = Color
		elseif Type == "background" then
			Main.BackgroundColor3 = Color
		elseif Type == "shadow" then
			Shadow.ImageColor3 = Color
		elseif Type == "reset" then
			for _, Object in pairs(Ayyyyyyyyyyyyyy:GetDescendants()) do
				if Object:IsA"TextButton"or Object:IsA"TextLabel"then
					Object.TextColor3 = Color3.fromRGB(255,255,255)
				end
			end
			Main.BackgroundColor3 = Color3.fromRGB(25,25,25)
			Tabs.BackgroundColor3 = Color3.fromRGB(30,30,30)
			TopBar.BackgroundColor3 = Color3.fromRGB(35,35,35)
			Shadow.ImageColor3 = Color3.fromRGB(0,0,0)
		elseif Type == "text" then
			for Index, Object in pairs(Ayyyyyyyyyyyyyy:GetDescendants()) do
				if Object:IsA"TextButton"or Object:IsA"TextLabel"then
					Object.TextColor3 = Color
				end
			end
		elseif Type == "save" then
			local ToWrite = {};
			local sets = {
				TopBarColor = string.split(tostring(TopBar.BackgroundColor3),", "),
				TabsColor = string.split(tostring(Tabs.BackgroundColor3),", "),
				BackGroundColor = string.split(tostring(Main.BackgroundColor3),", "),
				TextColor = "",
				ShadowColor = string.split(tostring(Shadow.ImageColor3),", ")
			}
			for _, v in pairs(Ayyyyyyyyyyyyyy:GetDescendants()) do
                if v:IsA"TextButton"or v:IsA"TextLabel"then
                    sets.TextColor = string.split(tostring(v.TextColor3),", ")
                end
            end
			for i, v in pairs(sets) do
				ToWrite[i] = v;
			end
			ToWrite.TopBarColor = { R = sets.TopBarColor[1]; G = sets.TopBarColor[2]; B = sets.TopBarColor[3] }
			ToWrite.TabsColor = { R =sets.TabsColor[1]; G = sets.TabsColor[2]; B = sets.TabsColor[3] }
			ToWrite.BackGroundColor={R=sets.BackGroundColor[1],G=sets.BackGroundColor[2],B=sets.BackGroundColor[3]}
			ToWrite.TextColor={R=sets.TextColor[1],G=sets.TextColor[2],B=sets.TextColor[3]}
			ToWrite.ShadowColor={R=sets.ShadowColor[1],G=sets.ShadowColor[2],B=sets.ShadowColor[3]}
			writefile("ShadeVil UI settings.json",  game:GetService("HttpService"):JSONEncode(ToWrite)) --// yeah from Unnamed ESP because "Not anton" is shit-coder
		elseif Type == "load" then
			if not isfile"ShadeVil UI settings.json"then
				ShadeVilTable.Log:Info("First time use? 'Check ShadeVil UI settings.json' in your exploit workspace folder")
				writefile("ShadeVil UI settings.json",game:GetService("HttpService"):JSONEncode({Message="No settings"}))
			end
			local j = game:GetService("HttpService"):JSONDecode(readfile("ShadeVil UI settings.json"))
			if not j.Message then
				for _, Object in pairs(Ayyyyyyyyyyyyyy:GetDescendants()) do
					if Object:IsA"TextButton"or Object:IsA"TextLabel"then
						Object.TextColor3 = Color3.new(j.TextColor.R,j.TextColor.G,j.TextColor.B)
					end
				end
				Main.BackgroundColor3 = Color3.new(j.BackGroundColor.R,j.BackGroundColor.G,j.BackGroundColor.G)
				Tabs.BackgroundColor3 = Color3.new(j.TabsColor.R,j.TabsColor.G,j.TabsColor.B)
				TopBar.BackgroundColor3 = Color3.new(j.TopBarColor.R,j.TopBarColor.G,j.TopBarColor.B)
				Shadow.ImageColor3 = Color3.new(j.ShadowColor.R,j.ShadowColor.G,j.ShadowColor.B)
			end
		end
	end
	if CanLoadTheme then e:Theme("","load")end
	function e:Destroy()
		ae = false 
		e:Theme("","save")
		ShadeVilTable.IsActive=false
		Ayyyyyyyyyyyyyy:Destroy()
	end
	local function CreateCircle(Object)
		local Ripple = Instance.new("Frame",Object)
		local UICorner = Instance.new("UICorner",Ripple)
		local Objects = {
			Rip = Ripple,
			UiCorn = UICorner
		}
		Ripple.Name = "Ripple"
		Ripple.ZIndex = Object.ZIndex + 1
		Ripple.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
		Ripple.BackgroundTransparency = 0.550
		Ripple.Position = UDim2.new(0, 0, 0, 0)
		UICorner.CornerRadius = UDim.new(1, 0)
		return Objects
	end

	local function Ripple(Object)
		coroutine.wrap(function()
			local buttonAbsolutePosition = Object.AbsolutePosition
			local mouseAbsolutePosition = Vector2.new(Mouse.X, Mouse.Y)
			local mouseRelativePosition = (mouseAbsolutePosition - buttonAbsolutePosition)
			local Circle = CreateCircle(Object)
			Circle.Rip.BackgroundTransparency = 0.84
			Circle.Rip.Position = UDim2.new(0, mouseRelativePosition.X, 0, mouseRelativePosition.Y)
			Circle.Rip:TweenSize(UDim2.new(1, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.50, true)
			Circle.Rip:TweenPosition(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.50, true)
			game:GetService("TweenService"):Create(Circle.UiCorn, TweenInfo.new(0.50, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {CornerRadius = UDim.new(0, 4)}):Play()
			wait(0.50)
			Circle.Rip:Destroy()
		end)
	end			
	
	function e:Notify(Text2, Tittle2, Function)
		local Notifications = Instance.new("Frame",NotificationsList)
		local Topbar = Instance.new("Frame",Notifications)
		local UICorner = Instance.new("UICorner",Topbar)
		local Tittle = Instance.new("TextLabel",Topbar)
		local Exit = Instance.new("TextButton",Topbar)
		local UICorner_2 = Instance.new("UICorner",Notifications)
		local Line = Instance.new("Frame",Notifications)
		local UIGradient = Instance.new("UIGradient",Line)
		local Text = Instance.new("TextLabel",Notifications)
		local Yes = Instance.new("TextButton",Notifications)
		local UICorner_3 = Instance.new("UICorner",Yes)

		Notifications.Name = "Notifications"
		Notifications.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Notifications.Position = UDim2.new(0.488661289, 0, 0.647852778, 0)
		Notifications.Size = UDim2.new(0, 300, 0, 130)
		Notifications.ZIndex = 999999996

		Topbar.Name = "Topbar"
		Topbar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Topbar.Size = UDim2.new(1, 0, 0, 25)
		Topbar.ZIndex = 999999997

		UICorner.CornerRadius = UDim.new(0, 4)
		Tittle.Name = "Tittle"
		Tittle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tittle.BackgroundTransparency = 1.000
		Tittle.Position = UDim2.new(0, 4, 0, 0)
		Tittle.Size = UDim2.new(0, 272, 0, 25)
		Tittle.ZIndex = 999999998
		Tittle.Font = Enum.Font.Gotham
		Tittle.Text = Tittle2
		Tittle.TextColor3 = Color3.fromRGB(255, 255, 255)
		Tittle.TextSize = 14.000
		Tittle.TextWrapped = true
		Tittle.TextXAlignment = Enum.TextXAlignment.Left

		Exit.Name = "Exit"
		Exit.AnchorPoint = Vector2.new(1, 0.5)
		Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exit.BackgroundTransparency = 1.000
		Exit.Position = UDim2.new(1, 1, 0.5, 0)
		Exit.Size = UDim2.new(0, 25, 1, 0)
		Exit.ZIndex = 999999999
		Exit.Font = Enum.Font.Gotham
		Exit.Text = "X"
		Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
		Exit.TextSize = 14.000
		
		Exit.Activated:Connect(function()
			Notifications:Destroy()
		end)
		
		UICorner_2.CornerRadius = UDim.new(0, 4)

		Line.Name = "Line"
		Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Line.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Line.BorderSizePixel = 0
		Line.Position = UDim2.new(0, 0, 0, 26)
		Line.Size = UDim2.new(1, 0, 0, 2)
		Line.ZIndex = 999999997

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30, 30, 30))}

		Text.Name = "Text"
		Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Text.BackgroundTransparency = 1.000
		Text.ClipsDescendants = true
		Text.Position = UDim2.new(0, 4, 0, 30)
		Text.Size = UDim2.new(1, -4, 1, -30)
		Text.ZIndex = 999999998
		Text.Font = Enum.Font.Gotham
		Text.Text = Text2
		Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text.TextSize = 14.000
		Text.TextWrapped = true
		Text.TextXAlignment = Enum.TextXAlignment.Left
		Text.TextYAlignment = Enum.TextYAlignment.Top
		if Function then
			Yes.Visible = true
			Function = Function or function() end
		end
		Yes.Name = "Yes"
		Yes.AnchorPoint = Vector2.new(1, 1)
		Yes.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Yes.Position = UDim2.new(1, -4, 1, -4)
		Yes.Size = UDim2.new(0, 25, 0, 25)
		Yes.Visible = false
		Yes.ZIndex = 999999999
		Yes.AutoButtonColor = false
		Yes.Font = Enum.Font.Gotham
		Yes.Text = "Yes"
		Yes.TextColor3 = Color3.fromRGB(255, 255, 255)
		Yes.TextSize = 14.000

		UICorner_3.CornerRadius = UDim.new(0, 4)

		Yes.Activated:Connect(function()
			Ripple()
			Function()
			Notifications:Destroy()
		end)
	end
	
	local function update(input)
		local delta = input.Position - dragStart
		Main:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), "Out", "Sine", 0.05, true)
	end
	TopBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Main.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	TopBar.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	uis.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	NotificationsList.Name = "NotificationsList"
	NotificationsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationsList.BackgroundTransparency = 1.000
	NotificationsList.Position = UDim2.new(0, 4, 0, -4)
	NotificationsList.Size = UDim2.new(300, 0, 1, 0)

	UIListLayout420.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout420.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout420.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout420.Padding = UDim.new(0, 4)
	
	TopBar.Name = RandomString(math.random(2,4)).."T"..RandomString(math.random(2,4)).."o"..RandomString(math.random(2,4)).."p"..RandomString(math.random(2,4)).."B"..RandomString(math.random(2,4)).."a"..RandomString(math.random(2,4)).."r"..RandomString(math.random(2,4))
	TopBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TopBar.BorderSizePixel = 0
	TopBar.Size = UDim2.new(1, 0, 0, 35)

	Exit.Name = "Exit"
	Exit.Parent = TopBar
	Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Exit.BackgroundTransparency = 1.000
	Exit.Position = UDim2.new(0.941, 0,0, 0)
	Exit.Size = UDim2.new(0, 35, 1, 0)
	Exit.Font = Enum.Font.Gotham
	Exit.Text = "X"
	Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
	Exit.TextSize = 14.000

	Exit.Activated:Connect(function()
		wait(0.1)
		e:Destroy()
	end)

	Shadow.Name = "Shadow"
	Shadow.Parent = Main
	Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow.BackgroundTransparency = 1.000
	Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow.Size = UDim2.new(1, 18, 1, 18)
	Shadow.ZIndex = 0
	Shadow.Image = "rbxassetid://1316045217"
	Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Shadow.ImageTransparency = 0.880
	Shadow.ScaleType = Enum.ScaleType.Slice
	Shadow.SliceCenter = Rect.new(10, 10, 118, 118)

	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0, 4, 0, 0)
	TextLabel.Size = UDim2.new(1, -4, 1, 0)
	TextLabel.Font = Enum.Font.Gotham
	TextLabel.Text = Tittle
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	UICorner.CornerRadius = UDim.new(0, 4)

	UICorner_2.CornerRadius = UDim.new(0, 4)

	Pages.Name = RandomString(math.random(2,4)).."P"..RandomString(math.random(2,4)).."a"..RandomString(math.random(2,4)).."g"..RandomString(math.random(2,4)).."e"..RandomString(math.random(2,4)).."s"..RandomString(math.random(2,4))
	Pages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pages.BackgroundTransparency = 1.000
	Pages.Position = UDim2.new(0, 100, 0.115000002, 4)
	Pages.Size = UDim2.new(0, 494, 0, 266)
	Pages.ClipsDescendants = true

	function e:CreatePage(Name)
		local Page = Instance.new("Frame")
		local ae = {}
		local Buttons = Instance.new("ScrollingFrame")
		local ChangePage = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local UIListLayout3 = Instance.new("UIListLayout")

		ChangePage.Name = Name
		ChangePage.Parent = Buttonsa
		ChangePage.Text = Name
		ChangePage.TextTransparency = 0.5
		ChangePage.TextWrapped = true
		ChangePage.AutoButtonColor = false
		ChangePage.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		ChangePage.Size = UDim2.new(0, 95, 0, 35)
		ChangePage.Font = Enum.Font.Gotham
		ChangePage.TextColor3 = Color3.fromRGB(255, 255, 255)
		ChangePage.TextSize = 14.000

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = ChangePage

		Page.Name = Name
		Page.Parent = Pages
		Page.Position = UDim2.new(1,0,0,0)
		Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Page.BackgroundTransparency = 1.000
		Page.Size = UDim2.new(1, 0, 1, 0)

		Buttons.Name = "Buttons"
		Buttons.Parent = Page
		Buttons.Active = true
		Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Buttons.BackgroundTransparency = 1.000
		Buttons.Position = UDim2.new(0,0,0,0)
		Buttons.Size = UDim2.new(0, 494, 0, 266)
		Buttons.CanvasSize = UDim2.new(0, 0, 1, 0)
		Buttons.ScrollBarThickness = 0

		UIListLayout3.Parent = Buttons
		UIListLayout3.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout3.Padding = UDim.new(0, 4)

		ChangePage.MouseEnter:Connect(function()
			game:GetService("TweenService"):Create(ChangePage, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(55, 55, 55)}):Play()
		end)
		ChangePage.MouseLeave:Connect(function()
			game:GetService("TweenService"):Create(ChangePage, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
		end)

		Buttons.ChildAdded:Connect(function()
			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end)

		function ae:SliderOld(Parent, Tittle, max, min, Function)
			local Inner = Instance.new("TextButton")
			local mouse = game.Players.LocalPlayer:GetMouse()
			local UICorner = Instance.new("UICorner")
			local Outer = Instance.new("Frame")
			local down = false
			local UICorner_2 = Instance.new("UICorner")

			Inner.Name = "Inner"
			Inner.Parent = Parent
			Inner.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
			Inner.BackgroundTransparency = 1.000
			Inner.Position = UDim2.new(0.00816326495, 0, 0.75999999, 0)
			Inner.Size = UDim2.new(1, -4, 0, 30)
			Inner.ZIndex = 2
			Inner.AutoButtonColor = false
			Inner.Font = Enum.Font.Gotham
			Inner.Text = Tittle .. ": 0"
			Inner.TextColor3 = Color3.fromRGB(255, 255, 255)
			Inner.TextSize = 14.000

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Inner

			Outer.Name = "Outer"
			Outer.Parent = Inner
			Outer.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
			Outer.BackgroundTransparency = 0.660
			Outer.ClipsDescendants = true
			Outer.Size = UDim2.new(0, 0, 1, 0)

			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = Outer
			Inner.MouseButton1Down:Connect(function()
				local pos = UDim2.new(math.clamp((mouse.X - Inner.AbsolutePosition.X) / Inner.AbsoluteSize.X, 0, 1), -6, 0.5, -5)
				local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
				local ap = Vector2.new(Inner.AbsolutePosition.X, Inner.AbsolutePosition.Y)
				Outer:TweenSize(UDim2.new(0, (mouse.X - ap.X), 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
				Function(tostring(value))
				Inner.Text = Tittle .. ": " .. tostring(value)
				down = true
			end)

			mouse.Move:Connect(function()
				if down then
					local ap = Vector2.new(Inner.AbsolutePosition.X, Inner.AbsolutePosition.Y)
					local as = Vector2.new(Inner.AbsoluteSize.X, Inner.AbsoluteSize.Y)
					local maxSize = as.X
					local size = Outer.Size.X.Offset
					local num = max * (size / maxSize)
					local pos = UDim2.new(math.clamp((mouse.X - Inner.AbsolutePosition.X) / Inner.AbsoluteSize.X, 0, 1), -6, 0.5, -5)
					local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
					if mouse.X < ap.X then 
						Outer:TweenSize(UDim2.new(0, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
					elseif mouse.X > (ap.X + as.X) then 
						Outer:TweenSize(UDim2.new(0, as.X, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
					else
						Outer:TweenSize(UDim2.new(0, (mouse.X - ap.X), 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
					end
					Inner.Text = Tittle .. ": " .. tostring(value)
					Function(tostring(value))
				end
			end)

			uis.InputEnded:Connect(function(input, gp)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					down = false
				end
			end)
			
			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end

		function ae:NewColorPicker(ColorThing, Tittlea, Function)
			local Color = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Tittle = Instance.new("TextLabel")
			local Preview = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local ThatOneThing = Instance.new("Frame")
			local Sliders = Instance.new("ScrollingFrame")
			local Button = Instance.new("TextButton")
			local UICorner2 = Instance.new("UICorner")
			local UIListLayout = Instance.new("UIListLayout")
			local ColorTracker = Instance.new("Color3Value")
			local On = false
			local ColorThing = ColorThing or Color3.fromRGB(255,255,255)
			local ColourDictionary = {
				white = Color3.fromRGB(255,255,255),
				black = Color3.fromRGB(0,0,0),
				red = Color3.fromRGB(255,0,0),
				green = Color3.fromRGB(0,255,0),
				blue = Color3.fromRGB(0,0,255)
			}

			if type(ColorThing) == "table" then
				ColorThing = Color3.fromRGB(ColorThing[1] or 255, ColorThing[2] or 255, ColorThing[3] or 255)
			elseif type(ColorThing) == "string" then
				ColorThing = ColourDictionary[ColorThing:lower()] or ColourDictionary["white"]
			end

			ColorTracker.Value = ColorThing
			ColorTracker.Parent = Color

			Color.Name = "Color"
			Color.Parent = Buttons
			Color.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Color.ClipsDescendants = true
			Color.Position = UDim2.new(-0.0101214573, 0, -0.0150375944, 0)
			Color.Size = UDim2.new(1, -4, 0, 35)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Color

			Tittle.Name = "Tittle"
			Tittle.Parent = Color
			Tittle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Tittle.BackgroundTransparency = 1.000
			Tittle.Position = UDim2.new(0, 4, 0, 0)
			Tittle.Size = UDim2.new(0, 200, 0, 35)
			Tittle.Font = Enum.Font.Gotham
			Tittle.Text = Tittlea
			Tittle.TextColor3 = Color3.fromRGB(255, 255, 255)
			Tittle.TextSize = 14.000
			Tittle.TextXAlignment = Enum.TextXAlignment.Left

			Preview.Name = "Preview"
			Preview.Parent = Color
			Preview.Text = ""
			Preview.BackgroundColor3 = ColorTracker.Value
			Preview.Position = UDim2.new(1, -25, 0, 0)
			Preview.Size = UDim2.new(0, 25, 1, 0)
			Preview.AutoButtonColor = false

			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = Preview

			ThatOneThing.Name = "ThatOneThing"
			ThatOneThing.Parent = Preview
			ThatOneThing.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			ThatOneThing.BorderSizePixel = 0
			ThatOneThing.Size = UDim2.new(0, 10, 1, 0)

			Sliders.Name = "Sliders"
			Sliders.Parent = Color
			Sliders.Active = true
			Sliders.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sliders.BackgroundTransparency = 1.000
			Sliders.BorderSizePixel = 0
			Sliders.Position = UDim2.new(0, 0, 0, 35)
			Sliders.Size = UDim2.new(0, 475, 0, 100)
			Sliders.CanvasSize = UDim2.new(0,0,0, 137)
			Sliders.ScrollBarThickness = 0

			UIListLayout.Parent = Sliders
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 4)

			ae:SliderOld(Color.Sliders, "Red", 255,0, function(Val)
				ColorTracker.Value = Color3.fromRGB(Val, ColorTracker.Value.G * 255, ColorTracker.Value.B * 255)
				game:GetService("TweenService"):Create(Preview, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = ColorTracker.Value}):Play()
				Function(ColorTracker.Value)
			end)

			ae:SliderOld(Color.Sliders, "Green", 255,0, function(Val)
				ColorTracker.Value = Color3.fromRGB(ColorTracker.Value.R * 255, Val, ColorTracker.Value.B * 255)
				game:GetService("TweenService"):Create(Preview, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = ColorTracker.Value}):Play()
				Function(ColorTracker.Value)
			end)

			ae:SliderOld(Color.Sliders, "Blue", 255,0, function(Val)
				ColorTracker.Value = Color3.fromRGB(ColorTracker.Value.R * 255, ColorTracker.Value.G * 255, Val)
				game:GetService("TweenService"):Create(Preview, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = ColorTracker.Value}):Play()
				Function(ColorTracker.Value)
			end)

			Button.Name = "Button"
			Button.Parent = Sliders
			Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			Button.Position = UDim2.new(0.297570854, 0, 0, 0)
			Button.Size = UDim2.new(1, -4, 0, 35)
			Button.Text = "Reset"
			Button.AutoButtonColor = false
			Button.Font = Enum.Font.Gotham
			Button.TextColor3 = Color3.fromRGB(255, 255, 255)
			Button.TextSize = 14.000

			UICorner2.CornerRadius = UDim.new(0, 4)
			UICorner2.Parent = Button

			Preview.Activated:Connect(function()
				On = not On
				Color:TweenSize(On and UDim2.new(1,-4,0,135) or UDim2.new(1,-4,0,35), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 1, true)
				game:GetService("TweenService"):Create(Buttons, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {CanvasSize = On and UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 4 + UIListLayout3.AbsoluteContentSize.Y + 4) or UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)}):Play()
			end)

			Button.Activated:Connect(function()
				ColorTracker.Value = ColorThing
				game:GetService("TweenService"):Create(Preview, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = ColorTracker.Value}):Play()
				Function(ColorTracker.Value)
			end)
			
			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end

		function ae:NewButton(Tittle, Function)
			if type(Tittle)~="string"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #1 In Function [WINDOW_CREATED_BY_UI]:NewButton()\nString expected, got "..type(Tittle))
				return
			end
			if type(Function)~="function"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #2 In Function [WINDOW_CREATED_BY_UI]:NewButton()\nFunction expected, got "..type(Function))
				return
			end
			local Button2 = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")

			Button2.Name = "Button"
			Button2.Parent = Buttons
			Button2.Text = Tittle
			Button2.AutoButtonColor = false
			Button2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Button2.Position = UDim2.new(0.297570854, 0, 0, 0)
			Button2.Size = UDim2.new(1, -4, 0, 35)
			Button2.Font = Enum.Font.Gotham
			Button2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Button2.TextSize = 14.000

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Button2

			Button2.Activated:Connect(function()
				Ripple(Button2)
				Function()
			end)

			Button2.MouseEnter:Connect(function()
				game:GetService("TweenService"):Create(Button2, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(50,50,50)}):Play()
			end)
			Button2.MouseLeave:Connect(function()
				game:GetService("TweenService"):Create(Button2, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
			end)
			
			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end

		function ae:NewToggle(Tittle, Function)
			if type(Tittle)~="string"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #1 In Function [WINDOW_CREATED_BY_UI]:NewToggle()\nString expected, got "..type(Tittle))
				return
			end
			if type(Function)~="function"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #2 In Function [WINDOW_CREATED_BY_UI]:NewToggle()\nFunction expected, got "..type(Function))
				return
			end
			local Toggle = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")
			local Button = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local On = false
			Toggle.Name = "Toggle"
			Toggle.Parent = Buttons
			Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Toggle.Size = UDim2.new(1, -4, 0, 35)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Toggle

			TextLabel.Parent = Toggle
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0, 4, 0, 0)
			TextLabel.Size = UDim2.new(1, -4, 1, 0)
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.Text = Tittle

			Button.Name = "Button"
			Button.Parent = Toggle
			Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			Button.Position = UDim2.new(0.949000001, -4, 0.143000007, 0)
			Button.Size = UDim2.new(0, 25, 0, 25)
			Button.Font = Enum.Font.Gotham
			Button.AutoButtonColor = false
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(255, 255, 255)
			Button.TextSize = 14.000


			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = Button

			Button.Activated:Connect(function()
				On = not On
				if On then
					coroutine.wrap(function()Function(On)end)()
					coroutine.wrap(function()
						game:GetService("TweenService"):Create(Button, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(241, 241, 241)}):Play()
						Button.Text = ""
					end)()
				else
					coroutine.wrap(function()Function(On)end)()
					coroutine.wrap(function()
						game:GetService("TweenService"):Create(Button, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
						Button.Text = ""
					end)()
				end
			end)

			Button.MouseEnter:Connect(function()
				if On then
					game:GetService("TweenService"):Create(Button, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
				else
					game:GetService("TweenService"):Create(Button, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
				end
			end)
			Button.MouseLeave:Connect(function()
				if On then
					game:GetService("TweenService"):Create(Button, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(241,241,241)}):Play()
				else
					game:GetService("TweenService"):Create(Button, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
				end
			end)
			
			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end

		function ae:NewText(Tittle, PlaceHolderText, Function)
			local Text = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")
			local TextBox = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")
			local Focus = false

			Text.Name = "Text"
			Text.Parent = Buttons
			Text.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Text.Size = UDim2.new(1, -4, 0, 35)

			Text.MouseEnter:Connect(function()
				if not Focus then
					TextBox:TweenSize(UDim2.new(0, 250, 0, 25), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
					TextBox:TweenPosition(UDim2.new(0.573, -45,0.114, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
				end
			end)

			Text.MouseLeave:Connect(function()
				if not Focus then
					TextBox:TweenSize(UDim2.new(0, 45, 0, 25), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
					TextBox:TweenPosition(UDim2.new(0.992, -45, 0.114, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
				end
			end)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Text

			TextLabel.Parent = Text
			TextLabel.Text = Tittle
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0, 0, 0, 0)
			TextLabel.Size = UDim2.new(1, -4, 1, 0)
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			TextBox.Parent = Text
			TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			TextBox.ClipsDescendants = true
			TextBox.Position = UDim2.new(0.991857171, -45, 0.11442858, 0)
			TextBox.Size = UDim2.new(0, 45, 0, 25)
			TextBox.Font = Enum.Font.Gotham
			TextBox.PlaceholderText = PlaceHolderText
			TextBox.Text = ""
			TextBox.TextXAlignment = Enum.TextXAlignment.Center
			TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.TextSize = 14.000
			TextBox.TextWrapped = true
			TextBox.ClearTextOnFocus = false

			TextBox.FocusLost:Connect(function()
				Focus = false
				TextBox:TweenSize(UDim2.new(0, 45, 0, 25), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
				TextBox:TweenPosition(UDim2.new(0.992, -45, 0.114, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
				Function(TextBox.Text)	
			end)

			TextBox.Focused:Connect(function()
				Focus = true
				TextBox:TweenSize(UDim2.new(0, 250, 0, 25), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
				TextBox:TweenPosition(UDim2.new(0.573, -45,0.114, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
			end)

			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = TextBox
			
			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end
		
		function ae:NewDropDown(ItemsInTable, Tittle, Function)
			if type(ItemsInTable)~="table"then
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #1 In Function [WINDOW_CREATED_BY_UI]:NewDropDown()\nTable expected, got "..type(ItemsInTable))
				return
			end
			if type(Tittle)~="string"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #2 In Function [WINDOW_CREATED_BY_UI]:NewDropDown()\nString expected, got "..type(Tittle))
				return
			end
			if type(Function)~="function"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #3 In Function [WINDOW_CREATED_BY_UI]:NewDropDown()\nFunction expected, got "..type(Function))
				return
			end
			local DropDown = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local OpenAndClose = Instance.new("TextButton")
			local Options = Instance.new("Frame")
			local UIListLayout57 = Instance.new("UIListLayout")
			local On = false

			DropDown.Name = "DropDown"
			DropDown.Parent = Buttons
			DropDown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			DropDown.ClipsDescendants = true
			DropDown.Selectable = true
			DropDown.Size = UDim2.new(1, -4, 0, 35)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = DropDown

			OpenAndClose.Parent = DropDown
			OpenAndClose.AnchorPoint = Vector2.new(0.5, 0)
			OpenAndClose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			OpenAndClose.BackgroundTransparency = 1.000
			OpenAndClose.Position = UDim2.new(0.5, 0, 0, 0)
			OpenAndClose.Size = UDim2.new(1, 0, 0, 35)
			OpenAndClose.Font = Enum.Font.Gotham
			OpenAndClose.Text = Tittle
			OpenAndClose.TextColor3 = Color3.fromRGB(255, 255, 255)
			OpenAndClose.TextSize = 14.000

			Options.Name = "Options"
			Options.Parent = DropDown
			Options.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Options.BackgroundTransparency = 1.000
			Options.Position = UDim2.new(0, 0, 0, 35)
			Options.Size = UDim2.new(1, 0, 0, 35)

			UIListLayout57.Parent = Options
			UIListLayout57.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout57.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout57.Padding = UDim.new(0, 4)

			for Index, Optionsa in pairs(ItemsInTable) do
				local Button = Instance.new("TextButton")
				local UICorner = Instance.new("UICorner")

				Button.Name = "Button"
				Button.Parent = Options
				Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
				Button.Position = UDim2.new(0.297570854, 0, 0, 0)
				Button.Size = UDim2.new(1, -4, 0, 35)
				Button.AutoButtonColor = false
				Button.Text = Optionsa
				Button.Font = Enum.Font.Gotham
				Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				Button.TextSize = 14.000

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Parent = Button
				
				Button.MouseEnter:Connect(function()
					game:GetService("TweenService"):Create(Button, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(50,50,50)}):Play()
				end)
				Button.MouseLeave:Connect(function()
					game:GetService("TweenService"):Create(Button, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
				end)
				
				Button.Activated:Connect(function()
					coroutine.wrap(function()
						Ripple(Button)
						Function(Optionsa)
					end)()
				end)
			end

			OpenAndClose.Activated:Connect(function()
				On = not On
				if On then
					DropDown:TweenSize(UDim2.new(1, -4, 0 , 35 + UIListLayout57.AbsoluteContentSize.Y + 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 1, true)
					Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4 + UIListLayout57.AbsoluteContentSize.Y + 4)
				else
					DropDown:TweenSize(UDim2.new(1, -4, 0 , 35), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 1, true)
					Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
				end
			end)

			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end
		
		function ae:NewKeyBind(Tittle, Selected, Function)
			if type(Tittle)~="string"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #1 In Function [WINDOW_CREATED_BY_UI]:NewKeyBind()\nString expected, got "..type(Tittle))
				return
			end
			if type(Selected)~="userdata"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #2 In Function [WINDOW_CREATED_BY_UI]:NewKeyBind()\nEnum.KeyCode expected, got "..type(Selected))
				return
			end
			if type(Function)~="function"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #3 In Function [WINDOW_CREATED_BY_UI]:NewKeyBind()\nFunction expected, got "..type(Function))
				return
			end
			local Keybind = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")
			local TextButton = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local UIS = game:GetService("UserInputService")
			local On = false
			Selected = Selected or Enum.KeyCode.Four

			Keybind.Name = "Keybind"
			Keybind.Parent = Buttons
			Keybind.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Keybind.Size = UDim2.new(1, -4, 0, 35)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Keybind

			TextLabel.Parent = Keybind
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0, 4, 0, 0)
			TextLabel.Size = UDim2.new(1, -4, 1, 0)
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.Text = Tittle
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			TextButton.Parent = Keybind
			TextButton.AnchorPoint = Vector2.new(1, 0.5)
			TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			TextButton.Position = UDim2.new(1, -4, 0.5, 0)
			TextButton.Size = UDim2.new(0, 250, 0, 25)
			TextButton.AutoButtonColor = false
			TextButton.Font = Enum.Font.Gotham
			TextButton.Text = Selected.Name
			TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.TextSize = 14.000

			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = TextButton

			TextButton.Activated:Connect(function()
				On = true
				if On then
					TextButton.Text = "..."
				end
			end)

			UIS.InputBegan:connect(function(e, a)			
				if On and not a then
					TextButton.Text = e.KeyCode.Name
					coroutine.wrap(function()Function(e.KeyCode)end)()
					On = false 
				end
			end)
			
			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end
		
		function ae:NewTextFrame(Tittle)
			if type(Tittle)~="string"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #1 In Function [WINDOW_CREATED_BY_UI]:NewTextFrame()\nString expected, got "..type(Tittle))
				return
			end
			local TextFrame = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")

			TextFrame.Name = "TextFrame"
			TextFrame.Parent = Buttons
			TextFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			TextFrame.Size = UDim2.new(1, -4, 0, 35)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = TextFrame

			TextLabel.Parent = TextFrame
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0, 4, 0, 0)
			TextLabel.Size = UDim2.new(1, -4, 1, 0)
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.Text = Tittle
			
			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end

		function ae:OldDropDown(ButtonsTable, Tittle, Function)
			local DropDown = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")
			local more_vert = Instance.new("ImageButton")

			DropDown.Name = "DropDown"
			DropDown.Parent = Buttons
			DropDown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			DropDown.Size = UDim2.new(1, -4, 0, 35)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = DropDown

			TextLabel.Parent = DropDown
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0, 4, 0, 0)
			TextLabel.Size = UDim2.new(1, 0, 1, 0)
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.Text = Tittle
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			more_vert.Name = "Icon"
			more_vert.Parent = DropDown
			more_vert.BackgroundTransparency = 1.000
			more_vert.LayoutOrder = 1
			more_vert.Position = UDim2.new(0.949000001, -4, 0.143000007, 0)
			more_vert.Size = UDim2.new(0, 25, 0, 25)
			more_vert.ZIndex = 2
			more_vert.Image = "rbxassetid://3926305904"
			more_vert.ImageRectOffset = Vector2.new(764, 764)
			more_vert.ImageRectSize = Vector2.new(36, 36)

			more_vert.Activated:Connect(function()
				if DropDown:FindFirstChild("DropDownMenu") then
					return
				else
					local DropDownMenu = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local UIListLayout = Instance.new("UIListLayout")

					DropDownMenu.Name = "DropDownMenu"
					DropDownMenu.Parent = DropDown
					DropDownMenu.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					DropDownMenu.BorderSizePixel = 0
					DropDownMenu.ClipsDescendants = true
					DropDownMenu.Position = UDim2.new(0, 0, 1, 0)
					DropDownMenu.Size = UDim2.new(1, 0, 0, 0)
					DropDownMenu.ZIndex = 100

					UICorner.CornerRadius = UDim.new(0, 4)
					UICorner.Parent = DropDownMenu

					UIListLayout.Parent = DropDownMenu
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 4)
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

					for Index, Button in pairs(ButtonsTable) do
						local DropDownButton = Instance.new("TextButton")
						local UICorner = Instance.new("UICorner")

						DropDownButton.Name = "DropDownButton"
						DropDownButton.Parent = DropDownMenu
						DropDownButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
						DropDownButton.Position = UDim2.new(0.0785454512, 0, 0.229447857, 0)
						DropDownButton.Size = UDim2.new(1, -4, 0, 25)
						DropDownButton.ZIndex = 101
						DropDownButton.AutoButtonColor = false
						DropDownButton.Font = Enum.Font.Gotham
						DropDownButton.Text = Button
						DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
						DropDownButton.TextSize = 14.000

						UICorner.CornerRadius = UDim.new(0, 4)
						UICorner.Parent = DropDownButton

						DropDownButton.MouseEnter:Connect(function()
							game:GetService("TweenService"):Create(DropDownButton, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(55,55,55)}):Play()
						end)
						DropDownButton.MouseLeave:Connect(function()
							game:GetService("TweenService"):Create(DropDownButton, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
						end)

						DropDownButton.Activated:Connect(function()
							DropDownMenu:TweenSize(UDim2.new(1,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 1, true)
							game:GetService("TweenService"):Create(Buttons, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)}):Play()
							Ripple(DropDownButton)
							Function(Button)
							wait(1)
							DropDownMenu:Destroy()
						end)
					end
					game:GetService("TweenService"):Create(Buttons, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 4 + UIListLayout3.AbsoluteContentSize.Y + 4)}):Play()
					DropDownMenu:TweenSize(UDim2.new(1,0,0,UIListLayout.AbsoluteContentSize.Y + 4), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 1, true)
				end
			end)
			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end

		function ae:NewSlider(Tittle, max, min, Function)
			if type(Tittle)~="string"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #1 In Function [WINDOW_CREATED_BY_UI]:NewSlider()\nString expected, got "..type(Tittle))
				return
			end
			if type(max)~="number"then
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #2 In Function [WINDOW_CREATED_BY_UI]:NewSlider()\nNumber expected, got "..type(max))
				return
			end
			if type(min)~="number"then
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #3 In Function [WINDOW_CREATED_BY_UI]:NewSlider()\nNumber expected, got "..type(min))
				return
			end
			if type(Function)~="function"then 
				ShadeVilTable.Log:Error("ShadeVil UI : Invalid argument #4 In Function [WINDOW_CREATED_BY_UI]:NewSlider()\nFunction expected, got "..type(Function))
				return
			end
			local Slider = Instance.new("Frame",Buttons)
			local UICorner = Instance.new("UICorner",Slider)
			local TextLabel = Instance.new("TextLabel",Slider)
			local Inner = Instance.new("TextButton",Slider)
			local UICorner_2 = Instance.new("UICorner",Inner)
			local Outer = Instance.new("Frame",Inner)
			local UICorner_3 = Instance.new("UICorner",Outer)
			local TextLabel2 = Instance.new("TextLabel",Slider)
			local mouse = game.Players.LocalPlayer:GetMouse()
			local down = false

			Slider.Name = RandomString(math.random(15,math.random(50,200))).."S"..RandomString(math.random(15,math.random(50,200))).."l"..RandomString(math.random(15,math.random(50,200))).."i"..RandomString(math.random(15,math.random(50,200))).."d"..RandomString(math.random(15,math.random(50,200))).."e"..RandomString(math.random(15,math.random(50,200))).."r.."RandomString(math.random(15,math.random(50,200)))
			Slider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Slider.Size = UDim2.new(1, -4, 0, 50)

			UICorner.CornerRadius = UDim.new(0, 4)

			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0, 4, 0, 0)
			TextLabel.Size = UDim2.new(1, -4, 1, 0)
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.LineHeight = 2.000
			TextLabel.Text = Tittle
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.BackgroundTransparency = 1.000
			TextLabel2.Position = UDim2.new(0, 4, 0, 0)
			TextLabel2.Size = UDim2.new(1, -4, 1, 0)
			TextLabel2.Font = Enum.Font.Gotham
			TextLabel2.LineHeight = 2.000
			TextLabel2.Text = min .. "/" .. max
			TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.TextSize = 14.000
			TextLabel2.TextXAlignment = Enum.TextXAlignment.Right

			Inner.Name = "Inner"
			Inner.Text = ""
			Inner.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
			Inner.Position = UDim2.new(0.00816326495, 0, 0.75999999, 0)
			Inner.Size = UDim2.new(0, 482, 0, 4)
			Inner.AutoButtonColor = false

			UICorner_2.CornerRadius = UDim.new(0, 4)

			Outer.Name = "Outer"
			Outer.ClipsDescendants = true
			Outer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Outer.Size = UDim2.new(0,0,0,0)

			UICorner_3.CornerRadius = UDim.new(0, 4)

			Inner.MouseEnter:Connect(function()
				game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(87, 87, 87)}):Play()
			end)
			Inner.MouseLeave:Connect(function()
				game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(77, 77, 77)}):Play()
			end)
			Inner.MouseButton1Down:Connect(function()
				local pos = UDim2.new(math.clamp((mouse.X - Inner.AbsolutePosition.X) / Inner.AbsoluteSize.X, 0, 1), -6, 0.5, -5)
				local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
				local ap = Vector2.new(Inner.AbsolutePosition.X, Inner.AbsolutePosition.Y)
				Outer:TweenSize(UDim2.new(0, (mouse.X - ap.X), 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
				TextLabel2.Text = tostring(value)  .. "/" .. max
				down = true
			end)
			mouse.Move:Connect(function()
				if down then
					local ap = Vector2.new(Inner.AbsolutePosition.X, Inner.AbsolutePosition.Y)
					local as = Vector2.new(Inner.AbsoluteSize.X, Inner.AbsoluteSize.Y)
					local maxSize = as.X
					local size = Outer.Size.X.Offset
					local num = max * (size / maxSize)
					local pos = UDim2.new(math.clamp((mouse.X - Inner.AbsolutePosition.X) / Inner.AbsoluteSize.X, 0, 1), -6, 0.5, -5)
					local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
					if mouse.X < ap.X then 
						Outer:TweenSize(UDim2.new(0, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
					elseif mouse.X > (ap.X + as.X) then 
						Outer:TweenSize(UDim2.new(0, as.X, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
					else
						Outer:TweenSize(UDim2.new(0, (mouse.X - ap.X), 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .25, true)
					end
					TextLabel2.Text = tostring(value)  .. "/" .. max
					coroutine.wrap(function()
						Function(value)
					end)()
				end
			end)
			uis.InputEnded:Connect(function(input, gp)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					down = false
				end
			end)
			Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
		end

		game:GetService("RunService").Stepped:Connect(function(t, s)
			if ae then
				Buttons.CanvasSize = UDim2.new(0,0,0,UIListLayout3.AbsoluteContentSize.Y + 4)
			end
		end)

		for Index,Buttons in pairs(Buttonsa:GetChildren()) do
			if Buttons:IsA"TextButton"then
				Buttons.Activated:Connect(function()
					for Indexs,Page in pairs(Pages:GetChildren()) do
						if Page:IsA"Frame"then
							if Page.Name == Buttons.Name then
								for Index, Buttonaes in pairs(Buttonsa:GetChildren()) do
									if Buttonaes:IsA"TextButton"then
										if Buttonaes.Name ~= Buttons.Name then
											game:GetService("TweenService"):Create(Buttonaes, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(38, 38, 38)}):Play()
											game:GetService("TweenService"):Create(Buttonaes, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextTransparency = 0.5}):Play()
										end
									end
								end
								game:GetService("TweenService"):Create(Buttons, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
								game:GetService("TweenService"):Create(Buttons, TweenInfo.new(0.69420, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
								Page:TweenPosition(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 1, true)
							else
								Page:TweenPosition(UDim2.new(1,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 1, true)
							end
						end
					end
				end)
			end
		end
		setreadonly(ae,true)
		return ae
	end
	setreadonly(e,true)
	return e
end
setreadonly(ShadeVilTable,true)
return ShadeVilTable
