-- by redz hub 
--Modified by drip client&BRUTON HUB
local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerMouse = Player:GetMouse()

local brutonlib = {
	Themes = {
		Darker = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 25, 25)),
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(32.5, 32.5, 32.5)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))
			}),
			["Color Hub 2"] = Color3.fromRGB(30, 30, 30),
			["Color Stroke"] = Color3.fromRGB(40, 40, 40),
			["Color Theme"] = Color3.fromRGB(88, 101, 242),
			["Color Text"] = Color3.fromRGB(243, 243, 243),
			["Color Dark Text"] = Color3.fromRGB(180, 180, 180)
		},
		Dark = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 40, 40)),
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(47.5, 47.5, 47.5)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(40, 40, 40))
			}),
			["Color Hub 2"] = Color3.fromRGB(45, 45, 45),
			
			["Color Stroke"] = Color3.fromRGB(65, 65, 65),
			["Color Theme"] = Color3.fromRGB(65, 150, 255),
			["Color Text"] = Color3.fromRGB(245, 245, 245),
			["Color Dark Text"] = Color3.fromRGB(190, 190, 190)
		},
		Purple = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(27.5, 25, 30)),
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(32.5, 32.5, 32.5)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27.5, 25, 30))
			}),
			["Color Hub 2"] = Color3.fromRGB(30, 30, 30),
			["Color Stroke"] = Color3.fromRGB(40, 40, 40),
			["Color Theme"] = Color3.fromRGB(179, 0, 255),
			["Color Text"] = Color3.fromRGB(240, 240, 240),
			["Color Dark Text"] = Color3.fromRGB(180, 180, 180),
			["Color Dark Purple"] = Color3.fromRGB(179, 0, 255),
			["Color Hub 9"] = Color3.fromRGB(0, 0, 0, 0),
			["Color Dark Greem"] = Color3.fromRGB(43, 255, 0)
		},
		Gold = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(28, 24, 16)),
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(35, 30, 20)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 24, 16))
			}),
			["Color Hub 2"] = Color3.fromRGB(30, 26, 18),
			["Color Stroke"] = Color3.fromRGB(80, 65, 30),
			["Color Theme"] = Color3.fromRGB(212, 175, 55),
			["Color Text"] = Color3.fromRGB(250, 245, 230),
			["Color Dark Text"] = Color3.fromRGB(200, 185, 150)
		},
		Crimson = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)),
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(140, 0, 0)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))
			}),
			["Color Hub 2"] = Color3.fromRGB(17, 15, 15),
			["Color Stroke"] = Color3.fromRGB(60, 20, 20),
			["Color Theme"] = Color3.fromRGB(225, 30, 30),
			["Color Text"] = Color3.fromRGB(245, 245, 245),
			["Color Dark Text"] = Color3.fromRGB(165, 160, 160)
		},
		["Sky Blue"] = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(6, 14, 30)),
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(18, 40, 70)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(6, 14, 30))
			}),
			["Color Hub 2"] = Color3.fromRGB(10, 20, 38),
			["Color Stroke"] = Color3.fromRGB(40, 90, 140),
			["Color Theme"] = Color3.fromRGB(0, 191, 255),
			["Color Text"] = Color3.fromRGB(235, 245, 255),
			["Color Dark Text"] = Color3.fromRGB(150, 185, 215)
		},
		Darkones = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 105, 180)),
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(70, 15, 45)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 105, 180))
			}),
			["Color Hub 2"] = Color3.fromRGB(35, 10, 22),
			["Color Stroke"] = Color3.fromRGB(255, 110, 185),
			["Color Edge"] = Color3.fromRGB(255, 110, 185),
			["Color Theme"] = Color3.fromRGB(210, 170, 255),
			["Color Text"] = Color3.fromRGB(150, 255, 150),
			["Color Dark Text"] = Color3.fromRGB(255, 235, 140),
			["Color Bubble"] = Color3.fromRGB(255, 110, 185)
		},
		Z7X = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(8, 20, 15)),
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(14, 34, 24)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(8, 20, 15))
			}),
			["Color Hub 2"] = Color3.fromRGB(5, 12, 8),
			["Color Stroke"] = Color3.fromRGB(30, 110, 55),
			["Color Edge"] = Color3.fromRGB(57, 255, 106),
			["Color Theme"] = Color3.fromRGB(57, 255, 106),
			["Color Heading"] = Color3.fromRGB(57, 255, 106),
			["Color Text"] = Color3.fromRGB(255, 255, 255),
			["Color Dark Text"] = Color3.fromRGB(255, 255, 255),
			["Color Dark Purple"] = Color3.fromRGB(57, 255, 106),
			["Color Dark Greem"] = Color3.fromRGB(57, 255, 106),
			["Color Bubble"] = Color3.fromRGB(57, 255, 106)
		}
	},
	Info = {
		Version = "1.2.0"
	},
	Save = {
		UISize = {550, 380},
		TabSize = 160,
		Theme = "Z7X"
	},
	Settings = {},
	Connection = {},
	Instances = {},
	Elements = {},
	Options = {},
	Flags = {},
	Tabs = {},
	Icons = (function()
		return {
			["anchor"] = "rbxassetid://10709761530",
			["apple"] = "rbxassetid://10709761889",
			["car"] = "rbxassetid://10709789810",
			["carrot"] = "rbxassetid://10709789960",
			["usercog"] = "rbxassetid://10747372167",
			["userminus"] = "rbxassetid://10747372346",
			["userplus"] = "rbxassetid://10747372702",
			["userx"] = "rbxassetid://10747372992",
			["info"] = "rbxassetid://10723415903",
			["eye"] = "rbxassetid://10723346959",
    	    ["home"] = "rbxassetid://10723407389",
    	    ["truck"] = "rbxassetid://10747364031",
			["headphones"] = "rbxassetid://10723406165",
			["Drip"] = "rbxassetid://72495850369898",
			["flame"] = "rbxassetid://10723376114",
			["shirt"] = "rbxassetid://10734952036",
			["settings"] = "rbxassetid://10734950309",
			["shield"] = "rbxassetid://10734951847",
			["coffee"] = "rbxassetid://10709810814",
			["users"] = "rbxassetid //10747373426",
            ["baby"] = "rbxassetid://10709769732",
			["ghost"] = "rbxassetid://10723396107",
			["cpu"] = "rbxassetid://10709813383",
			["boxes"] = "rbxassetid://10709782582",
			["files"] = "rbxassetid://10723374759",
		}
	end)()
}

local ViewportSize = workspace.CurrentCamera.ViewportSize
local UIScale = ViewportSize.Y / 450

local Settings = brutonlib.Settings
local Flags = brutonlib.Flags

local SetProps, SetChildren, InsertTheme, Create do
	InsertTheme = function(Instance, Type)
		table.insert(brutonlib.Instances, {
			Instance = Instance,
			Type = Type
		})
		return Instance
	end
	
	SetChildren = function(Instance, Children)
		if Children then
			table.foreach(Children, function(_,Child)
				Child.Parent = Instance
			end)
		end
		return Instance
	end
	
	SetProps = function(Instance, Props)
		if Props then
			table.foreach(Props, function(prop, value)
				Instance[prop] = value
			end)
		end
		return Instance
	end
	
	Create = function(...)
		local args = {...}
		if type(args) ~= "table" then return end
		local new = Instance.new(args[1])
		local Children = {}
		
		if type(args[2]) == "table" then
			SetProps(new, args[2])
			SetChildren(new, args[3])
			Children = args[3] or {}
		elseif typeof(args[2]) == "Instance" then
			new.Parent = args[2]
			SetProps(new, args[3])
			SetChildren(new, args[4])
			Children = args[4] or {}
		end
		return new
	end
	
	local function Save(file)
		if readfile and isfile and isfile(file) then
			local decode = HttpService:JSONDecode(readfile(file))
			
			if type(decode) == "table" then
				if rawget(decode, "UISize") then brutonlib.Save["UISize"] = decode["UISize"] end
				if rawget(decode, "TabSize") then brutonlib.Save["TabSize"] = decode["TabSize"] end
				if rawget(decode, "Theme") and VerifyTheme(decode["Theme"]) then brutonlib.Save["Theme"] = decode["Theme"] end
			end
		end
	end
	
	pcall(Save, "BRUTON library V5.json")
end

local Funcs = {} do
	function Funcs:InsertCallback(tab, func)
		if type(func) == "function" then
			table.insert(tab, func)
		end
		return func
	end
	
	function Funcs:FireCallback(tab, ...)
		for _,v in ipairs(tab) do
			if type(v) == "function" then
				task.spawn(v, ...)
			end
		end
	end
	
	function Funcs:ToggleVisible(Obj, Bool)
		if Bool == nil then return end
		Obj.Visible = Bool
	end
	
	function Funcs:ToggleParent(Obj, Bool, ParentTarget)
		if Bool == nil then return end
		if Bool then
			Obj.Parent = ParentTarget or Obj.Parent
		else
			Obj.Parent = nil
		end
	end
	
	function Funcs:GetConnectionFunctions(ConnectedFuncs, func)
		local Connected = { Function = func, Connected = true }
		
		function Connected:Disconnect()
			if self.Connected then
				table.remove(ConnectedFuncs, table.find(ConnectedFuncs, self.Function))
				self.Connected = false
			end
		end
		
		function Connected:Fire(...)
			if self.Connected then
				task.spawn(self.Function, ...)
			end
		end
		
		return Connected
	end
	
	function Funcs:GetCallback(Configs, index)
		local func = Configs[index] or Configs.Callback or function()end
		
		if type(func) == "table" then
			return ({function(Value) func[1][func[2]] = Value end})
		end
		return {func}
	end
end

local Connections, Connection = {}, brutonlib.Connection do
	local function NewConnectionList(List)
		if type(List) ~= "table" then return end
		
		for _,CoName in ipairs(List) do
			local ConnectedFuncs, Connect = {}, {}
			Connection[CoName] = Connect
			Connections[CoName] = ConnectedFuncs
			Connect.Name = CoName
			
			function Connect:Connect(func)
				if type(func) == "function" then
					table.insert(ConnectedFuncs, func)
					return Funcs:GetConnectionFunctions(ConnectedFuncs, func)
				end
			end
			
				local NotificationContainer = Create("Frame", ScreenGui, {
				Name = "NotificationContainer",
				Size = UDim2.new(0, 280, 1, 0),
				Position = UDim2.new(1, -300, 1, -20),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = 1,
				ZIndex = 999
			}, {
				Create("UIListLayout", {
					SortOrder = "LayoutOrder",
					Padding = UDim.new(0, 8),
					VerticalAlignment = "Bottom"
				})
			})
			function Connect:Once(func)
				if type(func) == "function" then
					local Connected;
					
					local _NFunc;_NFunc = function(...)
						task.spawn(func, ...)
						Connected:Disconnect()
					end
					
					Connected = Funcs:GetConnectionFunctions(ConnectedFuncs, _NFunc)
					return Connected
				end
			end
		end
	end
	

	function Connection:FireConnection(CoName, ...)
		local Connection = type(CoName) == "string" and Connections[CoName] or Connections[CoName.Name]
		for _,Func in pairs(Connection) do
			task.spawn(Func, ...)
		end
	end
	
	NewConnectionList({"FlagsChanged", "ThemeChanged", "FileSaved", "ThemeChanging", "OptionAdded"})
end

local GetFlag, SetFlag, CheckFlag do
	CheckFlag = function(Name)
		return type(Name) == "string" and Flags[Name] ~= nil
	end
	
	GetFlag = function(Name)
		return type(Name) == "string" and Flags[Name]
	end
	
	SetFlag = function(Flag, Value)
		if Flag and (Value ~= Flags[Flag] or type(Value) == "table") then
			Flags[Flag] = Value
			Connection:FireConnection("FlagsChanged", Flag, Value)
		end
	end
	
	local db
	Connection.FlagsChanged:Connect(function(Flag, Value)
		local ScriptFile = Settings.ScriptFile
		if not db and ScriptFile and writefile then
			db=true;task.wait(0.1);db=false
			
			local Success, Encoded = pcall(function()
				return HttpService:JSONEncode(Flags)
			end)
			
			if Success then
				local Success = pcall(writefile, ScriptFile, Encoded)
				if Success then
					Connection:FireConnection("FileSaved", "Script-Flags", ScriptFile, Encoded)
				end
			end
		end
	end)
end

local ScreenGui = Create("ScreenGui", CoreGui, {
	Name = "BRUTON Library",
}, {
	Create("UIScale", {
		Scale = UIScale,
		Name = "Scale"
	})
})

local ScreenFind = CoreGui:FindFirstChild(ScreenGui.Name)
if ScreenFind and ScreenFind ~= ScreenGui then
	ScreenFind:Destroy()
end

local function GetStr(val)
	if type(val) == "function" then
		return val()
	end
	return val
end

local function ConnectSave(Instance, func)
	Instance.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
			while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
			end
		end
		func()
	end)
end

local function CreateTween(Configs)
	local Instance = Configs[1] or Configs.Instance
	local Prop = Configs[2] or Configs.Prop
	local NewVal = Configs[3] or Configs.NewVal
	local Time = Configs[4] or Configs.Time or 0.5
	local TweenWait = Configs[5] or Configs.wait or false
	local TweenInfo = TweenInfo.new(Time, Enum.EasingStyle.Quint)
	
	local Tween = TweenService:Create(Instance, TweenInfo, {[Prop] = NewVal})
	Tween:Play()
	if TweenWait then
		Tween.Completed:Wait()
	end
	return Tween
end

local function MakeDrag(Instance)
	task.spawn(function()
		SetProps(Instance, {
			Active = true,
			AutoButtonColor = false
		})
		
		local DragStart, StartPos, InputOn
		
		local function Update(Input)
			local delta = Input.Position - DragStart
			local Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + delta.X / UIScale, StartPos.Y.Scale, StartPos.Y.Offset + delta.Y / UIScale)
			CreateTween({Instance, "Position", Position, 0.35})
		end
		
		Instance.MouseButton1Down:Connect(function()
			InputOn = true
		end)
		
		Instance.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				StartPos = Instance.Position
				DragStart = Input.Position
				
				while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do RunService.Heartbeat:Wait()
					if InputOn then
						Update(Input)
					end
				end
				InputOn = false
			end
		end)
	end)
	return Instance
end

local function VerifyTheme(Theme)
	for name,_ in pairs(brutonlib.Themes) do
		if name == Theme then
			return true
		end
	end
end

local function SaveJson(FileName, save)
	if writefile then
		local json = HttpService:JSONEncode(save)
		writefile(FileName, json)
	end
end

local Theme = brutonlib.Themes[brutonlib.Save.Theme]

local function AddEle(Name, Func)
	brutonlib.Elements[Name] = Func
end

local function Make(Ele, Instance, props, ...)
	local Element = brutonlib.Elements[Ele](Instance, props, ...)
	return Element
end

AddEle("Corner", function(parent, CornerRadius)
	local New = SetProps(Create("UICorner", parent, {
		CornerRadius = CornerRadius or UDim.new(0, 7)
	}), props)
	return New
end)

AddEle("Stroke", function(parent, props, ...)
	local args = {...}
	local New = InsertTheme(SetProps(Create("UIStroke", parent, {
		Color = args[1] or Theme["Color Stroke"],
		Thickness = args[2] or 1,
		ApplyStrokeMode = "Border"
	}), props), "Stroke")
	return New
end)

AddEle("Button", function(parent, props, ...)
	local args = {...}
	local New = InsertTheme(SetProps(Create("TextButton", parent, {
		Text = "",
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Theme["Color Hub 2"],
		AutoButtonColor = false
	}), props), "Frame")

	local OriginalSize = New.Size
	local IsMouseOver = false

	New.MouseEnter:Connect(function()
		IsMouseOver = true
		New.BackgroundTransparency = 0.4
	end)
	
	New.MouseLeave:Connect(function()
		IsMouseOver = false
		New.BackgroundTransparency = 0
	end)

	New.MouseButton1Down:Connect(function()
		CreateTween({New, "Size", OriginalSize - UDim2.fromOffset(4, 2), 0.1})
		CreateTween({New, "BackgroundTransparency", 0.6, 0.1})
	end)

	New.MouseButton1Up:Connect(function()
		CreateTween({New, "Size", OriginalSize, 0.15})
		CreateTween({New, "BackgroundTransparency", IsMouseOver and 0.4 or 0, 0.15})
	end)

	if args[1] then
		New.Activated:Connect(args[1])
	end

	return New
end)
AddEle("Gradient", function(parent, props, ...)
	local args = {...}
	local New = InsertTheme(SetProps(Create("UIGradient", parent, {
		Color = Theme["Color Hub 1"]
	}), props), "Gradient")
	return New
end)

