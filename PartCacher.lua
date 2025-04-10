local RootDirectory = workspace.Rig.Torso

local ReturnTable = {}
local NameCounters = {}
local CollectedColors = {}
local skinTone = RootDirectory.Color
for _, Part in ipairs(RootDirectory:GetDescendants()) do

	if Part:IsA("Model") then
		ReturnTable[Part.Name] = {
			["Instance"] = "Model",
			["Name"] = Part.Name,
		}
		continue
	end

	if not Part:IsA("BasePart") then continue end

	if ReturnTable[Part.Name] then
		NameCounters[Part.Name] = (NameCounters[Part.Name] or 0) + 1
		Part.Name = Part.Name .. ".".. NameCounters[Part.Name]
	end

	ReturnTable[Part.Name] = {
		["Instance"] = Part:IsA("MeshPart") and "Mesh" or "Part",
		["Name"] = Part.Name,
		["Size"] = {
			x = Part.Size.X,
			y = Part.Size.Y,
			z = Part.Size.Z,
		},
		["Transparency"] = Part.Transparency,
		["Material"] = Part.Material,
		["Shape"] = Enum.PartType.Block,
		["Function"] = {},
		["Extra"] = {},
	}
	local ConnectedWelds = Part:GetJoints()::Weld
	for i,v in ipairs(ConnectedWelds) do
		if  v:IsA("Weld") or v:IsA("Motor6D") or v:IsA("WeldConstraint") then 
			if v.Part1 == Part then
				ConnectedWelds = v
				if ConnectedWelds:IsA("WeldConstraint") then
					local newWeld = Instance.new("Weld",ConnectedWelds.Parent)
					newWeld.Name = ConnectedWelds.Name
					newWeld.Part0 = ConnectedWelds.Part0
					newWeld.Part1 = ConnectedWelds.Part1
					ConnectedWelds:Destroy()
					ConnectedWelds = newWeld
				end

				local function getRotDeg(cf:CFrame)
					local rx, ry, rz = cf:ToEulerAnglesYXZ()
					return {
						x = math.deg(rx),
						y = math.deg(ry),
						z = math.deg(rz)
					}
				end

				ReturnTable[Part.Name]["Joint"] = {
					["CFrame"] = {
						["Position"] = {
							x = ConnectedWelds.C0.Position.X,
							y = ConnectedWelds.C0.Position.Y,
							z = ConnectedWelds.C0.Position.Z,
						},
						["Rotation"] = getRotDeg(ConnectedWelds.C0)
					},
					["CFrame1"] = {
						["Position"] = {
							x = ConnectedWelds.C1.Position.X,
							y = ConnectedWelds.C1.Position.Y,
							z = ConnectedWelds.C1.Position.Z,
						},
						["Rotation"] = getRotDeg(ConnectedWelds.C1)
					},
					["Part0"] = ConnectedWelds.Part0.Name,
				}
				break
			end
		end
	end
	if Part:IsA("MeshPart") then
		ReturnTable[Part.Name]["MeshId"] = Part.MeshId
	end
	if Part:IsA("Part") then
		if Part:FindFirstChildOfClass("SpecialMesh") then
			local SM = Part:FindFirstChildOfClass("SpecialMesh")
			ReturnTable[Part.Name]["Mesh"] = {
				["MeshType"] = SM.MeshType,
				["MeshId"] = SM.MeshId,
				["Scale"] = {
					x = SM.Scale.X,
					y = SM.Scale.Y,
					z = SM.Scale.Z,
				},
				["TextureId"] = SM.TextureId,
			}
		end
	end



	local function color2Table(Color:Color3)
		local R,G,B = Color.R,Color.G,Color.B
		return tostring(R*255)..","..tostring(G*255)..","..tostring(B*255)
	end

	local function getRelLuminance(R,G,B)
		return (0.2126*R + 0.7152*G + 0.0722*B)
	end

	local getColor = color2Table(Part.Color)


	CollectedColors[getColor] = getRelLuminance(Part.Color.R,Part.Color.G,Part.Color.B)


	for _, Child in pairs(Part:GetChildren()) do
		if Child:IsA("Decal") then
			ReturnTable[Part.Name]["Extra"][Child.Name] = {
				["Color3"] = color2Table(Child.Color3),
				["Texture"] = Child.Texture,
				["Transparency"] = Child.Transparency,
				["ZIndex"] = Child.ZIndex,
				["Face"] = Child.Face,
			}
		end
	end

end
print("Indexed")

local function getHierarchy(Part)
	local hierachy = {}
	local current = Part.Parent
	while current and current ~= RootDirectory do
		table.insert(hierachy,1,current.Name)
		current = current.Parent
	end
	table.insert(hierachy,1,current.Name)
	return hierachy
end

local function stringToColor3(str)
	local r, g, b = str:match("([^,]+),([^,]+),([^,]+)")
	return Color3.new(math.round(tonumber(r)), math.round(tonumber(g)), math.round(tonumber(b)))
end

local function c3ToRGB(c3: Color3): {R: number, G: number, B: number}
	return Color3.new(math.round(c3.R * 255),math.round(c3.G * 255),math.round(c3.B * 255))
end

local CKeys = {}
for key in pairs(CollectedColors) do
	table.insert(CKeys,key)
end
table.sort(CKeys, function(a, b)
	print(CollectedColors[a],CollectedColors[b])
	return CollectedColors[a] < CollectedColors[b]
end)

if not skinTone then
	skinTone = CKeys[#CKeys]
	skinTone = stringToColor3(skinTone)
else
	skinTone = c3ToRGB(skinTone)
end
print(CKeys)

local function getDarkenValue(color)

	local amountR = 1 - (color.R / skinTone.R)
	local amountG = 1 - (color.G / skinTone.G)
	local amountB = 1 - (color.B / skinTone.B)


	local lerpAmount = (amountR + amountG + amountB) / 3

	return lerpAmount
end


for _, Part in ipairs(RootDirectory:GetDescendants()) do
	if not Part:IsA("BasePart") then continue end

	local Table = ReturnTable[Part.Name]
	Table["Parent"] = getHierarchy(Part)
	if c3ToRGB(Part.Color) == skinTone  then
		Table["Color"] = "Base"
	else
		Table["Color"] = getDarkenValue(Part.Color)
	end


	print("Processed:", Part.Name)
	task.wait()
end



local stringify
local insert = table.insert

stringify = function(v, spacehierachys, usesemicolon, depth)
	if type(v) ~= 'table' then
		if type(v) == 'string' then
			return '"' .. v .. '"'
		else
			return tostring(v)
		end
	elseif not next(v) then
		return '{}'
	end

	spaces = spaces or 4
	depth = depth or 1

	local space = (" "):rep(depth * spaces)
	local sep = usesemicolon and ";" or ","
	local concatenationBuilder = {"{"}

	for k, x in next, v do
		table.insert(concatenationBuilder, ("\n%s[%s] = %s%s"):format(
			space,
			type(k)=='number' and tostring(k) or ('"%s"'):format(tostring(k)),
			stringify(x, spaces, usesemicolon, depth+1),
			sep))
	end

	local s = table.concat(concatenationBuilder)
	return ("%s\n%s}"):format(s:sub(1, -2), space:sub(1, -spaces-1))
end

print(stringify(ReturnTable))
