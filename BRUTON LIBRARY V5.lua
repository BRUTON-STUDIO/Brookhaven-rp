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
		BRUTON = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15, 0, 0)),
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(35, 5, 5)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(15, 0, 0))
			}),
			["Color Hub 2"] = Color3.fromRGB(20, 5, 5),
			["Color Stroke"] = Color3.fromRGB(120, 10, 10),
			["Color Edge"] = Color3.fromRGB(255, 30, 30),
			["Color Theme"] = Color3.fromRGB(255, 40, 40),
			["Color Heading"] = Color3.fromRGB(255, 50, 50),
			["Color Text"] = Color3.fromRGB(255, 255, 255),
			["Color Dark Text"] = Color3.fromRGB(200, 180, 180),
			["Color Bubble"] = Color3.fromRGB(255, 30, 30)
		}
	},
	Info = {
		Version = "5.0.0"
	},
	Save = {
		UISize = {560, 380},
		TabSize = 130,
		Theme = "BRUTON"
	},
	Settings = {},
	Connection = {},
	Instances = {},
	Elements = {},
	Options = {},
	Flags = {},
	FlagsEnabled = true,
	Tabs = {},
	Icons = {}
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

	local function VerifyTheme(Theme)
		for name,_ in pairs(brutonlib.Themes) do
			if name == Theme then
				return true
			end
		end
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

	pcall(Save, "BRUTON library v5.json")
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

	function Funcs:ToggleParent(Obj, State, ParentTarget)
		if State then
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
		if Connection then
			for _,Func in pairs(Connection) do
				task.spawn(Func, ...)
			end
		end
	end

	NewConnectionList({"FlagsChanged", "ThemeChanged", "FileSaved", "ThemeChanging", "OptionAdded"})
end

local GetFlag, SetFlag, CheckFlag do
	CheckFlag = function(Name)
		return brutonlib.FlagsEnabled and type(Name) == "string" and Flags[Name] ~= nil
	end

	GetFlag = function(Name)
		return brutonlib.FlagsEnabled and type(Name) == "string" and Flags[Name]
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
	Name = "BRUTON library v5",
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

local function AddTextShine(Label, BaseColor, SweepTime, GapTime)
	local Shine = Create("UIGradient", Label, {
		Rotation = 15,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0.00, BaseColor),
			ColorSequenceKeypoint.new(0.42, BaseColor),
			ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 255, 255)),
			ColorSequenceKeypoint.new(0.58, BaseColor),
			ColorSequenceKeypoint.new(1.00, BaseColor)
		}),
		Offset = Vector2.new(-1.5, 0)
	})

	task.spawn(function()
		while Label and Label.Parent do
			Shine.Offset = Vector2.new(-1.5, 0)
			CreateTween({Shine, "Offset", Vector2.new(1.5, 0), SweepTime or 1.3})
			task.wait((SweepTime or 1.3) + (GapTime or 2.2))
		end
	end)

	return Shine
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

local Theme = brutonlib.Themes[brutonlib.Save.Theme] or brutonlib.Themes["BRUTON"]

local function AddEle(Name, Func)
	brutonlib.Elements[Name] = Func
end

local function Make(Ele, Instance, props, ...)
	local Element = brutonlib.Elements[Ele](Instance, props, ...)
	return Element
end

AddEle("Corner", function(parent, CornerRadius)
	local New = Create("UICorner", parent, {
		CornerRadius = CornerRadius or UDim.new(0, 7)
	})
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
	local New = InsertTheme(SetProps(Create("UIGradient", parent, {
		Color = Theme["Color Hub 1"]
	}), props), "Gradient")
	return New
end)