local function ButtonFrame(Instance, Title, Description, HolderSize)
	local TitleL = InsertTheme(Create("TextLabel", {
		Font = Enum.Font.FredokaOne,
		TextColor3 = Theme["Color Text"],
		Size = UDim2.new(1, -20),
		AutomaticSize = "Y",
		Position = UDim2.new(0, 0, 0.5),
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundTransparency = 1,
		TextTruncate = "AtEnd",
		TextSize = 10,
		TextXAlignment = "Left",
		Text = "",
		RichText = true
	}), "Text")
	
	local DescL = InsertTheme(Create("TextLabel", {
		Font = Enum.Font.Gotham,
		TextColor3 = Theme["Color Dark Text"],
		Size = UDim2.new(1, -20),
		AutomaticSize = "Y",
		Position = UDim2.new(0, 12, 0, 15),
		BackgroundTransparency = 1,
		TextWrapped = true,
		TextSize = 8,
		TextXAlignment = "Left",
		Text = "",
		RichText = true
	}), "DarkText")

	local Frame = Make("Button", Instance, {
		Size = UDim2.new(1, 0, 0, 25),
		AutomaticSize = "Y",
		Name = "Option"
	})Make("Corner", Frame, UDim.new(0, 6))
	
	LabelHolder = Create("Frame", Frame, {
		AutomaticSize = "Y",
		BackgroundTransparency = 1,
		Size = HolderSize,
		Position = UDim2.new(0, 10, 0),
		AnchorPoint = Vector2.new(0, 0)
	}, {
		Create("UIListLayout", {
			SortOrder = "LayoutOrder",
			VerticalAlignment = "Center",
			Padding = UDim.new(0, 2)
		}),
		Create("UIPadding", {
			PaddingBottom = UDim.new(0, 5),
			PaddingTop = UDim.new(0, 5)
		}),
		TitleL,
		DescL,
	})
	
	local Label = {}
	function Label:SetTitle(NewTitle)
		if type(NewTitle) == "string" and NewTitle:gsub(" ", ""):len() > 0 then
			TitleL.Text = NewTitle
		end
	end
	function Label:SetDesc(NewDesc)
		if type(NewDesc) == "string" and NewDesc:gsub(" ", ""):len() > 0 then
			DescL.Visible = true
			DescL.Text = NewDesc
			LabelHolder.Position = UDim2.new(0, 10, 0)
			LabelHolder.AnchorPoint = Vector2.new(0, 0)
		else
			DescL.Visible = false
			DescL.Text = ""
			LabelHolder.Position = UDim2.new(0, 10, 0.5)
			LabelHolder.AnchorPoint = Vector2.new(0, 0.5)
		end
	end
	
	Label:SetTitle(Title)
	Label:SetDesc(Description)
	return Frame, Label
end

local function GetColor(Instance)
	if Instance:IsA("Frame") then
		return "BackgroundColor3"
	elseif Instance:IsA("ImageLabel") then
		return "ImageColor3"
	elseif Instance:IsA("TextLabel") then
		return "TextColor3"
	elseif Instance:IsA("ScrollingFrame") then
		return "ScrollBarImageColor3"
	elseif Instance:IsA("UIStroke") then
		return "Color"
	end
	return ""
end

local function ColorToHex(Color)
	return string.format("#%02X%02X%02X", math.floor(Color.R * 255 + 0.5), math.floor(Color.G * 255 + 0.5), math.floor(Color.B * 255 + 0.5))
end

local function HexToColor(Hex)
	Hex = tostring(Hex):gsub("#", ""):gsub(" ", "")
	if #Hex ~= 6 then return nil end
	local r = tonumber(Hex:sub(1, 2), 16)
	local g = tonumber(Hex:sub(3, 4), 16)
	local b = tonumber(Hex:sub(5, 6), 16)
	if not (r and g and b) then return nil end
	return Color3.fromRGB(r, g, b)
end

function brutonlib:GetIcon(index)
	if type(index) ~= "string" or index:find("rbxassetid://") or #index == 0 then
		return index
	end
	
	local firstMatch = nil
	index = string.lower(index):gsub("lucide", ""):gsub("-", "")
	
	for Name, Icon in self.Icons do
		Name = Name:gsub("lucide", ""):gsub("-", "")
		if Name == index then
			return Icon
		elseif not firstMatch and Name:find(index, 1, true) then
			firstMatch = Icon
		end
	end
	
	return firstMatch or index
end

function brutonlib:SetTheme(NewTheme)
	if not VerifyTheme(NewTheme) then return end
	
	brutonlib.Save.Theme = NewTheme
	SaveJson("BRUTON library V5.json", brutonlib.Save)
	Theme = brutonlib.Themes[NewTheme]
	
	Comnection:FireConnection("ThemeChanged", NewTheme)
	table.foreach(brutonlib.Instances, function(_,Val)
		if Val.Type == "Gradient" then
			Val.Instance.Color = Theme["Color Hub 1"]
		elseif Val.Type == "Frame" then
			Val.Instance.BackgroundColor3 = Theme["Color Hub 2"]
		elseif Val.Type == "Stroke" then
			Val.Instance[GetColor(Val.Instance)] = Theme["Color Stroke"]
		elseif Val.Type == "Edge" then
			Val.Instance[GetColor(Val.Instance)] = Theme["Color Edge"]
		elseif Val.Type == "Theme" then
			Val.Instance[GetColor(Val.Instance)] = Theme["Color Theme"]
		elseif Val.Type == "Heading" then
			Val.Instance[GetColor(Val.Instance)] = Theme["Color Heading"] or Theme["Color Theme"]
		elseif Val.Type == "Text" then
			Val.Instance[GetColor(Val.Instance)] = Theme["Color Text"]
		elseif Val.Type == "DarkText" then
			Val.Instance[GetColor(Val.Instance)] = Theme["Color Dark Text"]
		elseif Val.Type == "ScrollBar" then
			Val.Instance[GetColor(Val.Instance)] = Theme["Color Theme"]
		end
	end)
end

function brutonlib:SetScale(NewScale)
	NewScale = ViewportSize.Y / math.clamp(NewScale, 300, 2000)
	UIScale, ScreenGui.Scale.Scale = NewScale, NewScale
end

local NotificationContainer = Create("Frame", ScreenGui, {
	Name = "NotificationContainer",
	Size = UDim2.new(0, 280, 1, 0),
	Position = UDim2.new(1, -300, 1, -20),
	AnchorPoint = Vector2.new(0, 1),
	BackgroundTransparency = 1,
	ZIndex = 999
}, {
	Create("UIListLayout", {
		SortOrder = "LayoutOrder",
		Padding = UDim.new(0, 8),
		VerticalAlignment = "Bottom"
	})
})

function brutonlib:Notify(Configs)
	local Title = Configs[1] or Configs.Title or "Notification"
	local Description = Configs[2] or Configs.Description or Configs.Text or ""
	local Duration = Configs[3] or Configs.Duration or 5
	local Type = Configs.Type or "Info"
	local Image = Configs.Image or "rbxassetid://113449060491896"
	
	local Colors = {
		Info = Color3.fromRGB(88, 101, 242),
		Success = Color3.fromRGB(82, 75, 87),
		Warning = Color3.fromRGB(255, 193, 7),
		Error = Color3.fromRGB(255, 17, 0)
	}
	
	local TypeColor = Colors[Type] or Colors.Info
	
	local NotificationFrame = Create("Frame", NotificationContainer, {
		Size = UDim2.new(1, 0, 0, 45),
		BackgroundColor3 = Color3.fromRGB(15, 15, 15),
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		ClipsDescendants = true
	})
	
	Make("Corner", NotificationFrame, UDim.new(0, 12))
	
	local NotificationStroke = Create("UIStroke", NotificationFrame, {
		Color = Color3.fromRGB(42, 38, 43),
		Thickness = 2,
		ApplyStrokeMode = "Border"
	})
	
	local TitleLabel = Create("TextLabel", NotificationFrame, {
		Size = UDim2.new(1, -50, 0, 16), 
		Position = UDim2.new(0, 44, 0, 4),
		BackgroundTransparency = 1,
		Text = Title,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 11,
		Font = Enum.Font.GothamBold,
		TextXAlignment = "Left",
		TextTruncate = "AtEnd"
	})
	
	local DescLabel = Create("TextLabel", NotificationFrame, {
		Size = UDim2.new(1, -50, 0, 20), 
		Position = UDim2.new(0, 44, 0, 15), 
		BackgroundTransparency = 1,
		Text = Description,
		TextColor3 = Color3.fromRGB(180, 180, 180),
		TextSize = 9,
		Font = Enum.Font.Gotham,
		TextXAlignment = "Left",
		TextWrapped = true
	})
	
	local Icon = Create("ImageLabel", NotificationFrame, {
		Name = "NotificationIcon",
		Size = UDim2.new(0, 32, 0, 32),
		Position = UDim2.new(0, 6, 0.5, -20),
		BackgroundTransparency = 1,
		Image = Image,
		ZIndex = 1000
	})
	
	local CounterLabel = Create("TextLabel", NotificationFrame, {
		Size = UDim2.new(0, 30, 0, 16),
		Position = UDim2.new(1, -35, 0, 4),
		BackgroundTransparency = 1,
		Text = tostring(Duration),
		TextColor3 = TypeColor,
		TextSize = 10,
		Font = Enum.Font.GothamBold,
		TextXAlignment = "Right"
	})
	
	local function RemoveNotification()
		CreateTween({NotificationFrame, "Position", UDim2.new(1, 50, NotificationFrame.Position.Y.Scale, 0), 0.3})
		CreateTween({NotificationFrame, "BackgroundTransparency", 1, 0.3})
		CreateTween({NotificationStroke, "Transparency", 1, 0.3, true})
		NotificationFrame:Destroy()
	end
	
	NotificationFrame.Position = UDim2.new(1, 50, 0, 0)
	CreateTween({NotificationFrame, "Position", UDim2.new(0, 0, 0, 0), 0.4})
	
	if Duration > 0 then
		local timeLeft = Duration
		local updateInterval = 0.1
		local connection
		
		connection = task.spawn(function()
			while timeLeft > 0 do
				task.wait(updateInterval)
				timeLeft = timeLeft - updateInterval
				
				if timeLeft <= 0 then
					CounterLabel.Text = "0.0"
					task.wait(0.1)
					if NotificationFrame and NotificationFrame.Parent then
						RemoveNotification()
					end
					break
				else
					CounterLabel.Text = string.format("%.1f", timeLeft)
				end
			end
		end)
	end
	
	local Notification = {}
	function Notification:Remove()
		RemoveNotification()
	end
	
	return Notification
end

function brutonlib:MakeWindow(Configs)
	local WTitle = Configs[1] or Configs.Name or Configs.Title or "BRUTON Library"
	local WMiniText = Configs[2] or Configs.SubTitle or "by : brutonlib"
	
	Settings.ScriptFile = Configs[3] or Configs.SaveFolder or false
	
	local function LoadFile()
		local File = Settings.ScriptFile
		if type(File) ~= "string" then return end
		if not readfile or not isfile then return end
		local s, r = pcall(isfile, File)
		
		if s and r then
			local s, _Flags = pcall(readfile, File)
			
			if s and type(_Flags) == "string" then
				local s,r = pcall(function() return HttpService:JSONDecode(_Flags) end)
				Flags = s and r or {}
			end
		end
	end;LoadFile()
	
	local UISizeX, UISizeY = unpack(brutonlib.Save.UISize)
	local MainFrame = InsertTheme(Create("ImageButton", ScreenGui, {
		Size = UDim2.fromOffset(UISizeX, UISizeY),
		Position = UDim2.new(0.5, -UISizeX/2, 0.5, -UISizeY/2),
		BackgroundTransparency = 0.15,
		Name = "Hub"
}), "Main")
	Make("Gradient", MainFrame, {
		Rotation = 45
	})MakeDrag(MainFrame)
	local MainCorner = Make("Corner", MainFrame)
	local Components = Create("Folder", MainFrame, {
		Name = "Components"
	})
	
	local DropdownHolder = Create("Folder", ScreenGui, {
		Name = "Dropdown"
	})
	
	local TopBar = Create("Frame", Components, {
		Size = UDim2.new(1, 0, 0, 28),
		BackgroundTransparency = 1,
		Name = "Top Bar"
	})
	
	local Title = InsertTheme(Create("TextLabel", TopBar, {
		Position = UDim2.new(0, 15, 0.5),
		AnchorPoint = Vector2.new(0, 0.5),
		AutomaticSize = "XY",
		Text = WTitle,
		TextXAlignment = "Left",
		TextSize = 12,
		TextColor3 = Theme["Color Text"],
		BackgroundTransparency = 1,
		Font = Enum.Font.FredokaOne,
		Name = "Title"
	}, {
		InsertTheme(Create("TextLabel", {
			Size = UDim2.fromScale(0, 1),
			AutomaticSize = "X",
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(1, 5, 0.9),
			Text = WMiniText,
			TextColor3 = Theme["Color Dark Greem"],
			BackgroundTransparency = 1,
			TextXAlignment = "Left",
			TextYAlignment = "Bottom",
			TextSize = 9,
			Font = Enum.Font.Gotham,
			Name = "SubTitle"
		}), "DarkText")
	}), "Text")
	
	local MainScroll = InsertTheme(Create("ScrollingFrame", Components, {
		Size = UDim2.new(0, brutonlib.Save.TabSize, 1, -TopBar.Size.Y.Offset),
		ScrollBarImageColor3 = Theme["Color Theme"],
		Position = UDim2.new(0, 0, 1, 0),
		AnchorPoint = Vector2.new(0, 1),
		ScrollBarThickness = 1.5,
		BackgroundTransparency = 1,
		ScrollBarImageTransparency = 0.2,
		CanvasSize = UDim2.new(),
		AutomaticCanvasSize = "Y",
		ScrollingDirection = "Y",
		BorderSizePixel = 0,
		Name = "Tab Scroll"
	}, {
		Create("UIPadding", {
			PaddingLeft = UDim.new(0, 10),
			PaddingRight = UDim.new(0, 10),
			PaddingTop = UDim.new(0, 10),
			PaddingBottom = UDim.new(0, 10)
		}), Create("UIListLayout", {
			Padding = UDim.new(0, 5)
		})
	}), "ScrollBar")
	
	local Containers = Create("Frame", Components, {
		Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -TopBar.Size.Y.Offset),
		AnchorPoint = Vector2.new(1, 1),
		Position = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		Name = "Containers"
	})

	local ParticleContainer = Create("Frame", Containers, {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Name = "ThemeParticles",
		ZIndex = -5,
		ClipsDescendants = true
	})
	
	local ParticleConfig = {
		MaxParticles = 30,
		SpawnRate = 0.1,
		ParticleSize = {Min = 6, Max = 10},
		ParticleSpeed = {Min = 15, Max = 25},
		ParticleLifetime = 6
	}

local ActiveParticles = {}
local LastSpawn = 0

local function CreateCyberpunkParticle()
	if #ActiveParticles >= ParticleConfig.MaxParticles then return end
	
	local containerSize = ParticleContainer.AbsoluteSize
	local startX = math.random(10, containerSize.X - 10)
	local startY = containerSize.Y + 20
	
	local size = math.random(ParticleConfig.ParticleSize.Min, ParticleConfig.ParticleSize.Max)
	local speed = math.random(ParticleConfig.ParticleSpeed.Min, ParticleConfig.ParticleSpeed.Max)
	
	local particleColor = Theme["Color Theme"]
	
	local Particle = Create("Frame", ParticleContainer, {
		Size = UDim2.fromOffset(size, size),
		Position = UDim2.fromOffset(startX, startY),
		BackgroundColor3 = particleColor,
		BackgroundTransparency = 0.2,
		BorderSizePixel = 0
	})
	
	Create("UICorner", Particle, {
		CornerRadius = UDim.new(0.5, 0)
	})
	
	local Glow = Create("Frame", Particle, {
		Size = UDim2.new(1, 6, 1, 6),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = particleColor,
		BackgroundTransparency = 0.7,
		ZIndex = -1
	})
	
	Create("UICorner", Glow, {
		CornerRadius = UDim.new(0.5, 0)
	})
	
	local ParticleData = {
		Frame = Particle,
		Glow = Glow,
		StartTime = tick(),
		Speed = speed,
		Direction = Vector2.new(0, -speed),
		OriginalColor = particleColor
	}
	
	Particle.BackgroundTransparency = 1
	Glow.BackgroundTransparency = 1
	CreateTween({Particle, "BackgroundTransparency", 0.2, 0.8})
	CreateTween({Glow, "BackgroundTransparency", 0.7, 0.8})
	
	table.insert(ActiveParticles, ParticleData)
end

local function UpdateCyberpunkParticles()
	local containerSize = ParticleContainer.AbsoluteSize
	
	for i = #ActiveParticles, 1, -1 do
		local particle = ActiveParticles[i]
		local elapsed = tick() - particle.StartTime
		if elapsed >= ParticleConfig.ParticleLifetime or 
		   particle.Frame.Position.Y.Offset < -20 then

			CreateTween({particle.Frame, "BackgroundTransparency", 1, 0.5})
			CreateTween({particle.Glow, "BackgroundTransparency", 1, 0.5})
			
			task.spawn(function()
				task.wait(0.5)
				if particle.Frame and particle.Frame.Parent then
					particle.Frame:Destroy()
				end
			end)
			
			table.remove(ActiveParticles, i)
		else
			local currentPos = particle.Frame.Position
			local newY = currentPos.Y.Offset + particle.Direction.Y * 0.016
			
			particle.Frame.Position = UDim2.fromOffset(currentPos.X.Offset, newY)
			local lifeRatio = elapsed / ParticleConfig.ParticleLifetime
			if lifeRatio > 0.8 then
				local fadeAlpha = 0.2 * (1 - ((lifeRatio - 0.8) / 0.2))
				particle.Frame.BackgroundTransparency = math.max(1 - fadeAlpha, 0.95)
			end
		end
	end
end

local function SpawnCyberpunkSystem()
	if tick() - LastSpawn >= ParticleConfig.SpawnRate and MainFrame.Visible then
		CreateCyberpunkParticle()
		LastSpawn = tick()
	end
end

	local ParticleConnection = nil

	local BackgroundImage = Create("ImageLabel", ParticleContainer, {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundTransparency = 1,
		ImageTransparency = 0.45,
		ScaleType = Enum.ScaleType.Crop,
		ZIndex = -4,
		Visible = false
	})

	local BackgroundDim = Create("Frame", ParticleContainer, {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 0.45,
		BorderSizePixel = 0,
		ZIndex = -3,
		Visible = false
	})
	Make("Corner", BackgroundDim)

	local function StopParticles()
		if ParticleConnection then
			ParticleConnection:Disconnect()
			ParticleConnection = nil
		end
		for _, p in ipairs(ActiveParticles) do
			if p.Frame and p.Frame.Parent then
				p.Frame:Destroy()
			end
		end
		ActiveParticles = {}
		ParticleContainer.Visible = false
	end

	local function StartParticles()
		ParticleContainer.Visible = true
		BackgroundImage.Visible   = false
		BackgroundDim.Visible     = false
		if not ParticleConnection then
			ParticleConnection = RunService.Heartbeat:Connect(function()
				UpdateCyberpunkParticles()
				SpawnCyberpunkSystem()
			end)
		end
	end

	local function StartImage(url, transparency, dim)
		StopParticles()
		BackgroundImage.Image             = url or ""
		BackgroundImage.ImageTransparency = transparency or 0.45
		BackgroundDim.BackgroundTransparency = dim or 0.45
		BackgroundImage.Visible  = true
		BackgroundDim.Visible    = true
		ParticleContainer.Visible = true
	end

	local ControlSize1, ControlSize2 = MakeDrag(Create("ImageButton", MainFrame, {
		Size = UDim2.new(0, 35, 0, 35),
		Position = MainFrame.Size,
		Active = true,
		AnchorPoint = Vector2.new(0.8, 0.8),
		BackgroundTransparency = 1,
		Name = "Control Hub Size"
	})), MakeDrag(Create("ImageButton", MainFrame, {
		Size = UDim2.new(0, 20, 1, -30),
		Position = UDim2.new(0, MainScroll.Size.X.Offset, 1, 0),
		AnchorPoint = Vector2.new(0.5, 1),
		Active = true,
		BackgroundTransparency = 1,
		Name = "Control Tab Size"
	}))
	
	local function ControlSize()
		local Pos1, Pos2 = ControlSize1.Position, ControlSize2.Position
		ControlSize1.Position = UDim2.fromOffset(math.clamp(Pos1.X.Offset, 430, 1000), math.clamp(Pos1.Y.Offset, 200, 500))
		ControlSize2.Position = UDim2.new(0, math.clamp(Pos2.X.Offset, 135, 250), 1, 0)
		
		MainScroll.Size = UDim2.new(0, ControlSize2.Position.X.Offset, 1, -TopBar.Size.Y.Offset)
		Containers.Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -TopBar.Size.Y.Offset)
		MainFrame.Size = ControlSize1.Position
	end
	
	ControlSize1:GetPropertyChangedSignal("Position"):Connect(ControlSize)
	ControlSize2:GetPropertyChangedSignal("Position"):Connect(ControlSize)
	
	ConnectSave(ControlSize1, function()
		if not Minimized then
			brutonlib.Save.UISize = {MainFrame.Size.X.Offset, MainFrame.Size.Y.Offset}
			SaveJson("BRUTON library V5.json", brutonlib.Save)
		end
	end)
	
	ConnectSave(ControlSize2, function()
		brutonlib.Save.TabSize = MainScroll.Size.X.Offset
		SaveJson("BRUTON library V5.json", brutonlib.Save)
	end)
	
	local ButtonsFolder = Create("Folder", TopBar, {
		Name = "Buttons"
	})
	
	local CloseButton = Create("ImageButton", {
		Size = UDim2.new(0, 14, 0, 14),
		Position = UDim2.new(1, -10, 0.5),
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundTransparency = 1,
		Image = "rbxassetid://10747384394",
		AutoButtonColor = false,
		Name = "Close"
	})
	
	local MinimizeButton = SetProps(CloseButton:Clone(), {
		Position = UDim2.new(1, -35, 0.5),
		Image = "rbxassetid://10734896206",
		Name = "Minimize"
	})
	
	local SettingButton = SetProps(CloseButton:Clone(), {
		Position = UDim2.new(1, -60, 0.5),
		Image = "rbxassetid://11385220704",
		ImageColor3 = Theme["Color Dark Text"],
		Name = "Settings"
	})
	
	SetChildren(ButtonsFolder, {
		CloseButton,
		MinimizeButton,
		SettingButton
	})
	
	local Minimized, SaveSize, WaitClick
	local Window, FirstTab = {}, false
	function Window:CloseBtn()
		local Dialog = Window:Dialog({
			Title = "BRUTON HUB",
			Text = "متاكد تريد تغلق سكربت بروتون اذا قفلتو وفي وضائف شغالة رح يصيرلك مشكل متقدر توقفها\n♻️",
			Options = {
				{"تاكيد", function()
					ScreenGui:Destroy()
				end},
				{"الغاء"}
			}
		})
	end
	function Window:MinimizeBtn()
		if WaitClick then return end
		WaitClick = true
		
		if Minimized then
			MinimizeButton.Image = "rbxassetid://10734896206"
			CreateTween({MainFrame, "Size", SaveSize, 0.25, true})
			ControlSize1.Visible = true
			ControlSize2.Visible = true
			for _, particle in pairs(ActiveParticles) do
				if particle.Frame and particle.Frame.Parent then
					particle.Frame.Visible = true
				end
			end
			Minimized = false
		else
			MinimizeButton.Image = "rbxassetid://10734924532"
			SaveSize = MainFrame.Size
			ControlSize1.Visible = false
			ControlSize2.Visible = false
			for _, particle in pairs(ActiveParticles) do
				if particle.Frame and particle.Frame.Parent then
					particle.Frame.Visible = false
				end
			end
			CreateTween({MainFrame, "Size", UDim2.fromOffset(MainFrame.Size.X.Offset, 28), 0.25, true})
			Minimized = true
		end
		
		WaitClick = false
	end
	function Window:Minimize()
		MainFrame.Visible = not MainFrame.Visible
	end
	
	function Window:SetBackground(mode, configs)
		if mode == "Particles" then
			StartParticles()

		elseif mode == "Image" then
			local url, transparency, dim

			if type(configs) == "string" then
				url = configs
			elseif type(configs) == "table" then
				url          = configs[1] or configs.URL or configs.Image or ""
				transparency = configs.Transparency or configs.Alpha
				dim          = configs.Dim or configs.Overlay
			end

			StartImage(url, transparency, dim)

		elseif mode == "None" then
			StopParticles()
			BackgroundImage.Visible  = false
			BackgroundDim.Visible    = false
			ParticleContainer.Visible = false
		end
	end

	function Window:SetThemeParticles(enabled)
		Window:SetBackground(enabled and "Particles" or "None")
	end

	function Window:Minimize()
		MainFrame.Visible = not MainFrame.Visible
	end
function Window:AddMinimizeButton(Configs)
	local Button = MakeDrag(Create("ImageButton", ScreenGui, {
		Size = UDim2.fromOffset(60, 60),
		Position = UDim2.fromScale(0.15, 0.15),
		BackgroundTransparency = 1,
		AutoButtonColor = false
	}))

	local Stroke, Corner

	if Configs.Corner then
		Corner = Make("Corner", Button)
		SetProps(Corner, Configs.Corner)
	end

	if Configs.Stroke then
		Stroke = Make("Stroke", Button)
		SetProps(Stroke, Configs.Stroke)
	end

	SetProps(Button, Configs.Button)

	Button.Activated:Connect(Window.Minimize)

	return {
		Stroke = Stroke,
		Corner = Corner,
		Button = Button
	}