local ElementEdgeStrokes = {}
local ElementEdgesEnabled = true

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
	local EdgeStroke = InsertTheme(Create("UIStroke", Frame, {
		Color = Theme["Color Edge"],
		Thickness = 1,
		Transparency = ElementEdgesEnabled and 0 or 1,
		ApplyStrokeMode = "Border"
	}), "Edge")
	table.insert(ElementEdgeStrokes, EdgeStroke)

	local LabelHolder = Create("Frame", Frame, {
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

	for Name, Icon in pairs(self.Icons) do
		Name = string.lower(Name):gsub("lucide", ""):gsub("-", "")
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
	SaveJson("BRUTON library v5.json", brutonlib.Save)
	Theme = brutonlib.Themes[NewTheme]

	Connection:FireConnection("ThemeChanged", NewTheme)
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

		task.spawn(function()
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
	local WTitle = Configs[1] or Configs.Name or Configs.Title or "BRUTON library v5"
	local WMiniText = Configs[2] or Configs.SubTitle or "by : BRUTON"

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
		BackgroundColor3 = Color3.fromRGB(15, 5, 5),
		BackgroundTransparency = 0.55,
		Name = "Hub"
	}), "Main")

	local WindowBackground = Create("Frame", MainFrame, {
		Name = "WindowBackground",
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = Color3.fromRGB(10, 2, 2),
		BackgroundTransparency = 1,
		ZIndex = 0
	})

	Make("Corner", WindowBackground)

	Make("Gradient", MainFrame, {
		Rotation = 45,
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0.00, 0.15),
			NumberSequenceKeypoint.new(0.50, 0.55),
			NumberSequenceKeypoint.new(1.00, 0.15)
		})
	})MakeDrag(MainFrame)
	local MainCorner = Make("Corner", MainFrame, UDim.new(0, 18))

	local GlassShine = Create("Frame", MainFrame, {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 50
	})
	Make("Corner", GlassShine, UDim.new(0, 18))
	local GlassShineGradient = Create("UIGradient", GlassShine, {
		Rotation = 35,
		Color = ColorSequence.new(Color3.fromRGB(255, 255, 255)),
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0.00, 1),
			NumberSequenceKeypoint.new(0.42, 1),
			NumberSequenceKeypoint.new(0.50, 0.55),
			NumberSequenceKeypoint.new(0.58, 1),
			NumberSequenceKeypoint.new(1.00, 1)
		}),
		Offset = Vector2.new(-1.4, 0)
	})
	task.spawn(function()
		while GlassShine and GlassShine.Parent do
			GlassShineGradient.Offset = Vector2.new(-1.4, 0)
			CreateTween({GlassShineGradient, "Offset", Vector2.new(1.4, 0), 1.6})
			task.wait(3.4)
		end
	end)

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
		TextSize = 16,
		TextColor3 = Theme["Color Heading"] or Theme["Color Theme"],
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
			TextColor3 = Theme["Color Dark Text"],
			BackgroundTransparency = 1,
			TextXAlignment = "Left",
			TextYAlignment = "Bottom",
			TextSize = 9,
			Font = Enum.Font.Gotham,
			Name = "SubTitle"
		}), "DarkText")
	}), "Heading")
	AddTextShine(Title, Theme["Color Heading"] or Theme["Color Theme"], 1.3, 2.2)

	Title.TextStrokeColor3 = Theme["Color Heading"] or Theme["Color Theme"]
	Title.TextStrokeTransparency = 0.55
	task.spawn(function()
		local t = 0
		while Title and Title.Parent do
			t = t + task.wait(0.03)
			Title.TextStrokeTransparency = 0.55 + math.sin(t * 2.4) * 0.25
		end
	end)

	local SidebarHeader = Create("Frame", Components, {
		Size = UDim2.new(0, brutonlib.Save.TabSize, 0, 20),
		Position = UDim2.new(0, 0, 0, TopBar.Size.Y.Offset),
		BackgroundTransparency = 1,
		Name = "Sidebar Header"
	})

	local MainScroll = InsertTheme(Create("ScrollingFrame", Components, {
		Size = UDim2.new(0, brutonlib.Save.TabSize, 1, -TopBar.Size.Y.Offset - 20),
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

	local ParticleContainer = Create("Frame", MainFrame, {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Name = "StarsBackground",
		ZIndex = 0,
		ClipsDescendants = true
	})

	local ParticleConfig = {
		MaxParticles = 40,
		SpawnRate = 0.08,
		ParticleSize = {Min = 4, Max = 10},
		ParticleSpeed = {Min = 10, Max = 30},
		ParticleLifetime = 7
	}

	local ActiveParticles = {}
	local LastSpawn = 0
	local StarIcon = "rbxassetid://10734966248"

	local function CreateStarParticle()
		if #ActiveParticles >= ParticleConfig.MaxParticles then return end

		local containerSize = ParticleContainer.AbsoluteSize
		if containerSize.X <= 0 or containerSize.Y <= 0 then return end

		local startX = math.random(10, math.max(11, containerSize.X - 10))
		local startY = containerSize.Y + 15

		local size = math.random(ParticleConfig.ParticleSize.Min, ParticleConfig.ParticleSize.Max)
		local speed = math.random(ParticleConfig.ParticleSpeed.Min, ParticleConfig.ParticleSpeed.Max)

		local particleColor = Theme["Color Bubble"] or Theme["Color Theme"] or Color3.fromRGB(255, 30, 30)
		local bodyTransparency = math.random(10, 35) / 100

		local Glow = Create("ImageLabel", ParticleContainer, {
			Size = UDim2.fromOffset(size * 2.2, size * 2.2),
			Position = UDim2.fromOffset(startX, startY),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Image = StarIcon,
			ImageColor3 = particleColor,
			ImageTransparency = 1,
			ScaleType = Enum.ScaleType.Fit,
			ZIndex = 1
		})

		local Particle = Create("ImageLabel", ParticleContainer, {
			Size = UDim2.fromOffset(size, size),
			Position = UDim2.fromOffset(startX, startY),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Image = StarIcon,
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			ImageTransparency = 1,
			ScaleType = Enum.ScaleType.Fit,
			ZIndex = 2
		})

		local ParticleData = {
			Frame = Particle,
			Glow = Glow,
			StartTime = tick(),
			Speed = speed,
			Direction = Vector2.new(0, -speed),
			OriginalColor = particleColor,
			BaseTransparency = bodyTransparency,
			WobbleSeed = math.random() * 1000,
			WobbleAmp = math.random(3, 8),
			TwinkleSeed = math.random() * 1000,
			StartX = startX
		}

		CreateTween({Particle, "ImageTransparency", bodyTransparency, 0.8})
		CreateTween({Glow, "ImageTransparency", 0.5, 0.8})

		table.insert(ActiveParticles, ParticleData)
	end

	local function UpdateStarParticles()
		for i = #ActiveParticles, 1, -1 do
			local particle = ActiveParticles[i]
			local elapsed = tick() - particle.StartTime
			if elapsed >= ParticleConfig.ParticleLifetime or particle.Frame.Position.Y.Offset < -20 then

				CreateTween({particle.Frame, "ImageTransparency", 1, 0.4})
				CreateTween({particle.Glow, "ImageTransparency", 1, 0.4})

				task.spawn(function()
					task.wait(0.4)
					if particle.Frame and particle.Frame.Parent then
						particle.Frame:Destroy()
					end
					if particle.Glow and particle.Glow.Parent then
						particle.Glow:Destroy()
					end
				end)

				table.remove(ActiveParticles, i)
			else
				local currentPos = particle.Frame.Position
				local newY = currentPos.Y.Offset + particle.Direction.Y * 0.016
				local wobble = math.sin((elapsed * 1.5) + (particle.WobbleSeed or 0)) * (particle.WobbleAmp or 5)
				local newX = (particle.StartX or currentPos.X.Offset) + wobble

				particle.Frame.Position = UDim2.fromOffset(newX, newY)
				particle.Glow.Position = UDim2.fromOffset(newX, newY)

				local twinkle = 0.5 + math.sin((elapsed * 4) + (particle.TwinkleSeed or 0)) * 0.5
				local baseT = particle.BaseTransparency or 0.3
				particle.Frame.ImageTransparency = baseT + (1 - baseT) * (1 - twinkle) * 0.6
				particle.Glow.ImageTransparency = 0.4 + (1 - twinkle) * 0.35

				local lifeRatio = elapsed / ParticleConfig.ParticleLifetime
				if lifeRatio > 0.8 then
					local fadeOut = (lifeRatio - 0.8) / 0.2
					particle.Frame.ImageTransparency = particle.Frame.ImageTransparency + (1 - particle.Frame.ImageTransparency) * fadeOut
					particle.Glow.ImageTransparency = particle.Glow.ImageTransparency + (1 - particle.Glow.ImageTransparency) * fadeOut
				end
			end
		end
	end

	local function SpawnStarSystem()
		if tick() - LastSpawn >= ParticleConfig.SpawnRate and MainFrame.Visible then
			CreateStarParticle()
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
			if p.Glow and p.Glow.Parent then
				p.Glow:Destroy()
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
				UpdateStarParticles()
				SpawnStarSystem()
			end)
		end
	end

	StartParticles()

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

		MainScroll.Size = UDim2.new(0, ControlSize2.Position.X.Offset, 1, -TopBar.Size.Y.Offset - 20)
		SidebarHeader.Size = UDim2.new(0, ControlSize2.Position.X.Offset, 0, 20)
		Containers.Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -TopBar.Size.Y.Offset)
		MainFrame.Size = ControlSize1.Position
	end

	ControlSize1:GetPropertyChangedSignal("Position"):Connect(ControlSize)
	ControlSize2:GetPropertyChangedSignal("Position"):Connect(ControlSize)

	ConnectSave(ControlSize1, function()
		if not Minimized then
			brutonlib.Save.UISize = {MainFrame.Size.X.Offset, MainFrame.Size.Y.Offset}
			SaveJson("BRUTON library v5.json", brutonlib.Save)
		end
	end)

	ConnectSave(ControlSize2, function()
		brutonlib.Save.TabSize = MainScroll.Size.X.Offset
		SaveJson("BRUTON library v5.json", brutonlib.Save)
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
		Window:Dialog({
			Title = "Close",
			Text = "Are you sure you want to close the window?",
			Options = {
				{"Confirm", function()
					ScreenGui:Destroy()
				end},
				{"Cancel"}
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

	CloseButton.Activated:Connect(function() Window:CloseBtn() end)
	MinimizeButton.Activated:Connect(function() Window:MinimizeBtn() end)

	function Window:SetBackground(mode, configs)
		if mode == "Particles" then
			StartParticles()
		elseif mode == "None" then
			StopParticles()
		end
	end

	function Window:AddMinimizeButton(Configs)
		local Button = MakeDrag(Create("ImageButton", ScreenGui, {
			Size = UDim2.fromOffset(60, 60),
			Position = UDim2.fromScale(0.15, 0.15),
			BackgroundColor3 = Theme["Color Hub 2"],
			BackgroundTransparency = 0.15,
			AutoButtonColor = false
		}))

		local Corner = Make("Corner", Button, UDim.new(0, 14))
		local Stroke = Make("Stroke", Button)

		if Configs and Configs.Stroke then
			SetProps(Stroke, Configs.Stroke)
		end

		if Configs and Configs.Button then
			SetProps(Button, Configs.Button)
		end

		local OriginalSize = Button.Size

		Button.MouseEnter:Connect(function()
			CreateTween({Button, "BackgroundTransparency", 0, 0.2})
			CreateTween({Button, "Size", OriginalSize + UDim2.fromOffset(4, 4), 0.2})
		end)

		Button.MouseLeave:Connect(function()
			CreateTween({Button, "BackgroundTransparency", 0.15, 0.2})
			CreateTween({Button, "Size", OriginalSize, 0.2})
		end)

		Button.MouseButton1Down:Connect(function()
			CreateTween({Button, "Size", OriginalSize - UDim2.fromOffset(4, 4), 0.1})
		end)

		Button.MouseButton1Up:Connect(function()
			CreateTween({Button, "Size", OriginalSize, 0.15})
		end)

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
			BackgroundColor3 = Theme["Color Stroke"],
			Size = UDim2.new(1, 0, 1, 0),
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

			for _,Btn in pairs(ButtonsHolder:GetChildren()) do
				if Btn:IsA("TextButton") then
					Btn.Size = UDim2.new(1 / ButtonCount, -(((ButtonCount - 1) * 20) / ButtonCount), 0, 32)
				end
			end
			Button.Activated:Connect(function()
				Dialog:Close()
				Callback()
			end)
		end

		function Dialog:Close()
			CreateTween({Frame, "Size", UDim2.fromOffset(250 * 1.08, 150 * 1.08), 0.2})
			CreateTween({Screen, "Transparency", 1, 0.15})
			CreateTween({Frame, "Transparency", 1, 0.15, true})
			Screen:Destroy()
		end

		table.foreach(DOptions, function(_,Btn)
			Dialog:Button(Btn)
		end)
		return Dialog
	end

	function Window:SelectTab(TabSelect)
		if type(TabSelect) == "number" then
			if brutonlib.Tabs[TabSelect] then
				brutonlib.Tabs[TabSelect].func:Enable()
			end
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
		local TDesc = Configs.Desc or Configs.Description or ""

		TIcon = brutonlib:GetIcon(TIcon)
		if type(TIcon) ~= "string" or not TIcon:find("rbxassetid://") or TIcon:gsub("rbxassetid://", ""):len() < 6 then
			TIcon = false
		end

		local TabSelect = Make("Button", MainScroll, {
			Size = UDim2.new(1, 0, 0, 55),
			ClipsDescendants = true,
			Name = "Option"
		})
		Make("Corner", TabSelect, UDim.new(0, 8))

		local TabStroke = InsertTheme(Create("UIStroke", TabSelect, {
			Color = Theme["Color Edge"],
			Thickness = 1,
			Transparency = FirstTab and 0.6 or 0.1,
			ApplyStrokeMode = "Border"
		}), "Edge")

		local TabBanner = InsertTheme(Create("ImageLabel", TabSelect, {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = "rbxassetid://125411502674016",
			ImageColor3 = Theme["Color Theme"],
			ImageTransparency = (FirstTab and 0.94) or 0.88,
			ScaleType = Enum.ScaleType.Crop,
			Name = "Banner"
		}), "Theme")
		Make("Corner", TabBanner, UDim.new(0, 8))

		local TabInfo = Create("Frame", TabSelect, {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Name = "Info"
		}, {
			Create("UIListLayout", {
				FillDirection = "Horizontal",
				VerticalAlignment = "Center",
				Padding = UDim.new(0, 10),
				SortOrder = "LayoutOrder"
			}),
			Create("UIPadding", {
				PaddingLeft = UDim.new(0, 14),
				PaddingRight = UDim.new(0, 10)
			})
		})

		local LabelIcon = InsertTheme(Create("ImageLabel", TabInfo, {
			Size = UDim2.new(0, 22, 0, 22),
			LayoutOrder = -1,
			BackgroundTransparency = 1,
			Image = TIcon or "",
			ImageTransparency = (FirstTab and 0.35) or 0,
			ImageColor3 = Theme["Color Theme"]
		}), "Theme")

		local TextHolder = Create("Frame", TabInfo, {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -32, 1, 0),
			AutomaticSize = "Y"
		}, {
			Create("UIListLayout", {
				SortOrder = "LayoutOrder",
				VerticalAlignment = "Center",
				Padding = UDim.new(0, 2)
			})
		})

		local LabelTitle = InsertTheme(Create("TextLabel", TextHolder, {
			Size = UDim2.new(1, 0, 0, 16),
			AutomaticSize = "Y",
			BackgroundTransparency = 1,
			Font = Enum.Font.FredokaOne,
			Text = TName,
			TextColor3 = Theme["Color Theme"],
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTransparency = (FirstTab and 0.35) or 0
		}), "Theme")

		local LabelDesc = InsertTheme(Create("TextLabel", TextHolder, {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = "Y",
			BackgroundTransparency = 1,
			Font = Enum.Font.Gotham,
			Text = TDesc,
			TextColor3 = Theme["Color Dark Text"],
			TextSize = 9,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			Visible = TDesc ~= "",
			TextTransparency = (FirstTab and 0.35) or 0
		}), "DarkText")

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

		if not FirstTab then Container.Parent = Containers end

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
			CreateTween({LabelDesc, "TextTransparency", 0, 0.35})
			CreateTween({LabelIcon, "ImageTransparency", 0, 0.35})
			CreateTween({TabStroke, "Transparency", 0.1, 0.35})
			CreateTween({TabBanner, "ImageTransparency", 0.88, 0.35})
		end
		TabSelect.Activated:Connect(Tabs)

		FirstTab = true
		local Tab = {}
		table.insert(brutonlib.Tabs, {TabInfo = {Name = TName, Icon = TIcon}, func = Tab, Cont = Container})
		Tab.Cont = Container

		function Tab:Disable()
			Container.Parent = nil
			CreateTween({LabelTitle, "TextTransparency", 0.35, 0.35})
			CreateTween({LabelDesc, "TextTransparency", 0.35, 0.35})
			CreateTween({LabelIcon, "ImageTransparency", 0.35, 0.35})
			CreateTween({TabStroke, "Transparency", 0.6, 0.35})
			CreateTween({TabBanner, "ImageTransparency", 0.94, 0.35})
		end

		function Tab:Enable()
			Tabs()
		end

		function Tab:Visible(Bool)
			Funcs:ToggleVisible(TabSelect, Bool)
			Funcs:ToggleParent(Container, Bool, Containers)
		end

		function Tab:Destroy()
			TabSelect:Destroy()
			Container:Destroy()
		end

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
				TextColor3 = Theme["Color Heading"] or Theme["Color Theme"],
				Size = UDim2.new(1, -25, 1, 0),
				Position = UDim2.new(0, 10, 0, 0),
				BackgroundTransparency = 1,
				TextTruncate = "AtEnd",
				TextSize = 11,
				TextXAlignment = "Left"
			}), "Heading")
			AddTextShine(SectionLabel, Theme["Color Heading"] or Theme["Color Theme"], 1.3, 2.6)

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
				Image = "rbxassetid://10723405649"
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
					CreateTween({Toggle, "AnchorPoint", Vector2.new(1, 0.5), 0.25})
				else
					CreateTween({Toggle, "Position", UDim2.new(0, 0, 0.5), 0.25})
					CreateTween({Toggle, "BackgroundTransparency", 0.8, 0.25})
					CreateTween({Toggle, "AnchorPoint", Vector2.new(0, 0.5), 0.25})
				end
				WaitClick = false
			end;task.spawn(SetToggle, Default)

			Button.Activated:Connect(function()
				SetToggle(not Default)
			end)

			local ToggleObj = {}
			function ToggleObj:Visible(...) Funcs:ToggleVisible(Button, ...) end
			function ToggleObj:Destroy() Button:Destroy() end
			function ToggleObj:Callback(...) Funcs:InsertCallback(Callback, ...)() end
			function ToggleObj:Set(Val1, Val2)
				if type(Val1) == "string" and type(Val2) == "string" then
					LabelFunc:SetTitle(Val1)
					LabelFunc:SetDesc(Val2)
				elseif type(Val1) == "string" then
					LabelFunc:SetTitle(Val1)
				elseif type(Val1) == "boolean" then
					if WaitClick and Val2 then
						repeat task.wait() until not WaitClick
					end
					task.spawn(SetToggle, Val1)
				elseif type(Val1) == "function" then
					Callback = Val1
				end
			end
			return ToggleObj
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
				BackgroundColor3 = Color3.fromRGB(25, 10, 10),
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

					local OptionBtn = Make("Button", ScrollFrame, {
						Name = "Option",
						Size = UDim2.new(1, 0, 0, 21),
						Position = UDim2.new(0, 0, 0.5),
						AnchorPoint = Vector2.new(0, 0.5)
					})Make("Corner", OptionBtn, UDim.new(0, 4))

					local IsSelected = InsertTheme(Create("Frame", OptionBtn, {
						Position = UDim2.new(0, 1, 0.5),
						Size = UDim2.new(0, 4, 0, 4),
						BackgroundColor3 = Theme["Color Theme"],
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(0, 0.5)
					}), "Theme")Make("Corner", IsSelected, UDim.new(0.5, 0))

					local OptioneName = InsertTheme(Create("TextLabel", OptionBtn, {
						Size = UDim2.new(1, 0, 1),
						Position = UDim2.new(0, 10),
						Text = Name,
						TextColor3 = Theme["Color Text"],
						Font = Enum.Font.FredokaOne,
						TextXAlignment = "Left",
						BackgroundTransparency = 1,
						TextTransparency = 0.4
					}), "Text")

					OptionBtn.Activated:Connect(function()
						Select(Options[Name])
					end)

					Options[Name].nodes = {OptionBtn, IsSelected, OptioneName}
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
					table.foreach(NewOptions[1], function(_,Name)
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
					if type(Option) == "number" and index == Option or Value.Name == Option then
						RemoveOption(index, Value.Value)
					end
				end
			end

			function Dropdown:Select(Option)
				local opts = GetOptions()
				if type(Option) == "string" and opts[Option] then
					opts[Option].nodes[1].Activated:Fire()
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
			local Default = Configs[2] or Configs.Default or Color3.fromRGB(255, 40, 40)
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
				BackgroundColor3 = Color3.fromRGB(25, 10, 10),
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
			local SName = Configs[1] or Configs.Name or Configs.Title or "Slider"
			local SDesc = Configs.Desc or Configs.Description or ""
			local Min = Configs[2] or Configs.Min or Configs.MinValue or 0
			local Max = Configs[3] or Configs.Max or Configs.MaxValue or 100
			local Increase = Configs[4] or Configs.Increase or Configs.Step or 1
			local Default = Configs[5] or Configs.Default or Min
			local Callback = Funcs:GetCallback(Configs, 6)
			local Flag = Configs[7] or Configs.Flag or false

			if CheckFlag(Flag) then Default = GetFlag(Flag) end

			local Button, LabelFunc = ButtonFrame(Container, SName, SDesc, UDim2.new(1, -170))

			local SliderHolder = Create("Frame", Button, {
				Size = UDim2.new(0, 150, 0, 18),
				Position = UDim2.new(1, -10, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1
			})

			local Track = InsertTheme(Create("Frame", SliderHolder, {
				Size = UDim2.new(1, 0, 0, 6),
				Position = UDim2.new(0, 0, 0.5),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Theme["Color Stroke"]
			}), "Stroke")Make("Corner", Track, UDim.new(0.5, 0))

			local Fill = InsertTheme(Create("Frame", Track, {
				Size = UDim2.new(0, 0, 1, 0),
				BackgroundColor3 = Theme["Color Theme"]
			}), "Theme")Make("Corner", Fill, UDim.new(0.5, 0))

			local ValueBox = InsertTheme(Create("TextBox", SliderHolder, {
				Size = UDim2.new(0, 40, 0, 16),
				Position = UDim2.new(1, 5, 0.5),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Font = Enum.Font.GothamBold,
				TextColor3 = Theme["Color Text"],
				TextSize = 10,
				Text = tostring(Default),
				ClearTextOnFocus = false
			}), "Text")

			local function UpdateSlider(Val)
				Val = math.clamp(Val, Min, Max)
				Val = math.floor((Val - Min) / Increase + 0.5) * Increase + Min
				Val = math.clamp(Val, Min, Max)

				local Percent = (Val - Min) / (Max - Min)
				Fill.Size = UDim2.new(Percent, 0, 1, 0)
				ValueBox.Text = tostring(Val)

				SetFlag(Flag, Val)
				Funcs:FireCallback(Callback, Val)
			end

			local Dragging = false
			SliderHolder.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					Dragging = true
					Container.ScrollingEnabled = false
					local Mouse = Player:GetMouse()
					local RelX = (Mouse.X - Track.AbsolutePosition.X) / Track.AbsoluteSize.X
					local Val = Min + (Max - Min) * math.clamp(RelX, 0, 1)
					UpdateSlider(Val)
				end
			end)

			UserInputService.InputChanged:Connect(function(Input)
				if Dragging and (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
					local Mouse = Player:GetMouse()
					local RelX = (Mouse.X - Track.AbsolutePosition.X) / Track.AbsoluteSize.X
					local Val = Min + (Max - Min) * math.clamp(RelX, 0, 1)
					UpdateSlider(Val)
				end
			end)

			UserInputService.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					Dragging = false
					Container.ScrollingEnabled = true
				end
			end)

			ValueBox.FocusLost:Connect(function()
				local Num = tonumber(ValueBox.Text)
				if Num then
					UpdateSlider(Num)
				else
					ValueBox.Text = tostring(GetFlag(Flag) or Default)
				end
			end)

			UpdateSlider(Default)

			local SliderObj = {}
			function SliderObj:Visible(...) Funcs:ToggleVisible(Button, ...) end
			function SliderObj:Destroy() Button:Destroy() end
			function SliderObj:Callback(...) Funcs:InsertCallback(Callback, ...) end
			function SliderObj:Set(NewVal)
				if type(NewVal) == "number" then
					UpdateSlider(NewVal)
				end
			end

			return SliderObj
		end

		return Tab
	end

	local SettingsTab = Window:MakeTab({"Settings", "settings", Desc = "Library Configuration"})

	SettingsTab:AddSection("Library Customization")

	local ThemesList = {}
	for ThemeName, _ in pairs(brutonlib.Themes) do
		table.insert(ThemesList, ThemeName)
	end

	SettingsTab:AddDropdown({
		"Theme Selector",
		"Choose interface theme",
		ThemesList,
		{brutonlib.Save.Theme},
		function(SelectedTheme)
			brutonlib:SetTheme(SelectedTheme)
		end
	})

	SettingsTab:AddColorPicker({
		"Accent Color",
		"Change primary UI theme accent",
		Theme["Color Theme"],
		"CustomAccentColor",
		function(NewColor)
			Theme["Color Theme"] = NewColor
			Theme["Color Heading"] = NewColor
			Theme["Color Edge"] = NewColor
			Theme["Color Bubble"] = NewColor
			brutonlib:SetTheme(brutonlib.Save.Theme)
		end
	})

	SettingsTab:AddSection("Community Support")

	SettingsTab:AddButton({
		"Join Discord",
		"Copy discord invite code or link",
		function()
			if setclipboard then
				setclipboard("https://discord.gg/bruton")
				brutonlib:Notify({"Discord", "Copied server link to clipboard!", 3, "Success"})
			else
				brutonlib:Notify({"Discord", "Clipboard function not supported", 3, "Error"})
			end
		end
	})

	return Window
end

return brutonlib