end
	function Window:Set(Val1, Val2)
		if type(Val1) == "string" and type(Val2) == "string" then
			Title.Text = Val1
			Title.SubTitle.Text = Val2
		elseif type(Val1) == "string" then
			Title.Text = Val1
		end
	end
	function Window:Dialog(Configs)
		if MainFrame:FindFirstChild("Dialog") then return end
		if Minimized then
			Window:MinimizeBtn()
		end
		
		local DTitle = Configs[1] or Configs.Title or "Dialog"
		local DText = Configs[2] or Configs.Text or "This is a Dialog"
		local DOptions = Configs[3] or Configs.Options or {}
		
		local Frame = Create("Frame", {
			Active = true,
			Size = UDim2.fromOffset(250 * 1.08, 150 * 1.08),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5)
		}, {
			InsertTheme(Create("TextLabel", {
				Font = Enum.Font.GothamBold,
				Size = UDim2.new(1, 0, 0, 20),
				Text = DTitle,
				TextXAlignment = "Left",
				TextColor3 = Theme["Color Text"],
				TextSize = 15,
				Position = UDim2.fromOffset(15, 5),
				BackgroundTransparency = 1
			}), "Text"),
			InsertTheme(Create("TextLabel", {
				Font = Enum.Font.GothamMedium,
				Size = UDim2.new(1, -25),
				AutomaticSize = "Y",
				Text = DText,
				TextXAlignment = "Left",
				TextColor3 = Theme["Color Dark Text"],
				TextSize = 12,
				Position = UDim2.fromOffset(15, 25),
				BackgroundTransparency = 1,
				TextWrapped = true
			}), "DarkText")
		})Make("Gradient", Frame, {Rotation = 270})Make("Corner", Frame)
		
		local ButtonsHolder = Create("Frame", Frame, {
			Size = UDim2.fromScale(1, 0.35),
			Position = UDim2.fromScale(0, 1),
			AnchorPoint = Vector2.new(0, 1),
			BackgroundColor3 = Theme["Color Hub 2"],
			BackgroundTransparency = 1
		}, {
			Create("UIListLayout", {
				Padding = UDim.new(0, 10),
				VerticalAlignment = "Center",
				FillDirection = "Horizontal",
				HorizontalAlignment = "Center"
			})
		})
		
		local Screen = InsertTheme(Create("Frame", MainFrame, {
			BackgroundTransparency = 0.6,
			Active = true,
			BackgroundColor3 = Theme["Color Hub 2"],
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = Theme["Color Stroke"],
			Name = "Dialog"
		}), "Stroke")
		
		MainCorner:Clone().Parent = Screen
		Frame.Parent = Screen
		CreateTween({Frame, "Size", UDim2.fromOffset(250, 150), 0.2})
		CreateTween({Frame, "Transparency", 0, 0.15})
		CreateTween({Screen, "Transparency", 0.3, 0.15})
		
		local ButtonCount, Dialog = 1, {}
		function Dialog:Button(Configs)
			local Name = Configs[1] or Configs.Name or Configs.Title or ""
			local Callback = Configs[2] or Configs.Callback or function()end
			
			ButtonCount = ButtonCount + 1
			local Button = Make("Button", ButtonsHolder)
			Make("Corner", Button)
			SetProps(Button, {
				Text = Name,
				Font = Enum.Font.GothamBold,
				TextColor3 = Theme["Color Text"],
				TextSize = 12
			})
			
			for _,Button in pairs(ButtonsHolder:GetChildren()) do
				if Button:IsA("TextButton") then
					Button.Size = UDim2.new(1 / ButtonCount, -(((ButtonCount - 1) * 20) / ButtonCount), 0, 32)
				end
			end
			Button.Activated:Connect(Dialog.Close)
			Button.Activated:Connect(Callback)
		end
		function Dialog:Close()
			CreateTween({Frame, "Size", UDim2.fromOffset(250 * 1.08, 150 * 1.08), 0.2})
			CreateTween({Screen, "Transparency", 1, 0.15})
			CreateTween({Frame, "Transparency", 1, 0.15, true})
			Screen:Destroy()
		end
		table.foreach(DOptions, function(_,Button)
			Dialog:Button(Button)
		end)
		return Dialog
	end
	function Window:SelectTab(TabSelect)
		if type(TabSelect) == "number" then
			brutonlib.Tabs[TabSelect].func:Enable()
		else
			for _,Tab in pairs(brutonlib.Tabs) do
				if Tab.Cont == TabSelect.Cont then
					Tab.func:Enable()
				end
			end
		end
	end
	
	function Window:LoadTab(URL, WaitTime, ...)
		if type(URL) ~= "string" or URL == "" then
			warn("[brutonlib] LoadTab: invalid URL")
			return nil
		end
	
		local Success, Result = pcall(function(...)
			return loadstring(game:HttpGet(URL))(Window, ...)
		end, ...)
	
		if not Success then
			warn("[brutonlib] Failed to load tab from '" .. URL .. "': " .. tostring(Result))
			return nil
		end
	
		task.wait(type(WaitTime) == "number" and WaitTime or 0.15)
		return Result
	end
	
	local ContainerList = {}
	function Window:MakeTab(paste, Configs)
		if type(paste) == "table" then Configs = paste end
		local TName = Configs[1] or Configs.Title or "Tab!"
		local TIcon = Configs[2] or Configs.Icon or ""
		local IsSettingsTab = Configs.IsSettings == true
		
		TIcon = brutonlib:GetIcon(TIcon)
		if not TIcon:find("rbxassetid://") or TIcon:gsub("rbxassetid://", ""):len() < 6 then
			TIcon = false
		end
		
		local TabSelect = Make("Button", MainScroll, {
			Size = UDim2.new(1, 0, 0, 24)
		})Make("Corner", TabSelect)
		
		local LabelTitle = InsertTheme(Create("TextLabel", TabSelect, {
			Size = UDim2.new(1, TIcon and -25 or -15, 1),
			Position = UDim2.fromOffset(TIcon and 25 or 15),
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSansBold,
			Text = TName,
			TextColor3 = Theme["Color Text"],
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTransparency = (FirstTab and 0.3) or 0,
			TextTruncate = "AtEnd"
		}), "Text")
		
		local LabelIcon = InsertTheme(Create("ImageLabel", TabSelect, {
			Position = UDim2.new(0, 8, 0.5),
			Size = UDim2.new(0, 13, 0, 13),
			AnchorPoint = Vector2.new(0, 0.5),
			Image = TIcon or "",
			BackgroundTransparency = 1,
			ImageTransparency = (FirstTab and 0.3) or 0
		}), "Text")
		
		local Selected = InsertTheme(Create("Frame", TabSelect, {
			Size = FirstTab and UDim2.new(0, 4, 0, 4) or UDim2.new(0, 4, 0, 13),
			Position = UDim2.new(0, 1, 0.5),
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundColor3 = Theme["Color Theme"],
			BackgroundTransparency = FirstTab and 1 or 0
		}), "Theme")Make("Corner", Selected, UDim.new(0.5, 0))
		
		local Container = InsertTheme(Create("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 1),
			AnchorPoint = Vector2.new(0, 1),
			ScrollBarThickness = 1.5,
			BackgroundTransparency = 1,
			ScrollBarImageTransparency = 0.2,
			ScrollBarImageColor3 = Theme["Color Theme"],
			AutomaticCanvasSize = "Y",
			ScrollingDirection = "Y",
			BorderSizePixel = 0,
			CanvasSize = UDim2.new(),
			Name = ("Container %i [ %s ]"):format(#ContainerList + 1, TName)
		}, {
			Create("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 10)
			}), Create("UIListLayout", {
				Padding = UDim.new(0, 5)
			})
		}), "ScrollBar")
		
		table.insert(ContainerList, Container)
		
		if not FirstTab and not IsSettingsTab then Container.Parent = Containers end
		
		local function Tabs()
			if Container.Parent then return end
			for _,Frame in pairs(ContainerList) do
				if Frame:IsA("ScrollingFrame") and Frame ~= Container then
					Frame.Parent = nil
				end
			end
			Container.Parent = Containers
			Container.Size = UDim2.new(1, 0, 1, 150)
			table.foreach(brutonlib.Tabs, function(_,Tab)
				if Tab.Cont ~= Container then
					Tab.func:Disable()
				end
			end)
			CreateTween({Container, "Size", UDim2.new(1, 0, 1, 0), 0.3})
			CreateTween({LabelTitle, "TextTransparency", 0, 0.35})
			CreateTween({LabelIcon, "ImageTransparency", 0, 0.35})
			CreateTween({Selected, "Size", UDim2.new(0, 4, 0, 13), 0.35})
			CreateTween({Selected, "BackgroundTransparency", 0, 0.35})
		end
		TabSelect.Activated:Connect(Tabs)
		
		if not IsSettingsTab then
			FirstTab = true
		end
		local Tab = {}
		table.insert(brutonlib.Tabs, {TabInfo = {Name = TName, Icon = TIcon}, func = Tab, Cont = Container})
		Tab.Cont = Container
		if Container.Parent and not IsSettingsTab then
			Window.LastTab = Tab
		end
		
		function  Tab:Disable()
			Container.Parent = nil
			CreateTween({LabelTitle, "TextTransparency", 0.3, 0.35})
			CreateTween({LabelIcon, "ImageTransparency", 0.3, 0.35})
			CreateTween({Selected, "Size", UDim2.new(0, 4, 0, 4), 0.35})
			CreateTween({Selected, "BackgroundTransparency", 1, 0.35})
		end
		function Tab:Enable()
			Tabs()
			if not IsSettingsTab then
				Window.LastTab = Tab
			end
		end
		function Tab:Visible(Bool)
			Funcs:ToggleVisible(TabSelect, Bool)
			Funcs:ToggleParent(Container, Bool, Containers)
		end
		function Tab:Destroy() TabSelect:Destroy() Container:Destroy() end
		
		function Tab:AddSection(Configs)
			local SectionName = type(Configs) == "string" and Configs or Configs[1] or Configs.Name or Configs.Title or Configs.Section
			
			local SectionFrame = Create("Frame", Container, {
				Size = UDim2.new(1, 0, 0, 20),
				BackgroundTransparency = 1,
				Name = "Option"
			})
			
			local SectionLabel = InsertTheme(Create("TextLabel", SectionFrame, {
				Font = Enum.Font.BuilderSansExtraBold,
				Text = SectionName,
				TextColor3 = Theme["Color Dark Purple"],
				Size = UDim2.new(1, -25, 1, 0),
				Position = UDim2.new(0, 30),
				BackgroundTransparency = 1,
				TextTruncate = "AtEnd",
				TextSize = 11,
				TextXAlignment = "Left"
			}), "Text")
			
			local Section = {}
			table.insert(brutonlib.Options, {type = "Section", Name = SectionName, func = Section})
			function Section:Visible(Bool)
				if Bool == nil then SectionFrame.Visible = not SectionFrame.Visible return end
				SectionFrame.Visible = Bool
			end
			function Section:Destroy()
				SectionFrame:Destroy()
			end
			function Section:Set(New)
				if New then
					SectionLabel.Text = GetStr(New)
				end
			end
			return Section
		end
		function Tab:AddImage(Configs)
			local ImageURL  = Configs[1] or Configs.Image or Configs.URL or ""
			local ImageSize = Configs[2] or Configs.Size or 80
			local CornerTL  = Configs.CornerTL  or Configs.TopLeft     or 0
			local CornerTR  = Configs.CornerTR  or Configs.TopRight    or 0
			local CornerBL  = Configs.CornerBL  or Configs.BottomLeft  or 0
			local CornerBR  = Configs.CornerBR  or Configs.BottomRight or 0

			local ImageHolder = Create("Frame", Container, {
				Size = UDim2.new(1, 0, 0, ImageSize),
				BackgroundTransparency = 1,
				Name = "Option",
				ClipsDescendants = true
			})

			local ImageLabel = Create("ImageLabel", ImageHolder, {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				Image = ImageURL,
				ScaleType = Enum.ScaleType.Crop,
			})

			local function MakeCornerMask(anchorX, anchorY, posX, posY, radius)
				if radius <= 0 then return end
				local Mask = Create("Frame", ImageHolder, {
					Size = UDim2.new(0, radius * 2, 0, radius * 2),
					Position = UDim2.new(posX, posX == 0 and 0 or -radius * 2, posY, posY == 0 and 0 or -radius * 2),
					AnchorPoint = Vector2.new(anchorX, anchorY),
					BackgroundColor3 = Theme["Color Hub 2"],
					BorderSizePixel = 0,
					ZIndex = 2
				})
			end

			local maxCorner = math.max(CornerTL, CornerTR, CornerBL, CornerBR)
			if maxCorner > 0 then
				Create("UICorner", ImageLabel, {
					CornerRadius = UDim.new(0, maxCorner)
				})
			end

			if CornerTL == 0 and maxCorner > 0 then MakeCornerMask(0, 0, 0, 0, maxCorner) end
			if CornerTR == 0 and maxCorner > 0 then MakeCornerMask(1, 0, 1, 0, maxCorner) end
			if CornerBL == 0 and maxCorner > 0 then MakeCornerMask(0, 1, 0, 1, maxCorner) end
			if CornerBR == 0 and maxCorner > 0 then MakeCornerMask(1, 1, 1, 1, maxCorner) end

			local Image = {}
			table.insert(brutonlib.Options, {type = "Image", URL = ImageURL, func = Image})
			function Image:Visible(Bool)
				if Bool == nil then ImageHolder.Visible = not ImageHolder.Visible return end
				ImageHolder.Visible = Bool
			end
			function Image:Destroy()
				ImageHolder:Destroy()
			end
			function Image:Set(NewURL)
				if type(NewURL) == "string" then
					ImageLabel.Image = NewURL
				end
			end
			function Image:SetSize(NewSize)
				if type(NewSize) == "number" then
					ImageHolder.Size = UDim2.new(1, 0, 0, NewSize)
				end
			end
			return Image
		end
		function Tab:AddParagraph(Configs)
			local PName = Configs[1] or Configs.Title or "Paragraph"
			local PDesc = Configs[2] or Configs.Text or ""
			
			local Frame, LabelFunc = ButtonFrame(Container, PName, PDesc, UDim2.new(1, -20))
			
			local Paragraph = {}
			function Paragraph:Visible(...) Funcs:ToggleVisible(Frame, ...) end
			function Paragraph:Destroy() Frame:Destroy() end
			function Paragraph:SetTitle(Val)
				LabelFunc:SetTitle(GetStr(Val))
			end
			function Paragraph:SetDesc(Val)
				LabelFunc:SetDesc(GetStr(Val))
			end
			function Paragraph:Set(Val1, Val2)
				if Val1 and Val2 then
					LabelFunc:SetTitle(GetStr(Val1))
					LabelFunc:SetDesc(GetStr(Val2))
				elseif Val1 then
					LabelFunc:SetDesc(GetStr(Val1))
				end
			end
			return Paragraph
		end
		function Tab:AddButton(Configs)
			local BName = Configs[1] or Configs.Name or Configs.Title or "Button!"
			local BDescription = Configs.Desc or Configs.Description or ""
			local Callback = Funcs:GetCallback(Configs, 2)
			
			local FButton, LabelFunc = ButtonFrame(Container, BName, BDescription, UDim2.new(1, -20))
			local ButtonIcon = Create("ImageLabel", FButton, {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(1, -10, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,
				Image = "rbxassetid://126463403744337"
			})
			
			FButton.Activated:Connect(function()
				Funcs:FireCallback(Callback)
			end)
			
			local Button = {}
			function Button:Visible(...) Funcs:ToggleVisible(FButton, ...) end
			function Button:Destroy() FButton:Destroy() end
			function Button:Callback(...) Funcs:InsertCallback(Callback, ...) end
			function Button:Set(Val1, Val2)
				if type(Val1) == "string" and type(Val2) == "string" then
					LabelFunc:SetTitle(Val1)
					LabelFunc:SetDesc(Val2)
				elseif type(Val1) == "string" then
					LabelFunc:SetTitle(Val1)
				elseif type(Val1) == "function" then
					Callback = Val1
				end
			end
			return Button
		end
		function Tab:AddToggle(Configs)
			local TName = Configs[1] or Configs.Name or Configs.Title or "Toggle"
			local TDesc = Configs.Desc or Configs.Description or ""
			local Callback = Funcs:GetCallback(Configs, 3)
			local Flag = Configs[4] or Configs.Flag or false
			local Default = Configs[2] or Configs.Default or false
			if CheckFlag(Flag) then Default = GetFlag(Flag) end
			
			local Button, LabelFunc = ButtonFrame(Container, TName, TDesc, UDim2.new(1, -38))
			
			local ToggleHolder = InsertTheme(Create("Frame", Button, {
				Size = UDim2.new(0, 35, 0, 18),
				Position = UDim2.new(1, -10, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Theme["Color Stroke"]
			}), "Stroke")Make("Corner", ToggleHolder, UDim.new(0.5, 0))
			
			local Slider = Create("Frame", ToggleHolder, {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.8, 0, 0.8, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5)
			})
			
			local Toggle = InsertTheme(Create("Frame", Slider, {
				Size = UDim2.new(0, 12, 0, 12),
				Position = UDim2.new(0, 0, 0.5),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Theme["Color Theme"]
			}), "Theme")Make("Corner", Toggle, UDim.new(0.5, 0))
			
			local WaitClick
			local function SetToggle(Val)
				if WaitClick then return end
				
				WaitClick, Default = true, Val
				SetFlag(Flag, Default)
				Funcs:FireCallback(Callback, Default)
				if Default then
					CreateTween({Toggle, "Position", UDim2.new(1, 0, 0.5), 0.25})
					CreateTween({Toggle, "BackgroundTransparency", 0, 0.25})
					CreateTween({Toggle, "AnchorPoint", Vector2.new(1, 0.5), 0.25, Wait or false})
				else
					CreateTween({Toggle, "Position", UDim2.new(0, 0, 0.5), 0.25})
					CreateTween({Toggle, "BackgroundTransparency", 0.8, 0.25})
					CreateTween({Toggle, "AnchorPoint", Vector2.new(0, 0.5), 0.25, Wait or false})
				end
				WaitClick = false
			end;task.spawn(SetToggle, Default)
			
			Button.Activated:Connect(function()
				SetToggle(not Default)
			end)
			
			local Toggle = {}
			function Toggle:Visible(...) Funcs:ToggleVisible(Button, ...) end
			function Toggle:Destroy() Button:Destroy() end
			function Toggle:Callback(...) Funcs:InsertCallback(Callback, ...)() end
			function Toggle:Set(Val1, Val2)
				if type(Val1) == "string" and type(Val2) == "string" then
					LabelFunc:SetTitle(Val1)
					LabelFunc:SetDesc(Val2)
				elseif type(Val1) == "string" then
					LabelFunc:SetTitle(Val1, false, true)
				elseif type(Val1) == "boolean" then
					if WaitClick and Val2 then
						repeat task.wait() until not WaitClick
					end
					task.spawn(SetToggle, Val1)
				elseif type(Val1) == "function" then
					Callback = Val1
				end
			end
			return Toggle
		end
		function Tab:AddDropdown(Configs)
			local DName = Configs[1] or Configs.Name or Configs.Title or "Dropdown"
			local DDesc = Configs.Desc or Configs.Description or ""
			local DOptions = Configs[2] or Configs.Options or {}
			local OpDefault = Configs[3] or Configs.Default or {}
			local Flag = Configs[5] or Configs.Flag or false
			local DMultiSelect = Configs.MultiSelect or false
			local Callback = Funcs:GetCallback(Configs, 4)
			
			local Button, LabelFunc = ButtonFrame(Container, DName, DDesc, UDim2.new(1, -180))
			
			local SelectedFrame = InsertTheme(Create("Frame", Button, {
				Size = UDim2.new(0, 150, 0, 18),
				Position = UDim2.new(1, -10, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Theme["Color Stroke"]
			}), "Stroke")Make("Corner", SelectedFrame, UDim.new(0, 4))
			
			local ActiveLabel = InsertTheme(Create("TextLabel", SelectedFrame, {
				Size = UDim2.new(0.85, 0, 0.85, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				Font = Enum.Font.GothamBold,
				TextScaled = true,
				TextColor3 = Theme["Color Text"],
				Text = "..."
			}), "Text")
			
			local Arrow = Create("ImageLabel", SelectedFrame, {
				Size = UDim2.new(0, 15, 0, 15),
				Position = UDim2.new(0, -5, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				Image = "rbxassetid://10709791523",
				BackgroundTransparency = 1
			})
			
			local NoClickFrame = Create("TextButton", DropdownHolder, {
				Name = "AntiClick",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Visible = false,
				Text = ""
			})
			
			local DropFrame = Create("Frame", NoClickFrame, {
				Size = UDim2.new(SelectedFrame.Size.X, 0, 0),
				BackgroundTransparency = 0.1,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AnchorPoint = Vector2.new(0, 1),
				Name = "DropdownFrame",
				ClipsDescendants = true,
				Active = true
			})Make("Corner", DropFrame)Make("Stroke", DropFrame)Make("Gradient", DropFrame, {Rotation = 60})
			
			local ScrollFrame = InsertTheme(Create("ScrollingFrame", DropFrame, {
				ScrollBarImageColor3 = Theme["Color Theme"],
				Size = UDim2.new(1, 0, 1, 0),
				ScrollBarThickness = 1.5,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(),
				ScrollingDirection = "Y",
				AutomaticCanvasSize = "Y",
				Active = true
			}, {
				Create("UIPadding", {
					PaddingLeft = UDim.new(0, 8),
					PaddingRight = UDim.new(0, 8),
					PaddingTop = UDim.new(0, 5),
					PaddingBottom = UDim.new(0, 5)
				}), Create("UIListLayout", {
					Padding = UDim.new(0, 4)
				})
			}), "ScrollBar")
			
			local ScrollSize, WaitClick = 5
			local function Disable()
				WaitClick = true
				CreateTween({Arrow, "Rotation", 0, 0.2})
				CreateTween({DropFrame, "Size", UDim2.new(0, 152, 0, 0), 0.2, true})
				CreateTween({Arrow, "ImageColor3", Color3.fromRGB(255, 255, 255), 0.2})
				Arrow.Image = "rbxassetid://10709791523"
				NoClickFrame.Visible = false
				WaitClick = false
			end
			
			local function GetFrameSize()
				return UDim2.fromOffset(152, ScrollSize)
			end
			
			local function CalculateSize()
				local Count = 0
				for _,Frame in pairs(ScrollFrame:GetChildren()) do
					if Frame:IsA("Frame") or Frame.Name == "Option" then
						Count = Count + 1
					end
				end
				ScrollSize = (math.clamp(Count, 0, 10) * 25) + 10
				if NoClickFrame.Visible then
					NoClickFrame.Visible = true
					CreateTween({DropFrame, "Size", GetFrameSize(), 0.2, true})
				end
			end
			
			local function Minimize()
				if WaitClick then return end
				WaitClick = true
				if NoClickFrame.Visible then
					Arrow.Image = "rbxassetid://10709791523"
					CreateTween({Arrow, "ImageColor3", Color3.fromRGB(255, 255, 255), 0.2})
					CreateTween({DropFrame, "Size", UDim2.new(0, 152, 0, 0), 0.2, true})
					NoClickFrame.Visible = false
				else
					NoClickFrame.Visible = true
					Arrow.Image = "rbxassetid://10709790948"
					CreateTween({Arrow, "ImageColor3", Theme["Color Theme"], 0.2})
					CreateTween({DropFrame, "Size", GetFrameSize(), 0.2, true})
				end
				WaitClick = false
			end
			
			local function CalculatePos()
				local FramePos = SelectedFrame.AbsolutePosition
				local ScreenSize = ScreenGui.AbsoluteSize
				local ClampX = math.clamp((FramePos.X / UIScale), 0, ScreenSize.X / UIScale - DropFrame.Size.X.Offset)
				local ClampY = math.clamp((FramePos.Y / UIScale) , 0, ScreenSize.Y / UIScale)
				
				local NewPos = UDim2.fromOffset(ClampX, ClampY)
				local AnchorPoint = FramePos.Y > ScreenSize.Y / 1.4 and 1 or ScrollSize > 80 and 0.5 or 0
				DropFrame.AnchorPoint = Vector2.new(0, AnchorPoint)
				CreateTween({DropFrame, "Position", NewPos, 0.1})
			end
			
			local AddNewOptions, GetOptions, AddOption, RemoveOption, Selected do
				local Default = type(OpDefault) ~= "table" and {OpDefault} or OpDefault
				local MultiSelect = DMultiSelect
				local Options = {}
				Selected = MultiSelect and {} or CheckFlag(Flag) and GetFlag(Flag) or Default[1]
				
				if MultiSelect then
					for index, Value in pairs(CheckFlag(Flag) and GetFlag(Flag) or Default) do
						if type(index) == "string" and (DOptions[index] or table.find(DOptions, index)) then
							Selected[index] = Value
						elseif DOptions[Value] then
							Selected[Value] = true
						end
					end
				end
				
				local function CallbackSelected()
					SetFlag(Flag, MultiSelect and Selected or tostring(Selected))
					Funcs:FireCallback(Callback, Selected)
				end
				
				local function UpdateLabel()
					if MultiSelect then
						local list = {}
						for index, Value in pairs(Selected) do
							if Value then
								table.insert(list, index)
							end
						end
						ActiveLabel.Text = #list > 0 and table.concat(list, ", ") or "..."
					else
						ActiveLabel.Text = tostring(Selected or "...")
					end
				end
				
				local function UpdateSelected()
					if MultiSelect then
						for _,v in pairs(Options) do
							local nodes, Stats = v.nodes, v.Stats
							CreateTween({nodes[2], "BackgroundTransparency", Stats and 0 or 0.8, 0.35})
							CreateTween({nodes[2], "Size", Stats and UDim2.fromOffset(4, 12) or UDim2.fromOffset(4, 4), 0.35})
							CreateTween({nodes[3], "TextTransparency", Stats and 0 or 0.4, 0.35})
						end
					else
						for _,v in pairs(Options) do
							local Slt = v.Value == Selected
							local nodes = v.nodes
							CreateTween({nodes[2], "BackgroundTransparency", Slt and 0 or 1, 0.35})
							CreateTween({nodes[2], "Size", Slt and UDim2.fromOffset(4, 14) or UDim2.fromOffset(4, 4), 0.35})
							CreateTween({nodes[3], "TextTransparency", Slt and 0 or 0.4, 0.35})
						end
					end
					UpdateLabel()
				end
				
				local function Select(Option)
					if MultiSelect then
						Option.Stats = not Option.Stats
						Option.LastCB = tick()
						
						Selected[Option.Name] = Option.Stats
						CallbackSelected()
					else
						Option.LastCB = tick()
						
						Selected = Option.Value
						CallbackSelected()
					end
					UpdateSelected()
				end
				
				AddOption = function(index, Value)
					local Name = tostring(type(index) == "string" and index or Value)
					
					if Options[Name] then return end
					Options[Name] = {
						index = index,
						Value = Value,
						Name = Name,
						Stats = false,
						LastCB = 0
					}
					
					if MultiSelect then
						local Stats = Selected[Name]
						Selected[Name] = Stats or false
						Options[Name].Stats = Stats
					end
					
					local Button = Make("Button", ScrollFrame, {
						Name = "Option",
						Size = UDim2.new(1, 0, 0, 21),
						Position = UDim2.new(0, 0, 0.5),
						AnchorPoint = Vector2.new(0, 0.5)
					})Make("Corner", Button, UDim.new(0, 4))
					
					local IsSelected = InsertTheme(Create("Frame", Button, {
						Position = UDim2.new(0, 1, 0.5),
						Size = UDim2.new(0, 4, 0, 4),
						BackgroundColor3 = Theme["Color Theme"],
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(0, 0.5)
					}), "Theme")Make("Corner", IsSelected, UDim.new(0.5, 0))
					
					local OptioneName = InsertTheme(Create("TextLabel", Button, {
						Size = UDim2.new(1, 0, 1),
						Position = UDim2.new(0, 10),
						Text = Name,
						TextColor3 = Theme["Color Text"],
						Font = Enum.Font.FredokaOne,
						TextXAlignment = "Left",
						BackgroundTransparency = 1,
						TextTransparency = 0.4
					}), "Text")
					
					Button.Activated:Connect(function()
						Select(Options[Name])
					end)
					
					Options[Name].nodes = {Button, IsSelected, OptioneName}
				end
				
				RemoveOption = function(index, Value)
					local Name = tostring(type(index) == "string" and index or Value)
					if Options[Name] then
						if MultiSelect then Selected[Name] = nil else Selected = nil end
						Options[Name].nodes[1]:Destroy()
						table.clear(Options[Name])
						Options[Name] = nil
					end
				end
				
				GetOptions = function()
					return Options
				end
				
				AddNewOptions = function(List, Clear)
					if Clear then
						table.foreach(Options, RemoveOption)
					end
					table.foreach(List, AddOption)
					CallbackSelected()
					UpdateSelected()
				end
				
				table.foreach(DOptions, AddOption)
				CallbackSelected()
				UpdateSelected()
			end
			
			Button.Activated:Connect(Minimize)
			NoClickFrame.MouseButton1Down:Connect(Disable)
			NoClickFrame.MouseButton1Click:Connect(Disable)
			MainFrame:GetPropertyChangedSignal("Visible"):Connect(Disable)
			SelectedFrame:GetPropertyChangedSignal("AbsolutePosition"):Connect(CalculatePos)
			
			Button.Activated:Connect(CalculateSize)
			ScrollFrame.ChildAdded:Connect(CalculateSize)
			ScrollFrame.ChildRemoved:Connect(CalculateSize)
			CalculatePos()
			CalculateSize()
			
			local Dropdown = {}
			function Dropdown:Visible(...) Funcs:ToggleVisible(Button, ...) end
			function Dropdown:Destroy() Button:Destroy() end
			function Dropdown:Callback(...) Funcs:InsertCallback(Callback, ...)(Selected) end
			
			function Dropdown:Add(...)
				local NewOptions = {...}
				if type(NewOptions[1]) == "table" then
					table.foreach(Option, function(_,Name)
						AddOption(Name)
					end)
				else
					table.foreach(NewOptions, function(_,Name)
						AddOption(Name)
					end)
				end
			end
			function Dropdown:Remove(Option)
				for index, Value in pairs(GetOptions()) do
					if type(Option) == "number" and index == Option or Value.Name == "Option" then
						RemoveOption(index, Value.Value)
					end
				end
			end
			function Dropdown:Select(Option)
				if type(Option) == "string" then
					for _,Val in pairs(Options) do
						if Val.Name == Option then
							Val.Active()
						end
					end
				elseif type(Option) == "number" then
					for ind,Val in pairs(Options) do
						if ind == Option then
							Val.Active()
						end
					end
				end
			end
			function Dropdown:Set(Val1, Clear)
				if type(Val1) == "table" then
					AddNewOptions(Val1, not Clear)
				elseif type(Val1) == "function" then
					Callback = Val1
				end
			end
			return Dropdown
		end
		function Tab:AddColorPicker(Configs)
			local CPName = Configs[1] or Configs.Name or Configs.Title or "Color Picker"
			local CPDesc = Configs.Desc or Configs.Description or ""
			local Callback = Funcs:GetCallback(Configs, 3)
			local Flag = Configs[4] or Configs.Flag or false
			local Default = Configs[2] or Configs.Default or Color3.fromRGB(57, 255, 106)
			if CheckFlag(Flag) then Default = GetFlag(Flag) end

			local Button, LabelFunc = ButtonFrame(Container, CPName, CPDesc, UDim2.new(1, -60))

			local Swatch = Create("Frame", Button, {
				Size = UDim2.new(0, 38, 0, 18),
				Position = UDim2.new(1, -10, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1
			})Make("Corner", Swatch, UDim.new(0, 5))

			InsertTheme(Create("UIStroke", Swatch, {
				Thickness = 1,
				ApplyStrokeMode = "Border"
			}), "Stroke")

			local SwatchFill = Create("Frame", Swatch, {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = Default,
				BorderSizePixel = 0
			})Make("Corner", SwatchFill, UDim.new(0, 4))

			local SwatchButton = Create("TextButton", Swatch, {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false
			})

			local NoClickFrame = Create("TextButton", DropdownHolder, {
				Name = "AntiClick",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Visible = false,
				Text = ""
			})

			local PickerFrame = Create("Frame", NoClickFrame, {
				Size = UDim2.new(0, 190, 0, 0),
				BackgroundTransparency = 0.08,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AnchorPoint = Vector2.new(0, 1),
				Name = "ColorPickerFrame",
				ClipsDescendants = true,
				Active = true
			})Make("Corner", PickerFrame)Make("Stroke", PickerFrame)Make("Gradient", PickerFrame, {Rotation = 60})

			local Inner = Create("Frame", PickerFrame, {
				Size = UDim2.new(1, -16, 1, -16),
				Position = UDim2.new(0.5, 0, 0, 8),
				AnchorPoint = Vector2.new(0.5, 0)
			}, {
				Create("UIListLayout", {
					SortOrder = "LayoutOrder",
					Padding = UDim.new(0, 8)
				})
			})

			local PreviewRow = Create("Frame", Inner, {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = 1
			})

			local PreviewSwatch = Create("Frame", PreviewRow, {
				Size = UDim2.new(0, 26, 0, 26),
				BackgroundColor3 = Default,
				BorderSizePixel = 0
			})Make("Corner", PreviewSwatch, UDim.new(0, 6))

			Create("UIStroke", PreviewSwatch, {
				Color = Color3.fromRGB(255, 255, 255),
				Thickness = 1,
				Transparency = 0.4,
				ApplyStrokeMode = "Border"
			})

			local HexBox = InsertTheme(Create("TextBox", PreviewRow, {
				Size = UDim2.new(1, -34, 1, 0),
				Position = UDim2.new(0, 34, 0, 0),
				BackgroundColor3 = Theme["Color Stroke"],
				Font = Enum.Font.GothamBold,
				TextColor3 = Theme["Color Text"],
				TextScaled = true,
				ClearTextOnFocus = false,
				Text = ColorToHex(Default)
			}), "Stroke")Make("Corner", HexBox, UDim.new(0, 6))

			local SVPlane = Create("TextButton", Inner, {
				Size = UDim2.new(1, 0, 0, 100),
				BackgroundColor3 = Color3.fromRGB(255, 0, 0),
				AutoButtonColor = false,
				Text = "",
				LayoutOrder = 2,
				ClipsDescendants = true
			})Make("Corner", SVPlane, UDim.new(0, 6))

			Create("Frame", SVPlane, {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0
			}, {
				Create("UIGradient", {
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0),
						NumberSequenceKeypoint.new(1, 1)
					})
				})
			})

			Create("Frame", SVPlane, {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0
			}, {
				Create("UIGradient", {
					Rotation = 90,
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(1, 0)
					})
				})
			})

			local SVCursor = Create("Frame", SVPlane, {
				Size = UDim2.fromOffset(10, 10),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 5
			})Make("Corner", SVCursor, UDim.new(0.5, 0))

			Create("UIStroke", SVCursor, {
				Color = Color3.fromRGB(20, 20, 20),
				Thickness = 1.5,
				ApplyStrokeMode = "Border"
			})

			local HueStrip = Create("TextButton", Inner, {
				Size = UDim2.new(1, 0, 0, 16),
				AutoButtonColor = false,
				Text = "",
				LayoutOrder = 3,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			}, {
				Create("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 0)),
						ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 255, 0)),
						ColorSequenceKeypoint.new(0.333, Color3.fromRGB(0, 255, 0)),
						ColorSequenceKeypoint.new(0.500, Color3.fromRGB(0, 255, 255)),
						ColorSequenceKeypoint.new(0.667, Color3.fromRGB(0, 0, 255)),
						ColorSequenceKeypoint.new(0.833, Color3.fromRGB(255, 0, 255)),
						ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 0))
					})
				})
			})Make("Corner", HueStrip, UDim.new(0, 6))

			local HueCursor = Create("Frame", HueStrip, {
				Size = UDim2.new(0, 4, 1, 4),
				Position = UDim2.new(0, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 5
			})Make("Corner", HueCursor, UDim.new(0, 2))

			Create("UIStroke", HueCursor, {
				Color = Color3.fromRGB(20, 20, 20),
				Thickness = 1.25,
				ApplyStrokeMode = "Border"
			})

			local PresetHolder = Create("Frame", Inner, {
				Size = UDim2.new(1, 0, 0, 44),
				BackgroundTransparency = 1,
				LayoutOrder = 4
			}, {
				Create("UIGridLayout", {
					CellSize = UDim2.fromOffset(18, 18),
					CellPadding = UDim2.fromOffset(4, 4),
					SortOrder = "LayoutOrder"
				})
			})

			local Presets = {
				Color3.fromRGB(255, 255, 255), Color3.fromRGB(0, 0, 0), Color3.fromRGB(120, 120, 120),
				Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 128, 0), Color3.fromRGB(255, 220, 0),
				Color3.fromRGB(60, 255, 90), Color3.fromRGB(57, 255, 106), Color3.fromRGB(0, 200, 120),
				Color3.fromRGB(0, 255, 242), Color3.fromRGB(0, 140, 255), Color3.fromRGB(60, 90, 255),
				Color3.fromRGB(140, 60, 255), Color3.fromRGB(200, 0, 255), Color3.fromRGB(255, 0, 200),
				Color3.fromRGB(255, 0, 120), Color3.fromRGB(150, 90, 40), Color3.fromRGB(255, 180, 200)
			}

			local currentHue, currentSat, currentVal = Default:ToHSV()

			local function UpdateVisual(Color)
				SwatchFill.BackgroundColor3 = Color
				PreviewSwatch.BackgroundColor3 = Color
				HexBox.Text = ColorToHex(Color)
			end

			local function ApplyColor(FireCallback)
				local Color = Color3.fromHSV(currentHue, currentSat, currentVal)
				UpdateVisual(Color)
				SVPlane.BackgroundColor3 = Color3.fromHSV(currentHue, 1, 1)
				SetFlag(Flag, Color)
				if FireCallback ~= false then
					Funcs:FireCallback(Callback, Color)
				end
				return Color
			end

			local function SetCursorsFromHSV()
				SVCursor.Position = UDim2.new(currentSat, 0, 1 - currentVal, 0)
				HueCursor.Position = UDim2.new(currentHue, 0, 0.5, 0)
			end

			local function ControlSV()
				local Mouse = Player:GetMouse()
				local RelX = (Mouse.X - SVPlane.AbsolutePosition.X) / SVPlane.AbsoluteSize.X
				local RelY = (Mouse.Y - SVPlane.AbsolutePosition.Y) / SVPlane.AbsoluteSize.Y
				currentSat = math.clamp(RelX, 0, 1)
				currentVal = 1 - math.clamp(RelY, 0, 1)
				SVCursor.Position = UDim2.new(currentSat, 0, 1 - currentVal, 0)
				ApplyColor()
			end

			local function ControlHue()
				local Mouse = Player:GetMouse()
				local RelX = (Mouse.X - HueStrip.AbsolutePosition.X) / HueStrip.AbsoluteSize.X
				currentHue = math.clamp(RelX, 0, 1)
				HueCursor.Position = UDim2.new(currentHue, 0, 0.5, 0)
				ApplyColor()
			end

			SVPlane.MouseButton1Down:Connect(function()
				Container.ScrollingEnabled = false
				ControlSV()
				while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					task.wait()
					ControlSV()
				end
				Container.ScrollingEnabled = true
			end)

			HueStrip.MouseButton1Down:Connect(function()
				Container.ScrollingEnabled = false
				ControlHue()
				while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					task.wait()
					ControlHue()
				end
				Container.ScrollingEnabled = true
			end)

			HexBox.FocusLost:Connect(function()
				local Parsed = HexToColor(HexBox.Text)
				if Parsed then
					currentHue, currentSat, currentVal = Parsed:ToHSV()
					SetCursorsFromHSV()
					ApplyColor()
				else
					HexBox.Text = ColorToHex(Color3.fromHSV(currentHue, currentSat, currentVal))
				end
			end)

			for i, PresetColor in ipairs(Presets) do
				local Swatch2 = Create("TextButton", PresetHolder, {
					BackgroundColor3 = PresetColor,
					AutoButtonColor = false,
					Text = "",
					LayoutOrder = i,
					Size = UDim2.fromOffset(18, 18)
				})Make("Corner", Swatch2, UDim.new(0, 4))

				Create("UIStroke", Swatch2, {
					Color = Color3.fromRGB(255, 255, 255),
					Thickness = 1,
					Transparency = 0.5,
					ApplyStrokeMode = "Border"
				})

				Swatch2.MouseEnter:Connect(function()
					CreateTween({Swatch2, "Size", UDim2.fromOffset(21, 21), 0.12})
				end)
				Swatch2.MouseLeave:Connect(function()
					CreateTween({Swatch2, "Size", UDim2.fromOffset(18, 18), 0.12})
				end)

				Swatch2.Activated:Connect(function()
					currentHue, currentSat, currentVal = PresetColor:ToHSV()
					SetCursorsFromHSV()
					ApplyColor()
				end)
			end

			local WaitClick
			local function CalculatePos()
				local FramePos = Swatch.AbsolutePosition
				local ScreenSize = ScreenGui.AbsoluteSize
				local ClampX = math.clamp((FramePos.X / UIScale), 0, ScreenSize.X / UIScale - PickerFrame.Size.X.Offset)
				local ClampY = math.clamp((FramePos.Y / UIScale), 0, ScreenSize.Y / UIScale)

				local NewPos = UDim2.fromOffset(ClampX, ClampY)
				local AnchorPoint = FramePos.Y > ScreenSize.Y / 1.4 and 1 or 0
				PickerFrame.AnchorPoint = Vector2.new(0, AnchorPoint)
				CreateTween({PickerFrame, "Position", NewPos, 0.1})
			end

			local function Close()
				if WaitClick then return end
				WaitClick = true
				CreateTween({PickerFrame, "Size", UDim2.new(0, 190, 0, 0), 0.22, true})
				NoClickFrame.Visible = false
				WaitClick = false
			end

			local function Open()
				if WaitClick then return end
				WaitClick = true
				CalculatePos()
				NoClickFrame.Visible = true
				local OpenTween = TweenService:Create(PickerFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 190, 0, 235)})
				OpenTween:Play()
				WaitClick = false
			end

			SwatchButton.Activated:Connect(function()
				if NoClickFrame.Visible then
					Close()
				else
					Open()
				end
			end)

			NoClickFrame.MouseButton1Down:Connect(Close)
			NoClickFrame.MouseButton1Click:Connect(Close)
			MainFrame:GetPropertyChangedSignal("Visible"):Connect(Close)
			Swatch:GetPropertyChangedSignal("AbsolutePosition"):Connect(CalculatePos)

			SetCursorsFromHSV()
			ApplyColor(false)

			local ColorPicker = {}
			function ColorPicker:Visible(...) Funcs:ToggleVisible(Button, ...) end
			function ColorPicker:Destroy() Button:Destroy() end
			function ColorPicker:Callback(...) Funcs:InsertCallback(Callback, ...)(Color3.fromHSV(currentHue, currentSat, currentVal)) end
			function ColorPicker:Set(NewColor)
				if typeof(NewColor) == "Color3" then
					currentHue, currentSat, currentVal = NewColor:ToHSV()
					SetCursorsFromHSV()
					ApplyColor()
				end
			end
			return ColorPicker
		end
		function Tab:AddSlider(Configs)
			local SName = Configs[1] or Configs.Name or Configs.Title or "Slider!"
			local SDesc = Configs.Desc or Configs.Description or ""
			local Min = Configs[2] or Configs.MinValue or Configs.Min or 10
			local Max = Configs[3] or Configs.MaxValue or Configs.Max or 100
			local Increase = Configs[4] or Configs.Increase or 1
			local Callback = Funcs:GetCallback(Configs, 6)
			local Flag = Configs[7] or Configs.Flag or false
			local Default = Configs[5] or Configs.Default or 25
			if CheckFlag(Flag) then Default = GetFlag(Flag) end
			Min, Max = Min / Increase, Max / Increase
			
			local Button, LabelFunc = ButtonFrame(Container, SName, SDesc, UDim2.new(1, -180))
			
			local SliderHolder = Create("TextButton", Button, {
				Size = UDim2.new(0.45, 0, 1),
				Position = UDim2.new(1),
				AnchorPoint = Vector2.new(1, 0),
				AutoButtonColor = false,
				Text = "",
				BackgroundTransparency = 1
			})
			
			local SliderBar = InsertTheme(Create("Frame", SliderHolder, {
				BackgroundColor3 = Theme["Color Stroke"],
				Size = UDim2.new(1, -20, 0, 6),
				Position = UDim2.new(0.5, 0, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5)
			}), "Stroke")Make("Corner", SliderBar)
			
			local Indicator = InsertTheme(Create("Frame", SliderBar, {
				BackgroundColor3 = Theme["Color Theme"],
				Size = UDim2.fromScale(0.3, 1),
				BorderSizePixel = 0
			}), "Theme")Make("Corner", Indicator)
			
			local SliderIcon = Create("Frame", SliderBar, {
				Size = UDim2.new(0, 6, 0, 12),
				BackgroundColor3 = Color3.fromRGB(220, 220, 220),
				Position = UDim2.fromScale(0.3, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 0.2
			})Make("Corner", SliderIcon)
			
			local LabelVal = InsertTheme(Create("TextLabel", SliderHolder, {
				Size = UDim2.new(0, 14, 0, 14),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(0, 0, 0.5),
				BackgroundTransparency = 1,
				TextColor3 = Theme["Color Text"],
				Font = Enum.Font.FredokaOne,
				TextSize = 12
			}), "Text")
			
			local UIScale = Create("UIScale", LabelVal)
			
			local BaseMousePos = Create("Frame", SliderBar, {
				Position = UDim2.new(0, 0, 0.5, 0),
				Visible = false
			})
			
			local function UpdateLabel(NewValue)
				local Number = tonumber(NewValue * Increase)
				Number = math.floor(Number * 100) / 100
				
				Default, LabelVal.Text = Number, tostring(Number)
				Funcs:FireCallback(Callback, Default)
			end
			
			local function ControlPos()
				local MousePos = Player:GetMouse()
				local APos = MousePos.X - BaseMousePos.AbsolutePosition.X
				local ConfigureDpiPos = APos / SliderBar.AbsoluteSize.X
				
				SliderIcon.Position = UDim2.new(math.clamp(ConfigureDpiPos, 0, 1), 0, 0.5, 0)
			end
			
			local function UpdateValues()
				Indicator.Size = UDim2.new(SliderIcon.Position.X.Scale, 0, 1, 0)
				local SliderPos = SliderIcon.Position.X.Scale
				local NewValue = math.floor(((SliderPos * Max) / Max) * (Max - Min) + Min)
				UpdateLabel(NewValue)
			end
			
			SliderHolder.MouseButton1Down:Connect(function()
				CreateTween({SliderIcon, "Transparency", 0, 0.3})
				Container.ScrollingEnabled = false
				while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
					ControlPos()
				end
				CreateTween({SliderIcon, "Transparency", 0.2, 0.3})
				Container.ScrollingEnabled = true
				SetFlag(Flag, Default)
			end)
			
			LabelVal:GetPropertyChangedSignal("Text"):Connect(function()
				UIScale.Scale = 0.3
				CreateTween({UIScale, "Scale", 1.2, 0.1})
				CreateTween({LabelVal, "Rotation", math.random(-1, 1) * 5, 0.15, true})
				CreateTween({UIScale, "Scale", 1, 0.2})
				CreateTween({LabelVal, "Rotation", 0, 0.1})
			end)
			
			function SetSlider(NewValue)
				if type(NewValue) ~= "number" then return end
				
				local Min, Max = Min * Increase, Max * Increase
				
				local SliderPos = (NewValue - Min) / (Max - Min)
				
				SetFlag(Flag, NewValue)
				CreateTween({ SliderIcon, "Position", UDim2.fromScale(math.clamp(SliderPos, 0, 1), 0.5), 0.3, true })
			end;SetSlider(Default)
			
			SliderIcon:GetPropertyChangedSignal("Position"):Connect(UpdateValues)UpdateValues()
			
			local Slider = {}
			function Slider:Set(NewVal1, NewVal2)
				if NewVal1 and NewVal2 then
					LabelFunc:SetTitle(NewVal1)
					LabelFunc:SetDesc(NewVal2)
				elseif type(NewVal1) == "string" then
					LabelFunc:SetTitle(NewVal1)
				elseif type(NewVal1) == "function" then
					Callback = NewVal1
				elseif type(NewVal1) == "number" then
					SetSlider(NewVal1)
				end
			end
			function Slider:Callback(...) Funcs:InsertCallback(Callback, ...)(tonumber(Default)) end
			function Slider:Visible(...) Funcs:ToggleVisible(Button, ...) end
			function Slider:Destroy() Button:Destroy() end
			return Slider
		end
		function Tab:AddTextBox(Configs)
			local TName = Configs[1] or Configs.Name or Configs.Title or "Text Box"
			local TDesc = Configs.Desc or Configs.Description or ""
			local TDefault = Configs[2] or Configs.Default or ""
			local TPlaceholderText = Configs[5] or Configs.PlaceholderText or "Input"
			local TClearText = Configs[3] or Configs.ClearText or false
			local Callback = Funcs:GetCallback(Configs, 4)
			
			if type(TDefault) ~= "string" or TDefault:gsub(" ", ""):len() < 1 then
				TDefault = false
			end
			
			local Button, LabelFunc = ButtonFrame(Container, TName, TDesc, UDim2.new(1, -38))
			
			local SelectedFrame = InsertTheme(Create("Frame", Button, {
				Size = UDim2.new(0, 150, 0, 18),
				Position = UDim2.new(1, -10, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Theme["Color Stroke"]
			}), "Stroke")Make("Corner", SelectedFrame, UDim.new(0, 4))
			
			local TextBoxInput = InsertTheme(Create("TextBox", SelectedFrame, {
				Size = UDim2.new(0.85, 0, 0.85, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				Font = Enum.Font.GothamBold,
				TextScaled = true,
				TextColor3 = Theme["Color Text"],
				ClearTextOnFocus = TClearText,
				PlaceholderText = TPlaceholderText,
				Text = ""
			}), "Text")
			
			local Pencil = Create("ImageLabel", SelectedFrame, {
				Size = UDim2.new(0, 12, 0, 12),
				Position = UDim2.new(0, -5, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				Image = "rbxassetid://15637081879",
				BackgroundTransparency = 1
			})
			
			local TextBox = {}
			local function Input()
				local Text = TextBoxInput.Text
				if Text:gsub(" ", ""):len() > 0 then
					if TextBox.OnChanging then Text = TextBox.OnChanging(Text) or Text end
					Funcs:FireCallback(Callback, Text)
					TextBoxInput.Text = Text
				end
			end
			
			TextBoxInput.FocusLost:Connect(Input)Input()
			
			TextBoxInput.FocusLost:Connect(function()
				CreateTween({Pencil, "ImageColor3", Color3.fromRGB(255, 255, 255), 0.2})
			end)
			TextBoxInput.Focused:Connect(function()
				CreateTween({Pencil, "ImageColor3", Theme["Color Theme"], 0.2})
			end)
			
			TextBox.OnChanging = false
			function TextBox:Visible(...) Funcs:ToggleVisible(Button, ...) end
			function TextBox:Destroy() Button:Destroy() end
			return TextBox
		end
function Tab:AddDiscordInvite(Configs)
	local Title = Configs[1] or Configs.Name or Configs.Title or "Discord Server"
	local Description = Configs[2] or Configs.Desc or Configs.Description or ""
	local Logo = Configs[3] or Configs.Icon or Configs.Logo or ""
	local Invite = Configs[4] or Configs.Invite or Configs.Link or ""
	local InviteCode = Invite:match("discord%.gg/([%w%-]+)") or Invite:match("discord%.com/invite/([%w%-]+)") or Invite

	local InviteHolder = Create("Frame", Container, {
		Size = UDim2.new(1, 0, 0, 75),
		Name = "Option",
		BackgroundTransparency = 1
	})

	local MainFrame = InsertTheme(Create("Frame", InviteHolder, {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Theme["Color Hub 2"],
		ClipsDescendants = true
	}), "Frame")
	Make("Corner", MainFrame, UDim.new(0, 8))
	Make("Stroke", MainFrame)

	local ServerIcon = Create("ImageLabel", MainFrame, {
		Size = UDim2.new(0, 52, 0, 52),
		Position = UDim2.new(0, 10, 0.5, 0),
		AnchorPoint = Vector2.new(0, 0.5),
		Image = Logo,
		BackgroundTransparency = (Logo == "" and 0 or 1),
		BackgroundColor3 = Color3.fromRGB(88, 101, 242)
	})
	Make("Corner", ServerIcon, UDim.new(0, 10))

	local ContentFrame = Create("Frame", MainFrame, {
		Size = UDim2.new(1, -165, 1, -16),
		Position = UDim2.new(0, 72, 0.5, 0),
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundTransparency = 1
	})

	local ServerTitle = InsertTheme(Create("TextLabel", ContentFrame, {
		Size = UDim2.new(1, 0, 0, 16),
		Position = UDim2.new(0, 0, 0, 0),
		TextXAlignment = "Left",
		BackgroundTransparency = 1,
		TextSize = 13,
		Text = Title,
		Font = Enum.Font.GothamBold,
		TextColor3 = Theme["Color Text"],
		TextTruncate = Enum.TextTruncate.AtEnd
	}), "Text")

	local DescriptionLabel = InsertTheme(Create("TextLabel", ContentFrame, {
		Size = UDim2.new(1, 0, 0, 14),
		Position = UDim2.new(0, 0, 0, 18),
		TextXAlignment = "Left",
		BackgroundTransparency = 1,
		TextSize = 10,
		Text = Description,
		Font = Enum.Font.Gotham,
		TextColor3 = Theme["Color Dark Text"],
		TextTruncate = Enum.TextTruncate.AtEnd
	}), "DarkText")

	local StatsFrame = Create("Frame", ContentFrame, {
		Size = UDim2.new(1, 0, 0, 14),
		Position = UDim2.new(0, 0, 0, 36),
		BackgroundTransparency = 1
	})

	Create("UIListLayout", StatsFrame, {
		FillDirection = Enum.FillDirection.Horizontal,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 10)
	})

	local OnlineFrame = Create("Frame", StatsFrame, {
		Size = UDim2.new(0, 0, 1, 0),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
		LayoutOrder = 1
	})

	local OnlineDot = Create("Frame", OnlineFrame, {
		Size = UDim2.new(0, 6, 0, 6),
		Position = UDim2.new(0, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundColor3 = Color3.fromRGB(67, 181, 129)
	})
	Make("Corner", OnlineDot, UDim.new(1, 0))

	local OnlineText = InsertTheme(Create("TextLabel", OnlineFrame, {
		Size = UDim2.new(0, 0, 1, 0),
		Position = UDim2.new(0, 10, 0.5, 0),
		AnchorPoint = Vector2.new(0, 0.5),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
		TextSize = 10,
		Text = "0 Online",
		Font = Enum.Font.GothamMedium,
		TextColor3 = Theme["Color Text"]
	}), "Text")

	local TotalFrame = Create("Frame", StatsFrame, {
		Size = UDim2.new(0, 0, 1, 0),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
		LayoutOrder = 2
	})

	local TotalDot = Create("Frame", TotalFrame, {
		Size = UDim2.new(0, 6, 0, 6),
		Position = UDim2.new(0, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundColor3 = Color3.fromRGB(180, 180, 180)
	})
	Make("Corner", TotalDot, UDim.new(1, 0))

	local TotalText = InsertTheme(Create("TextLabel", TotalFrame, {
		Size = UDim2.new(0, 0, 1, 0),
		Position = UDim2.new(0, 10, 0.5, 0),
		AnchorPoint = Vector2.new(0, 0.5),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
		TextSize = 10,
		Text = "0 Members",
		Font = Enum.Font.GothamMedium,
		TextColor3 = Theme["Color Text"]
	}), "Text")

	local JoinButton = InsertTheme(Create("TextButton", MainFrame, {
		Position = UDim2.new(1, -10, 0.5, 0),
		Size = UDim2.new(0, 75, 0, 28),
		AnchorPoint = Vector2.new(1, 0.5),
		Text = "Join",
		Font = Enum.Font.GothamBold,
		TextSize = 11,
		BackgroundColor3 = Color3.fromRGB(67, 181, 129),
		TextColor3 = Color3.fromRGB(255, 255, 255)
	}), "Text")
	Make("Corner", JoinButton, UDim.new(0, 6))

	local HttpService = game:GetService("HttpService")
	local isRunning = true

	local function UpdateDiscordData()
		if not InviteCode or InviteCode == "" then return end

		pcall(function()
			local req = (syn and syn.request) or (http and http.request) or http_request or request
			local responseData

			if req then
				local res = req({
					Url = "https://discord.com/api/v10/invites/" .. InviteCode .. "?with_counts=true",
					Method = "GET"
				})
				if res and res.Body then
					responseData = HttpService:JSONDecode(res.Body)
				end
			elseif game.HttpGet then
				local str = game:HttpGet("https://discord.com/api/v10/invites/" .. InviteCode .. "?with_counts=true")
				if str then
					responseData = HttpService:JSONDecode(str)
				end
			end

			if responseData then
				if responseData.approximate_presence_count then
					OnlineText.Text = tostring(responseData.approximate_presence_count) .. " Online"
				end
				if responseData.approximate_member_count then
					TotalText.Text = tostring(responseData.approximate_member_count) .. " Members"
				end
				if responseData.guild and responseData.guild.name and Title == "Discord Server" then
					ServerTitle.Text = responseData.guild.name
				end
				if responseData.guild and responseData.guild.icon and Logo == "" then
					ServerIcon.Image = "https://cdn.discordapp.com/icons/" .. responseData.guild.id .. "/" .. responseData.guild.icon .. ".png"
					ServerIcon.BackgroundTransparency = 1
				end
			end
		end)
	end

	task.spawn(function()
		while isRunning and InviteHolder and InviteHolder.Parent do
			UpdateDiscordData()
			task.wait(20)
		end
	end)

	local clickCooldown = 0
	JoinButton.Activated:Connect(function()
		if tick() - clickCooldown < 3 then return end
		clickCooldown = tick()

		local originalText = JoinButton.Text
		JoinButton.Text = "Copied!"

		if setclipboard then
			setclipboard(Invite)
		end

		task.wait(2)
		if JoinButton and JoinButton.Parent then
			JoinButton.Text = originalText
		end
	end)

	local DiscordInvite = {}
	function DiscordInvite:Destroy()
		isRunning = false
		InviteHolder:Destroy()
	end
	function DiscordInvite:Visible(...)
		Funcs:ToggleVisible(InviteHolder, ...)
	end
	function DiscordInvite:Set(newTitle, newDesc, newInvite)
		if newTitle then
			ServerTitle.Text = newTitle
		end
		if newDesc then
			DescriptionLabel.Text = newDesc
		end
		if newInvite then
			Invite = newInvite
			InviteCode = Invite:match("discord%.gg/([%w%-]+)") or Invite:match("discord%.com/invite/([%w%-]+)") or Invite
			task.spawn(UpdateDiscordData)
		end
	end

	return DiscordInvite
end

		function Tab:AddMiniMap(Configs)
			Configs = Configs or {}
			local MapTitle   = Configs[1] or Configs.Title or Configs.Name or "Mini Map"
			local MapSize    = Configs.Size or 140
			local MapZoom    = Configs.Zoom or 0.04
			local ShowOthers = Configs.ShowPlayers ~= false

			local Holder = Create("Frame", Container, {
				Size = UDim2.new(1, 0, 0, MapSize + 22),
				BackgroundTransparency = 1,
				Name = "Option"
			})

			InsertTheme(Create("TextLabel", Holder, {
				Size = UDim2.new(1, 0, 0, 14),
				Position = UDim2.new(0, 10, 0, 0),
				BackgroundTransparency = 1,
				Text = MapTitle,
				Font = Enum.Font.FredokaOne,
				TextSize = 10,
				TextXAlignment = "Left",
				TextColor3 = Theme["Color Text"]
			}), "Text")

			local MapFrame = InsertTheme(Create("Frame", Holder, {
				Size = UDim2.new(1, 0, 0, MapSize),
				Position = UDim2.new(0, 0, 0, 18),
				BackgroundColor3 = Theme["Color Hub 2"],
				ClipsDescendants = true
			}), "Frame")
			Make("Corner", MapFrame)
			Make("Stroke", MapFrame)

			local VP = Create("ViewportFrame", MapFrame, {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				LightColor = Color3.fromRGB(255, 255, 255),
				Ambient = Color3.fromRGB(180, 180, 180)
			})

			local VPCam = Instance.new("Camera")
			VPCam.CameraType = Enum.CameraType.Scriptable
			VPCam.Parent = VP
			VP.CurrentCamera = VPCam

			local DotsLayer = Create("Frame", MapFrame, {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 5
			})

			local LocalDot = Create("Frame", DotsLayer, {
				Size = UDim2.fromOffset(6, 6),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				ZIndex = 6
			})
			Create("UICorner", LocalDot, { CornerRadius = UDim.new(1, 0) })

			local PlayerDots = {}
			local function GetOrCreateDot(player)
				if PlayerDots[player] then return PlayerDots[player] end
				local dot = Create("Frame", DotsLayer, {
					Size = UDim2.fromOffset(5, 5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Theme["Color Theme"],
					ZIndex = 6
				})
				Create("UICorner", dot, { CornerRadius = UDim.new(1, 0) })
				InsertTheme(Create("TextLabel", dot, {
					Size = UDim2.new(0, 50, 0, 8),
					Position = UDim2.new(0.5, 0, 0, -10),
					AnchorPoint = Vector2.new(0.5, 1),
					BackgroundTransparency = 1,
					Text = player.Name,
					Font = Enum.Font.Gotham,
					TextSize = 7,
					TextColor3 = Theme["Color Text"],
					ZIndex = 7
				}), "Text")
				PlayerDots[player] = dot
				return dot
			end

			Players.PlayerRemoving:Connect(function(p)
				if PlayerDots[p] then PlayerDots[p]:Destroy() PlayerDots[p] = nil end
			end)

			local MapConnection = RunService.Heartbeat:Connect(function()
				local lp = Players.LocalPlayer
				if not lp or not lp.Character then return end
				local root = lp.Character:FindFirstChild("HumanoidRootPart")
				if not root then return end
				local pos = root.Position
				VPCam.CFrame = CFrame.new(
					Vector3.new(pos.X, pos.Y + (1 / MapZoom), pos.Z),
					Vector3.new(pos.X, pos.Y, pos.Z)
				)
				VPCam.FieldOfView = 1 / MapZoom * 10
				LocalDot.Position = UDim2.fromScale(0.5, 0.5)
				if ShowOthers then
					for _, p in ipairs(Players:GetPlayers()) do
						if p ~= lp and p.Character then
							local r2 = p.Character:FindFirstChild("HumanoidRootPart")
							if r2 then
								local delta = r2.Position - pos
								local nx = 0.5 + (delta.X * MapZoom)
								local ny = 0.5 + (delta.Z * MapZoom)
								local dot = GetOrCreateDot(p)
								dot.Position = UDim2.fromScale(math.clamp(nx, 0.02, 0.98), math.clamp(ny, 0.02, 0.98))
								dot.Visible = math.abs(nx) <= 1 and math.abs(ny) <= 1
							end
						end
					end
				end
			end)

			for _, c in ipairs({
				{t="N",ax=0.5,ay=0,px=0.5,py=0.02},{t="S",ax=0.5,ay=1,px=0.5,py=0.98},
				{t="W",ax=0,ay=0.5,px=0.02,py=0.5},{t="E",ax=1,ay=0.5,px=0.98,py=0.5}
			}) do
				InsertTheme(Create("TextLabel", DotsLayer, {
					Size = UDim2.fromOffset(10, 10),
					AnchorPoint = Vector2.new(c.ax, c.ay),
					Position = UDim2.fromScale(c.px, c.py),
					BackgroundTransparency = 1,
					Text = c.t,
					Font = Enum.Font.GothamBold,
					TextSize = 7,
					TextColor3 = Theme["Color Dark Text"],
					ZIndex = 7
				}), "DarkText")
			end

			local MiniMap = {}
			function MiniMap:Visible(...) Funcs:ToggleVisible(Holder, ...) end
			function MiniMap:Destroy() MapConnection:Disconnect() Holder:Destroy() end
			function MiniMap:SetZoom(z) MapZoom = z end
			function MiniMap:TogglePlayers(bool)
				ShowOthers = bool
				for _, dot in pairs(PlayerDots) do dot.Visible = bool end
			end
			return MiniMap
		end

		function Tab:AddFeedback(Configs)
			Configs = Configs or {}
			local FTitle       = Configs[1] or Configs.Title or Configs.Name or "Feedback"
			local FPlaceholder = Configs.Placeholder or "Escreva sua sugestão ou crítica..."
			local FMaxStars    = Configs.Stars or 5
			local Callback     = Funcs:GetCallback(Configs, 2)

			local Holder = InsertTheme(Create("Frame", Container, {
				Size = UDim2.new(1, 0, 0, 105),
				BackgroundColor3 = Theme["Color Hub 2"],
				Name = "Option"
			}), "Frame")
			Make("Corner", Holder)
			Make("Stroke", Holder)

			InsertTheme(Create("TextLabel", Holder, {
				Size = UDim2.new(1, -15, 0, 14),
				Position = UDim2.new(0, 10, 0, 7),
				BackgroundTransparency = 1,
				Text = FTitle,
				Font = Enum.Font.FredokaOne,
				TextSize = 11,
				TextXAlignment = "Left",
				TextColor3 = Theme["Color Text"]
			}), "Text")

			local StarRow = Create("Frame", Holder, {
				Size = UDim2.new(0, FMaxStars * 18, 0, 16),
				Position = UDim2.new(0, 10, 0, 26),
				BackgroundTransparency = 1
			})

			local currentRating = 0
			local StarButtons = {}

			local function UpdateStars(n)
				currentRating = n
				for i, sb in ipairs(StarButtons) do
					sb.ImageColor3 = i <= n and Color3.fromRGB(255, 200, 50) or Theme["Color Stroke"]
				end
			end

			for i = 1, FMaxStars do
				local sb = InsertTheme(Create("ImageButton", StarRow, {
					Size = UDim2.fromOffset(14, 14),
					Position = UDim2.fromOffset((i-1)*17, 1),
					BackgroundTransparency = 1,
					Image = "rbxassetid://10723376114",
					ImageColor3 = Theme["Color Stroke"],
					AutoButtonColor = false
				}), "Stroke")
				table.insert(StarButtons, sb)
				sb.Activated:Connect(function() UpdateStars(i) end)
			end

			local BoxFrame = InsertTheme(Create("Frame", Holder, {
				Size = UDim2.new(1, -18, 0, 30),
				Position = UDim2.new(0, 9, 0, 48),
				BackgroundColor3 = Theme["Color Stroke"]
			}), "Stroke")
			Make("Corner", BoxFrame, UDim.new(0, 5))

			local InputBox = InsertTheme(Create("TextBox", BoxFrame, {
				Size = UDim2.new(1, -12, 1, 0),
				Position = UDim2.new(0, 6, 0, 0),
				BackgroundTransparency = 1,
				Font = Enum.Font.Gotham,
				TextSize = 9,
				TextXAlignment = "Left",
				TextWrapped = true,
				ClearTextOnFocus = false,
				PlaceholderText = FPlaceholder,
				Text = "",
				TextColor3 = Theme["Color Text"]
			}), "Text")

			local SendBtn = InsertTheme(Create("TextButton", Holder, {
				Size = UDim2.new(1, -18, 0, 16),
				Position = UDim2.new(0, 9, 0, 84),
				BackgroundColor3 = Theme["Color Theme"],
				Font = Enum.Font.GothamBold,
				TextSize = 9,
				Text = "Enviar Feedback",
				TextColor3 = Theme["Color Text"],
				AutoButtonColor = false
			}), "Theme")
			Make("Corner", SendBtn, UDim.new(0, 5))

			SendBtn.MouseEnter:Connect(function() CreateTween({SendBtn, "BackgroundTransparency", 0.3, 0.15}) end)
			SendBtn.MouseLeave:Connect(function() CreateTween({SendBtn, "BackgroundTransparency", 0, 0.15}) end)

			local Sent = false
			SendBtn.Activated:Connect(function()
				if Sent then return end
				if currentRating == 0 then
					SendBtn.Text = "Selecione uma nota!"
					task.wait(2)
					SendBtn.Text = "Enviar Feedback"
					return
				end
				Sent = true
				SendBtn.Text = "Obrigado! ✓"
				SendBtn.BackgroundColor3 = Color3.fromRGB(67, 181, 129)
				Funcs:FireCallback(Callback, currentRating, InputBox.Text)
				task.wait(3)
				if SendBtn and SendBtn.Parent then
					Sent = false
					SendBtn.Text = "Enviar Feedback"
					SendBtn.BackgroundColor3 = Theme["Color Theme"]
				end
			end)

			local Feedback = {}
			function Feedback:Visible(...) Funcs:ToggleVisible(Holder, ...) end
			function Feedback:Destroy() Holder:Destroy() end
			function Feedback:Reset() UpdateStars(0) InputBox.Text = "" Sent = false SendBtn.Text = "Enviar Feedback" end
			function Feedback:GetRating() return currentRating end
			return Feedback
		end

		function Tab:AddChangelog(Configs)
			Configs = Configs or {}
			local CLTitle  = (type(Configs.Title) == "string" and Configs.Title)
				or (type(Configs.Name) == "string" and Configs.Name)
				or (type(Configs[1]) == "string" and Configs[1])
				or "Changelog"
			local Versions = (type(Configs[1]) == "table") and Configs or Configs.Versions or {}

			local BadgeColors = {
				new = Color3.fromRGB(88,181,120), fix = Color3.fromRGB(88,150,242),
				removed = Color3.fromRGB(220,80,80), change = Color3.fromRGB(220,170,50)
			}

			local Holder = Create("Frame", Container, {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = "Y",
				BackgroundTransparency = 1,
				Name = "Option"
			})

			local HeaderBtn = InsertTheme(Create("TextButton", Holder, {
				Size = UDim2.new(1, 0, 0, 24),
				BackgroundColor3 = Theme["Color Hub 2"],
				Font = Enum.Font.FredokaOne,
				Text = "  📋  " .. CLTitle,
				TextSize = 11,
				TextXAlignment = "Left",
				TextColor3 = Theme["Color Text"],
				AutoButtonColor = false
			}), "Frame")
			Make("Corner", HeaderBtn)
			Make("Stroke", HeaderBtn)

			local ArrowLabel = InsertTheme(Create("TextLabel", HeaderBtn, {
				Size = UDim2.fromOffset(14, 14),
				Position = UDim2.new(1, -18, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,
				Text = "▾",
				Font = Enum.Font.GothamBold,
				TextSize = 12,
				TextColor3 = Theme["Color Dark Text"]
			}), "DarkText")

			local VersionsContainer = Create("Frame", Holder, {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = "Y",
				Position = UDim2.new(0, 0, 0, 28),
				BackgroundTransparency = 1
			})
			Create("UIListLayout", VersionsContainer, { Padding = UDim.new(0, 4) })

			local Expanded = true
			HeaderBtn.Activated:Connect(function()
				Expanded = not Expanded
				VersionsContainer.Visible = Expanded
				ArrowLabel.Text = Expanded and "▾" or "▸"
			end)

			for _, verData in ipairs(Versions) do
				local VBlock = InsertTheme(Create("Frame", VersionsContainer, {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					BackgroundColor3 = Theme["Color Hub 2"]
				}), "Frame")
				Make("Corner", VBlock)
				Make("Stroke", VBlock)

				local VHeader = Create("TextButton", VBlock, {
					Size = UDim2.new(1, 0, 0, 22),
					BackgroundTransparency = 1,
					Text = "",
					AutoButtonColor = false
				})

				InsertTheme(Create("TextLabel", VHeader, {
					Size = UDim2.new(0.6, 0, 1, 0),
					Position = UDim2.new(0, 10, 0, 0),
					BackgroundTransparency = 1,
					Text = "v" .. (verData.Version or "?"),
					Font = Enum.Font.GothamBold,
					TextSize = 10,
					TextXAlignment = "Left",
					TextColor3 = Theme["Color Text"]
				}), "Text")

				InsertTheme(Create("TextLabel", VHeader, {
					Size = UDim2.new(0.4, -10, 1, 0),
					Position = UDim2.new(0.6, 0, 0, 0),
					BackgroundTransparency = 1,
					Text = verData.Date or "",
					Font = Enum.Font.Gotham,
					TextSize = 8,
					TextXAlignment = "Right",
					TextColor3 = Theme["Color Dark Text"]
				}), "DarkText")

				local ChangesList = Create("Frame", VBlock, {
					Size = UDim2.new(1, -16, 0, 0),
					AutomaticSize = "Y",
					Position = UDim2.new(0, 8, 0, 24),
					BackgroundTransparency = 1
				})
				Create("UIListLayout", ChangesList, { Padding = UDim.new(0, 3) })
				Create("UIPadding", ChangesList, { PaddingBottom = UDim.new(0, 6) })

				local VExp = true
				VHeader.Activated:Connect(function()
					VExp = not VExp
					ChangesList.Visible = VExp
				end)

				for _, change in ipairs(verData.Changes or {}) do
					local cType  = change[1] or "new"
					local cText  = change[2] or ""
					local bColor = BadgeColors[cType] or BadgeColors.new

					local Row = Create("Frame", ChangesList, {
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = "Y",
						BackgroundTransparency = 1
					})

					local Badge = Create("TextLabel", Row, {
						Size = UDim2.fromOffset(42, 12),
						Position = UDim2.new(0, 0, 0, 1),
						BackgroundColor3 = bColor,
						BackgroundTransparency = 0.2,
						Text = cType:upper(),
						Font = Enum.Font.GothamBold,
						TextSize = 7,
						TextColor3 = Color3.fromRGB(255, 255, 255)
					})
					Make("Corner", Badge, UDim.new(0, 3))

					InsertTheme(Create("TextLabel", Row, {
						Size = UDim2.new(1, -50, 0, 0),
						AutomaticSize = "Y",
						Position = UDim2.new(0, 48, 0, 0),
						BackgroundTransparency = 1,
						Text = cText,
						Font = Enum.Font.Gotham,
						TextSize = 9,
						TextXAlignment = "Left",
						TextWrapped = true,
						TextColor3 = Theme["Color Dark Text"]
					}), "DarkText")
				end
			end

			local Changelog = {}
			function Changelog:Visible(...) Funcs:ToggleVisible(Holder, ...) end
			function Changelog:Destroy() Holder:Destroy() end
			return Changelog
		end

		function Tab:AddReportBug(Configs)
			Configs = Configs or {}
			local RBTitle      = Configs[1] or Configs.Title or Configs.Name or "Reportar Bug"
			local RBWebhook    = Configs.Webhook or ""
			local RBCategories = Configs.Categories or {"Crash", "Visual", "Gameplay", "Outro"}
			local RBSysInfo    = Configs.IncludeSystemInfo ~= false
			local Callback     = Configs.Callback or function() end

			local Holder = InsertTheme(Create("Frame", Container, {
				Size = UDim2.new(1, 0, 0, 148),
				BackgroundColor3 = Theme["Color Hub 2"],
				Name = "Option",
				ClipsDescendants = false
			}), "Frame")
			Make("Corner", Holder)
			Make("Stroke", Holder)

			InsertTheme(Create("TextLabel", Holder, {
				Size = UDim2.new(1, -15, 0, 14),
				Position = UDim2.new(0, 10, 0, 7),
				BackgroundTransparency = 1,
				Text = "🐛  " .. RBTitle,
				Font = Enum.Font.FredokaOne,
				TextSize = 11,
				TextXAlignment = "Left",
				TextColor3 = Theme["Color Text"]
			}), "Text")

			local DescFrame = InsertTheme(Create("Frame", Holder, {
				Size = UDim2.new(1, -18, 0, 38),
				Position = UDim2.new(0, 9, 0, 26),
				BackgroundColor3 = Theme["Color Stroke"]
			}), "Stroke")
			Make("Corner", DescFrame, UDim.new(0, 5))

			local DescBox = InsertTheme(Create("TextBox", DescFrame, {
				Size = UDim2.new(1, -10, 1, 0),
				Position = UDim2.new(0, 5, 0, 0),
				BackgroundTransparency = 1,
				Font = Enum.Font.Gotham,
				TextSize = 9,
				TextXAlignment = "Left",
				TextYAlignment = "Top",
				TextWrapped = true,
				ClearTextOnFocus = false,
				PlaceholderText = "Descreva o bug com o máximo de detalhes...",
				Text = "",
				TextColor3 = Theme["Color Text"]
			}), "Text")

			InsertTheme(Create("TextLabel", Holder, {
				Size = UDim2.new(0, 60, 0, 12),
				Position = UDim2.new(0, 9, 0, 70),
				BackgroundTransparency = 1,
				Text = "Categoria:",
				Font = Enum.Font.GothamBold,
				TextSize = 8,
				TextXAlignment = "Left",
				TextColor3 = Theme["Color Dark Text"]
			}), "DarkText")

			local CatRow = Create("Frame", Holder, {
				Size = UDim2.new(1, -18, 0, 16),
				Position = UDim2.new(0, 9, 0, 84),
				BackgroundTransparency = 1
			})
			Create("UIListLayout", CatRow, {
				FillDirection = "Horizontal",
				Padding = UDim.new(0, 4),
				VerticalAlignment = "Center"
			})

			local selectedCategory = RBCategories[1]
			local CatBtns = {}

			local function SelectCategory(name)
				selectedCategory = name
				for _, cb in ipairs(CatBtns) do
					CreateTween({cb, "BackgroundTransparency", cb.Text == name and 0 or 0.6, 0.15})
				end
			end

			for _, cat in ipairs(RBCategories) do
				local cb = InsertTheme(Create("TextButton", CatRow, {
					Size = UDim2.new(0, 0, 1, 0),
					AutomaticSize = "X",
					BackgroundColor3 = Theme["Color Theme"],
					BackgroundTransparency = 0.6,
					Font = Enum.Font.GothamBold,
					TextSize = 8,
					Text = cat,
					TextColor3 = Theme["Color Text"],
					AutoButtonColor = false
				}), "Theme")
				Make("Corner", cb, UDim.new(0, 4))
				Create("UIPadding", cb, { PaddingLeft = UDim.new(0, 5), PaddingRight = UDim.new(0, 5) })
				table.insert(CatBtns, cb)
				cb.Activated:Connect(function() SelectCategory(cat) end)
			end
			SelectCategory(selectedCategory)

			local AlwaysRow = Create("Frame", Holder, {
				Size = UDim2.new(1, -18, 0, 12),
				Position = UDim2.new(0, 9, 0, 106),
				BackgroundTransparency = 1
			})

			local AlwaysCheck = InsertTheme(Create("Frame", AlwaysRow, {
				Size = UDim2.fromOffset(10, 10),
				Position = UDim2.new(0, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Theme["Color Stroke"]
			}), "Stroke")
			Make("Corner", AlwaysCheck, UDim.new(0, 3))
			Make("Stroke", AlwaysCheck)

			local AlwaysTick = InsertTheme(Create("Frame", AlwaysCheck, {
				Size = UDim2.fromOffset(6, 6),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = Theme["Color Theme"],
				BackgroundTransparency = 1
			}), "Theme")
			Make("Corner", AlwaysTick, UDim.new(0.5, 0))

			InsertTheme(Create("TextLabel", AlwaysRow, {
				Size = UDim2.new(1, -16, 1, 0),
				Position = UDim2.new(0, 15, 0, 0),
				BackgroundTransparency = 1,
				Text = "Este bug acontece sempre?",
				Font = Enum.Font.Gotham,
				TextSize = 8,
				TextXAlignment = "Left",
				TextColor3 = Theme["Color Dark Text"]
			}), "DarkText")

			local alwaysHappens = false
			local AlwaysBtn = Create("TextButton", AlwaysRow, {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = ""
			})
			AlwaysBtn.Activated:Connect(function()
				alwaysHappens = not alwaysHappens
				CreateTween({AlwaysTick, "BackgroundTransparency", alwaysHappens and 0 or 1, 0.15})
			end)

			local SendBtn = InsertTheme(Create("TextButton", Holder, {
				Size = UDim2.new(1, -18, 0, 16),
				Position = UDim2.new(0, 9, 0, 126),
				BackgroundColor3 = Theme["Color Theme"],
				Font = Enum.Font.GothamBold,
				TextSize = 9,
				Text = "Enviar Report",
				TextColor3 = Theme["Color Text"],
				AutoButtonColor = false
			}), "Theme")
			Make("Corner", SendBtn, UDim.new(0, 5))

			SendBtn.MouseEnter:Connect(function() CreateTween({SendBtn, "BackgroundTransparency", 0.3, 0.15}) end)
			SendBtn.MouseLeave:Connect(function() CreateTween({SendBtn, "BackgroundTransparency", 0, 0.15}) end)

			SendBtn.Activated:Connect(function()
				local desc = DescBox.Text
				if desc:gsub(" ", ""):len() < 5 then
					SendBtn.Text = "Descreva melhor o bug!"
					task.wait(2)
					SendBtn.Text = "Enviar Report"
					return
				end
				local sysInfo = {}
				if RBSysInfo then
					local lp = Players.LocalPlayer
					sysInfo = {
						ScriptVersion = brutonlib.Info and brutonlib.Info.Version or "?",
						JobId = game.JobId,
						PlaceId = game.PlaceId,
						Ping = lp and math.floor(lp.NetworkPing * 1000) .. "ms" or "N/A",
						Players = #Players:GetPlayers()
					}
				end
				local payload = {
					category = selectedCategory,
					description = desc,
					alwaysHappens = alwaysHappens,
					systemInfo = sysInfo
				}
				SendBtn.Text = "Enviando..."
				if RBWebhook ~= "" and HttpService then
					pcall(function()
						HttpService:PostAsync(
							RBWebhook,
							HttpService:JSONEncode({
								embeds = {{
									title = "🐛 Bug Report — " .. selectedCategory,
									description = desc,
									color = 15158332,
									fields = {
										{ name = "Acontece sempre?", value = tostring(alwaysHappens), inline = true },
										{ name = "Versão", value = tostring(sysInfo.ScriptVersion), inline = true },
										{ name = "JobId", value = tostring(game.JobId), inline = false }
									}
								}}
							}),
							Enum.HttpContentType.ApplicationJson
						)
					end)
				end
				task.spawn(Callback, payload)
				SendBtn.Text = "Report Enviado ✓"
				SendBtn.BackgroundColor3 = Color3.fromRGB(67, 181, 129)
				task.wait(3)
				if SendBtn and SendBtn.Parent then
					SendBtn.Text = "Enviar Report"
					SendBtn.BackgroundColor3 = Theme["Color Theme"]
					DescBox.Text = ""
					alwaysHappens = false
					CreateTween({AlwaysTick, "BackgroundTransparency", 1, 0.15})
					SelectCategory(RBCategories[1])
				end
			end)

			local ReportBug = {}
			function ReportBug:Visible(...) Funcs:ToggleVisible(Holder, ...) end
			function ReportBug:Destroy() Holder:Destroy() end
			return ReportBug
		end

		return Tab
	end

	do
		local SettingsTab = Window:MakeTab({"الاعدادات", "settings", IsSettings = true})
		SettingsTab:Visible(false)

		local Cont = SettingsTab.Cont

		Cont:GetPropertyChangedSignal("Parent"):Connect(function()
			local open = Cont.Parent ~= nil
			CreateTween({SettingButton, "Rotation", open and 180 or 0, 0.3})
			SettingButton.ImageColor3 = open and Theme["Color Theme"] or Theme["Color Dark Text"]
		end)

		SettingButton.MouseButton1Click:Connect(function()
			if Cont.Parent then
				if Window.LastTab then
					Window.LastTab:Enable()
				else
					Cont.Parent = nil
				end
			else
				SettingsTab:Enable()
			end
		end)

		SettingsTab:AddSection({Name = "حجم الواجهة"})

		local uiSizeMode = "متوسط"
		local customUIsize = (brutonlib.Save.UISize and brutonlib.Save.UISize[1]) or 600

		SettingsTab:AddDropdown({
			Name = "حجم الواجهة",
			Options = {"صغير", "متوسط", "كبير", "مخصص"},
			Default = "متوسط",
			Flag = "UISize",
			Callback = function(v)
				uiSizeMode = v
				if v == "صغير" then
					brutonlib:SetScale(700)
				elseif v == "متوسط" then
					brutonlib:SetScale(420)
				elseif v == "كبير" then
					brutonlib:SetScale(300)
				elseif v == "مخصص" then
					brutonlib:SetScale(customUIsize)
				end
			end
		})

		SettingsTab:AddSlider({
			Name = "خصص الحجم الي تريده",
			Min = 300,
			Max = 800,
			Increase = 5,
			Default = customUIsize,
			Flag = "CustomUISize",
			Callback = function(value)
				customUIsize = value
				if uiSizeMode == "مخصص" then
					brutonlib:SetScale(customUIsize)
				end
			end
		})

		SettingsTab:AddSlider({
			Name = "حجم التابات",
			Min = 135,
			Max = 250,
			Increase = 5,
			Default = brutonlib.Save.TabSize or 169,
			Flag = "TabSize",
			Callback = function(value)
				MainScroll.Size = UDim2.new(0, value, 1, -TopBar.Size.Y.Offset)
				Containers.Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -TopBar.Size.Y.Offset)
				brutonlib.Save.TabSize = value
				SaveJson("BRUTON library V5.json", brutonlib.Save)
			end
		})

		SettingsTab:AddSection({Name = "الخلفية"})

		local GlowStroke = Make("Stroke", MainFrame, {
			Thickness = 2,
			Color = Color3.fromRGB(57, 255, 106),
			Transparency = 0,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
		})

		local GlowGradient = Instance.new("UIGradient")
		GlowGradient.Color = ColorSequence.new{
			ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 60, 25)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 255, 180)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 60, 25))
		}
		GlowGradient.Rotation = 0
		GlowGradient.Parent = GlowStroke

		local glowSpeed = 50
		local glowColorEnabled = true

		RunService.Heartbeat:Connect(function(dt)
			if GlowGradient and glowColorEnabled then
				GlowGradient.Rotation = (GlowGradient.Rotation + glowSpeed * dt) % 360
			end
		end)

		SettingsTab:AddToggle({
			Name = "إيقاف تلوين الحواف",
			Desc = "",
			Default = false,
			Flag = "StopEdgeColoring",
			Callback = function(enabled)
				glowColorEnabled = not enabled
				if enabled then
					GlowGradient.Color = ColorSequence.new(Color3.fromRGB(57, 255, 106))
				else
					GlowGradient.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 60, 25)),
						ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 255, 180)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 60, 25))
					}
				end
			end
		})

--[[		SettingsTab:AddSection({Name = "الألوان"})

		SettingsTab:AddColorPicker({
			Name = "لون الثيم",
			Desc = "",
			Default = Theme["Color Theme"],
			Flag = "MainThemeColor",
			Callback = function(NewColor)
				Theme["Color Theme"] = NewColor
				Theme["Color Edge"] = NewColor
				Theme["Color Heading"] = NewColor
				Theme["Color Bubble"] = NewColor
				Theme["Color Dark Purple"] = NewColor
				Theme["Color Dark Greem"] = NewColor
				brutonlib:SetTheme(brutonlib.Save.Theme)
			end
		})
	end
]] 
	CloseButton.Activated:Connect(Window.CloseBtn)
	MinimizeButton.Activated:Connect(Window.MinimizeBtn)

	Window:SetBackground("Particles")

	return Window
end

return brutonlib
