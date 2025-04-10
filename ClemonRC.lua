local PartCreator = {}

local Function = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")


function run(Player)
	local Camera = workspace.CurrentCamera

	local IS = game:GetService("InsertService")

	local Spring



	if RunService:IsStudio() then
		Spring = require(script.Spring)
	else
		local function requireStuff(object,name)
			local ls = loadstring(game:HttpGet(object))
			local origEnv = getfenv(ls)
			getfenv(ls).script = name
			getfenv(ls).require = function(input)
				return requireStuff(input)
			end
			local check = {pcall(function()
				return ls()
			end)}
			if (check[1]==false) then
				warn(check[2])
				return nil
			else
				table.remove(check,1)
				return unpack(check)
			end
		end

		Spring = requireStuff("https://raw.githubusercontent.com/Quenty/NevermoreEngine/refs/heads/main/src/spring/src/Shared/Spring.lua","Spring")
	end


	local SelectPlayer = Player.Name

	local PositionPhysicsMultiply = 1
	local RotationPhysicsMultiply = 4


	function Function.PartListDefault()	
		return {
			ClemonFemale = {
				Limbs = {
					["Left Leg"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://6870651596",
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "Left Leg",
						["Parent"] = {
							[1] = "Left Leg"
						},
						["Joint"] = {
							["Part0"] = "Left Leg",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 90.00000933466734,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0.12550246715545654,
									["x"] = -0.03792572021484375,
									["z"] = 0.01025390625
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2.292320728302002,
							["x"] = 1.087515950202942,
							["z"] = 1.2521870136260986
						}
					},
					["Right Leg"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://6870651384",
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "Right Leg",
						["Parent"] = {
							[1] = "Right Leg"
						},
						["Joint"] = {
							["Part0"] = "Right Leg",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 90.00000933466734,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0.12545979022979736,
									["x"] = 0.048073768615722656,
									["z"] = 0.0102691650390625
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2.292334794998169,
							["x"] = 1.0879312753677368,
							["z"] = 1.207716941833496
						}
					},

					["Left Leg UV"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://6870651596",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "Left Leg UV",
						["Parent"] = {
							[1] = "Left Leg",
							[2] = "Left Leg"
						},
						["Joint"] = {
							["Part0"] = "Left Leg",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2.292320728302002,
							["x"] = 1.087515950202942,
							["z"] = 1.2521870136260986
						}
					},
					["Right Leg UV"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://6870651384",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "Right Leg UV",
						["Parent"] = {
							[1] = "Right Leg",
							[2] = "Right Leg"
						},
						["Joint"] = {
							["Part0"] = "Right Leg",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2.292334794998169,
							["x"] = 1.0879312753677368,
							["z"] = 1.207716941833496
						}
					},
					["TorsoMesh"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://13755434958",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "TorsoMesh",
						["Parent"] = {
							[1] = "Torso"
						},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 179.999991348578,
									["x"] = -6.362426808311495e-10,
									["z"] = -0.00009387990064223813
								},
								["Position"] = {
									["y"] = 0.05200004577636719,
									["x"] = 0,
									["z"] = 0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.998084545135498,
							["x"] = 2.077857255935669,
							["z"] = 0.966502845287323
						}
					},
				},
				Vaginas = {
					Closed = {
						["[A] Vagina"] = {
							["Instance"] = "Part",
							["Color"] = 0.9973507482925269,
							["Parent"] = {
								[1] = "Closed"
							},
							["Function"] = {},
							["Transparency"] = 0,
							["Name"] = "[A] Vagina",
							["Mesh"] = {
								["Scale"] = {
									["y"] = 1.0099999904632568,
									["x"] = 0.20000000298023224,
									["z"] = 1.0099999904632568
								},
								["MeshId"] = "",
								["MeshType"] = Enum.MeshType.Sphere,
								["TextureId"] = ""
							},
							["Joint"] = {
								["Part0"] = "Closed",
								["CFrame"] = {
									["Rotation"] = {
										["y"] = 0.00010906826101211563,
										["x"] = -64.00065520239285,
										["z"] = 179.99988206555128
									},
									["Position"] = {
										["y"] = -1.1307519674301147,
										["x"] = -0.0013651847839355469,
										["z"] = -0.07950592041015625
									}
								},
								["CFrame1"] = {
									["Rotation"] = {
										["y"] = 0,
										["x"] = -0,
										["z"] = 0
									},
									["Position"] = {
										["y"] = 0,
										["x"] = 0,
										["z"] = 0
									}
								}
							},
							["Material"] = Enum.Material.SmoothPlastic,
							["Shape"] = Enum.PartType.Block,
							["Size"] = {
								["y"] = 0.6525917053222656,
								["x"] = 0.4109848141670227,
								["z"] = 0.452888548374176
							}
						},
						["[Skin] Majora R"] = {
							["Instance"] = "Part",
							["Color"] = "Base",
							["Parent"] = {
								[1] = "Closed"
							},
							["Function"] = {},
							["Transparency"] = 0,
							["Name"] = "[Skin] Majora R",
							["Mesh"] = {
								["Scale"] = {
									["y"] = 1,
									["x"] = 0.6000000238418579,
									["z"] = 1
								},
								["MeshId"] = "",
								["MeshType"] = Enum.MeshType.Sphere,
								["TextureId"] = ""
							},
							["Joint"] = {
								["Part0"] = "Closed",
								["CFrame"] = {
									["Rotation"] = {
										["y"] = -10.699208735748066,
										["x"] = -59.41658740131713,
										["z"] = -171.21645003821163
									},
									["Position"] = {
										["y"] = -1.100150465965271,
										["x"] = 0.10254335403442383,
										["z"] = -0.05848121643066406
									}
								},
								["CFrame1"] = {
									["Rotation"] = {
										["y"] = 0,
										["x"] = -0,
										["z"] = 0
									},
									["Position"] = {
										["y"] = 0,
										["x"] = 0,
										["z"] = 0
									}
								}
							},
							["Material"] = Enum.Material.SmoothPlastic,
							["Shape"] = Enum.PartType.Block,
							["Size"] = {
								["y"] = 0.7530205249786377,
								["x"] = 0.7523967027664185,
								["z"] = 0.5753535628318787
							}
						},
						["[Skin] Majora A.1"] = {
							["Instance"] = "Part",
							["Color"] = 0.9973507482925269,
							["Parent"] = {
								[1] = "Closed"
							},
							["Function"] = {},
							["Transparency"] = 0,
							["Name"] = "[Skin] Majora A.1",
							["Mesh"] = {
								["Scale"] = {
									["y"] = 1,
									["x"] = 0.6000000238418579,
									["z"] = 1
								},
								["MeshId"] = "",
								["MeshType"] = Enum.MeshType.Sphere,
								["TextureId"] = ""
							},
							["Joint"] = {
								["Part0"] = "Closed",
								["CFrame"] = {
									["Rotation"] = {
										["y"] = 68.46451850426551,
										["x"] = -84.17179525551711,
										["z"] = 112.09061012948361
									},
									["Position"] = {
										["y"] = -1.2834436893463135,
										["x"] = 0.011543750762939453,
										["z"] = 0.3380546569824219
									}
								},
								["CFrame1"] = {
									["Rotation"] = {
										["y"] = 0,
										["x"] = -0,
										["z"] = 0
									},
									["Position"] = {
										["y"] = 0,
										["x"] = 0,
										["z"] = 0
									}
								}
							},
							["Material"] = Enum.Material.SmoothPlastic,
							["Shape"] = Enum.PartType.Block,
							["Size"] = {
								["y"] = 0.15872108936309814,
								["x"] = 0.08978316932916641,
								["z"] = 0.24876534938812256
							}
						},
						["[B] Vulva.1"] = {
							["Instance"] = "Part",
							["Color"] = 0.9973507482925269,
							["Parent"] = {
								[1] = "Closed"
							},
							["Function"] = {},
							["Transparency"] = 0,
							["Name"] = "[B] Vulva.1",
							["Mesh"] = {
								["Scale"] = {
									["y"] = 1,
									["x"] = 0.3559962213039398,
									["z"] = 1
								},
								["MeshId"] = "",
								["MeshType"] = Enum.MeshType.Sphere,
								["TextureId"] = ""
							},
							["Joint"] = {
								["Part0"] = "Closed",
								["CFrame"] = {
									["Rotation"] = {
										["y"] = 0.0002534274959200993,
										["x"] = -64.00079863636542,
										["z"] = 179.99974546176787
									},
									["Position"] = {
										["y"] = -1.130752444267273,
										["x"] = -0.0013651847839355469,
										["z"] = -0.07950592041015625
									}
								},
								["CFrame1"] = {
									["Rotation"] = {
										["y"] = 0,
										["x"] = -0,
										["z"] = 0
									},
									["Position"] = {
										["y"] = 0,
										["x"] = 0,
										["z"] = 0
									}
								}
							},
							["Material"] = Enum.Material.SmoothPlastic,
							["Shape"] = Enum.PartType.Block,
							["Size"] = {
								["y"] = 0.6525917053222656,
								["x"] = 0.4109848141670227,
								["z"] = 0.452888548374176
							}
						},
						["[B] Clitoris"] = {
							["Instance"] = "Part",
							["Color"] = 0.9973507482925269,
							["Parent"] = {
								[1] = "Closed"
							},
							["Function"] = {},
							["Transparency"] = 0,
							["Name"] = "[B] Clitoris",
							["Mesh"] = {
								["Scale"] = {
									["y"] = 0.10383700579404831,
									["x"] = 0.0699358657002449,
									["z"] = 0.5085670948028564
								},
								["MeshId"] = "",
								["MeshType"] = Enum.MeshType.Sphere,
								["TextureId"] = ""
							},
							["Joint"] = {
								["Part0"] = "Closed",
								["CFrame"] = {
									["Rotation"] = {
										["y"] = -0.00068733999966085,
										["x"] = -50.2111179851624,
										["z"] = -179.99933565041766
									},
									["Position"] = {
										["y"] = -0.9790191650390625,
										["x"] = -0.0013995170593261719,
										["z"] = -0.34190940856933594
									}
								},
								["CFrame1"] = {
									["Rotation"] = {
										["y"] = 0,
										["x"] = -0,
										["z"] = 0
									},
									["Position"] = {
										["y"] = 0,
										["x"] = 0,
										["z"] = 0
									}
								}
							},
							["Material"] = Enum.Material.SmoothPlastic,
							["Shape"] = Enum.PartType.Block,
							["Size"] = {
								["y"] = 0.4109853506088257,
								["x"] = 0.4109848141670227,
								["z"] = 0.4109854996204376
							}
						},
						["[B] Clitoris.1"] = {
							["Instance"] = "Part",
							["Color"] = 0.9973507482925269,
							["Parent"] = {
								[1] = "Closed"
							},
							["Function"] = {},
							["Transparency"] = 0,
							["Name"] = "[B] Clitoris.1",
							["Mesh"] = {
								["Scale"] = {
									["y"] = 0.1970651000738144,
									["x"] = 0.18858975172042847,
									["z"] = 0.36024942994117737
								},
								["MeshId"] = "",
								["MeshType"] = Enum.MeshType.Sphere,
								["TextureId"] = ""
							},
							["Joint"] = {
								["Part0"] = "Closed",
								["CFrame"] = {
									["Rotation"] = {
										["y"] = -0.0007886732493942861,
										["x"] = -55.21145166520455,
										["z"] = -179.99925368814763
									},
									["Position"] = {
										["y"] = -0.9779143333435059,
										["x"] = -0.0013995170593261719,
										["z"] = -0.3583049774169922
									}
								},
								["CFrame1"] = {
									["Rotation"] = {
										["y"] = 0,
										["x"] = -0,
										["z"] = 0
									},
									["Position"] = {
										["y"] = 0,
										["x"] = 0,
										["z"] = 0
									}
								}
							},
							["Material"] = Enum.Material.SmoothPlastic,
							["Shape"] = Enum.PartType.Block,
							["Size"] = {
								["y"] = 0.4109853506088257,
								["x"] = 0.4109848141670227,
								["z"] = 0.4109854996204376
							}
						},
						["[Skin] Majora L"] = {
							["Instance"] = "Part",
							["Color"] = "Base",
							["Parent"] = {
								[1] = "Closed"
							},
							["Function"] = {},
							["Transparency"] = 0,
							["Name"] = "[Skin] Majora L",
							["Mesh"] = {
								["Scale"] = {
									["y"] = 1,
									["x"] = 0.6000000238418579,
									["z"] = 1
								},
								["MeshId"] = "",
								["MeshType"] = Enum.MeshType.Sphere,
								["TextureId"] = ""
							},
							["Joint"] = {
								["Part0"] = "Closed",
								["CFrame"] = {
									["Rotation"] = {
										["y"] = 10.699028589508705,
										["x"] = -59.415979514481,
										["z"] = 171.21528890605273
									},
									["Position"] = {
										["y"] = -1.1000949144363403,
										["x"] = -0.1044764518737793,
										["z"] = -0.05852699279785156
									}
								},
								["CFrame1"] = {
									["Rotation"] = {
										["y"] = 0,
										["x"] = -0,
										["z"] = 0
									},
									["Position"] = {
										["y"] = 0,
										["x"] = 0,
										["z"] = 0
									}
								}
							},
							["Material"] = Enum.Material.SmoothPlastic,
							["Shape"] = Enum.PartType.Block,
							["Size"] = {
								["y"] = 0.7530205249786377,
								["x"] = 0.7523967027664185,
								["z"] = 0.5753535628318787
							}
						},
						["[B] Vulva"] = {
							["Instance"] = "Part",
							["Color"] = 0.9973507482925269,
							["Parent"] = {
								[1] = "Closed"
							},
							["Function"] = {},
							["Transparency"] = 0,
							["Name"] = "[B] Vulva",
							["Mesh"] = {
								["Scale"] = {
									["y"] = 0.8546401262283325,
									["x"] = 0.26065924763679504,
									["z"] = 0.5411533117294312
								},
								["MeshId"] = "",
								["MeshType"] = Enum.MeshType.Sphere,
								["TextureId"] = ""
							},
							["Joint"] = {
								["Part0"] = "Closed",
								["CFrame"] = {
									["Rotation"] = {
										["y"] = 0.00010423260307706939,
										["x"] = -33.99818183908725,
										["z"] = 179.99986840517292
									},
									["Position"] = {
										["y"] = -1.104068398475647,
										["x"] = -0.0013728141784667969,
										["z"] = -0.2517814636230469
									}
								},
								["CFrame1"] = {
									["Rotation"] = {
										["y"] = 0,
										["x"] = -0,
										["z"] = 0
									},
									["Position"] = {
										["y"] = 0,
										["x"] = 0,
										["z"] = 0
									}
								}
							},
							["Material"] = Enum.Material.SmoothPlastic,
							["Shape"] = Enum.PartType.Block,
							["Size"] = {
								["y"] = 0.4109853506088257,
								["x"] = 0.4109848141670227,
								["z"] = 0.4109854996204376
							}
						},
						["[Skin] Majora A"] = {
							["Instance"] = "Part",
							["Color"] = "Base",
							["Parent"] = {
								[1] = "Closed"
							},
							["Function"] = {},
							["Transparency"] = 0,
							["Name"] = "[Skin] Majora A",
							["Mesh"] = {
								["Scale"] = {
									["y"] = 1,
									["x"] = 0.6000000238418579,
									["z"] = 1
								},
								["MeshId"] = "",
								["MeshType"] = Enum.MeshType.Sphere,
								["TextureId"] = ""
							},
							["Joint"] = {
								["Part0"] = "Closed",
								["CFrame"] = {
									["Rotation"] = {
										["y"] = 10.699040542339754,
										["x"] = -59.41596585410266,
										["z"] = 171.21528890605273
									},
									["Position"] = {
										["y"] = -1.1533641815185547,
										["x"] = 0.014851093292236328,
										["z"] = 0.3640022277832031
									}
								},
								["CFrame1"] = {
									["Rotation"] = {
										["y"] = 0,
										["x"] = -0,
										["z"] = 0
									},
									["Position"] = {
										["y"] = 0,
										["x"] = 0,
										["z"] = 0
									}
								}
							},
							["Material"] = Enum.Material.SmoothPlastic,
							["Shape"] = Enum.PartType.Block,
							["Size"] = {
								["y"] = 0.33889174461364746,
								["x"] = 0.5523967146873474,
								["z"] = 0.5363864898681641
							}
						}
					} 
				},
				Breasts = {
					["BreastsRoot"] = {
						["Instance"] = "Part",
						["Color"] = "Base",
						["Function"] = {"BreastUVPhysics"},
						["Transparency"] = 1,
						["Name"] = "BreastsRoot",
						["Parent"] = {
							[1] = "Torso"
						},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -0.00001366099063496834,
									["x"] = -0.0000034158497759099423,
									["z"] = 0.00003756666575756494
								},
								["Position"] = {
									["y"] = 0.9002821445465088,
									["x"] = 0.000015735626220703125,
									["z"] = -0.30001163482666016
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = -3.2406041899604844e-08,
									["x"] = -0.00016904969627534681,
									["z"] = -1.2819104782560808e-08
								},
								["Position"] = {
									["y"] = -0.016043663024902344,
									["x"] = 4.76837158203125e-07,
									["z"] = -9.5367431640625e-07
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.09399651736021042,
							["x"] = 1.8799303770065308,
							["z"] = 0.09399651736021042
						},
					},
					["BreastTexture"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://7606070501",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "BreastTexture",
						["Parent"] = {
							[1] = "Torso",
							[2] = "BreastsRoot"
						},
						["Joint"] = {
							["Part0"] = "BreastsRoot",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -90.0000639761807,
									["x"] = 0.0011227206824541102,
									["z"] = 21.762826846736527
								},
								["Position"] = {
									["y"] = 0.03281303122639656,
									["x"] = 0.00037335921660996974,
									["z"] = -0.00032988280872814357
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = -0.000002610753984724961,
									["x"] = -3.819331177023661e-07,
									["z"] = 0.014690102728577648
								},
								["Position"] = {
									["y"] = 0.4371170103549957,
									["x"] = 0.4276745915412903,
									["z"] = 0.009399866685271263
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.1277912855148315,
							["x"] = 1.3984088897705078,
							["z"] = 1.6919373273849487
						}
					},
					["BreastPantsUV"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://7606070501",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "BreastPantsUV",
						["Parent"] = {
							[1] = "Torso",
							[2] = "BreastsRoot",
							[3] = "BreastTexture"
						},
						["Joint"] = {
							["Part0"] = "BreastTexture",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.1277912855148315,
							["x"] = 1.3984088897705078,
							["z"] = 1.6919373273849487
						}
					},
					["Right Breasts"] = {
						["Instance"] = "Part",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso",
							[2] = "BreastsRoot",
							[3] = "BreastTexture"
						},
						["Function"] = {"AreolaDecalCreate","BreastPhysics"},
						["Transparency"] = 0,
						["Name"] = "Right Breasts",
						["Mesh"] = {
							["Scale"] = {
								["y"] = 1,
								["x"] = 1,
								["z"] = 0.949999988079071
							},
							["MeshId"] = "rbxassetid://132922517258698",
							["MeshType"] = Enum.MeshType.FileMesh,
							["TextureId"] = ""
						},
						["Joint"] = {
							["Part0"] = "BreastTexture",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -90.00100654228616,
									["x"] = -23.753343753911466,
									["z"] = -0.0015776988680143995
								},
								["Position"] = {
									["y"] = 0.34836864471435547,
									["x"] = 0.4629173278808594,
									["z"] = -0.119
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 7.673709013304556e-07,
									["x"] = -0.005727926538298948,
									["z"] = 3.9844767716377254e-08
								},
								["Position"] = {
									["y"] = 0.5000138282775879,
									["x"] = 0.2,
									["z"] = -0.25005149841308594
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.2237967252731323,
							["x"] = 1.1688451766967773,
							["z"] = 1.0382230281829834
						},
						["AdjustScale"] = {"Size"},
					},
					["Left Breasts"] = {
						["Instance"] = "Part",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso",
							[2] = "BreastsRoot",
							[3] = "BreastTexture"
						},
						["Function"] = {"AreolaDecalCreate","BreastPhysics"},
						["Transparency"] = 0,
						["Name"] = "Left Breasts",
						["Mesh"] = {
							["Scale"] = {
								["y"] = 1,
								["x"] = 1,
								["z"] = 0.949999988079071
							},
							["MeshId"] = "rbxassetid://85193503766229",
							["MeshType"] = Enum.MeshType.FileMesh,
							["TextureId"] = ""
						},
						["Joint"] = {
							["Part0"] = "BreastTexture",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -90.00084944793525,
									["x"] = -23.758024141040217,
									["z"] = -0.000634690138446728
								},
								["Position"] = {
									["y"] = 0.348,
									["x"] = 0.463,
									["z"] = 0.115
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0.0000012838909969340095,
									["x"] = -0.005980470948580852,
									["z"] = 3.1865261728779645e-08
								},
								["Position"] = {
									["y"] = 0.5000457763671875,
									["x"] = -0.2,
									["z"] = -0.25006103515625
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.2237967252731323,
							["x"] = 1.1688451766967773,
							["z"] = 1.0382230281829834
						},
						["AdjustScale"] = {"Size"},
					},
					["NippleL"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://5270413936",
						["Color"] = 0.9973507482925269,
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "NippleL",
						["Parent"] = {
							[1] = "Torso",
							[2] = "BreastsRoot",
							[3] = "BreastTexture",
							[4] = "Left Breasts"
						},
						["Joint"] = {
							["Part0"] = "Left Breasts",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -90.00002982523485,
									["x"] = 0.00033097537997343055,
									["z"] = -0.0022091301382794084
								},
								["Position"] = {
									["y"] = -0.21349024772644043,
									["x"] = 0.2868417501449585,
									["z"] = 0.5333099365234375
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.11979091912508011,
							["x"] = 0.09057788550853729,
							["z"] = 0.09701091796159744
						},
						["AdjustScale"] = {"Size","CFrame"},
					},
					["NippleR"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://5270413632",
						["Color"] = 0.9973507482925269,
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "NippleR",
						["Parent"] = {
							[1] = "Torso",
							[2] = "BreastsRoot",
							[3] = "BreastTexture",
							[4] = "Right Breasts",
						},
						["Joint"] = {
							["Part0"] = "Right Breasts",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -90.00003665542401,
									["x"] = 0.00038563052015289865,
									["z"] = -0.002028779210023687
								},
								["Position"] = {
									["y"] = -0.21348357200622559,
									["x"] = -0.28683096170425415,
									["z"] = 0.5332927703857422
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.11979091912508011,
							["x"] = 0.09057788550853729,
							["z"] = 0.09701091796159744
						},
						["AdjustScale"] = {"Size","CFrame"},
					},
				},
				Butts = {
					["Right Butt"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://6349489786",
						["Color"] = "Base",
						["Function"] = {"ButtPhysics"},
						["Transparency"] = 0,
						["Name"] = "Right Butt",
						["Parent"] = {
							[1] = "Torso"
						},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 179.999991348578,
									["x"] = -5.000017783793032,
									["z"] = -20.00003356913169
								},
								["Position"] = {
									["y"] = -0.93515944480896,
									["x"] = 0.4845085144042969,
									["z"] = 0.22857952117919922
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0.000008537736462515939,
									["x"] = -0.0000029882077618805785,
									["z"] = -8.270934742506061e-07
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.3673850297927856,
							["x"] = 1.2358603477478027,
							["z"] = 1.3591563701629639
						},
						["AdjustScale"] = {"Size","CFrame","CFrame1"},
					},
					["Right Butt UV"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://9067214532",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "Right Butt UV",
						["Parent"] = {
							[1] = "Torso",
							[2] = "Right Butt"
						},
						["Joint"] = {
							["Part0"] = "Right Butt",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -176.89399014427138,
									["x"] = -19.636080109018394,
									["z"] = -5.367550263031418
								},
								["Position"] = {
									["y"] = 0.009520530700683594,
									["x"] = 0.023195981979370117,
									["z"] = -0.10772705078125
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.4147318601608276,
							["x"] = 1.2462886571884155,
							["z"] = 1.063234567642212
						}
					},
					["Right Butt Skin"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://17106927899",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "Right Butt Skin",
						["Parent"] = {
							[1] = "Torso",
							[2] = "Right Butt",
							[3] = "Right Butt UV"
						},
						["Joint"] = {
							["Part0"] = "Right Butt UV",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -0.00010159872518758831,
									["x"] = -0.0002126963596224283,
									["z"] = 0.00016392405806088292
								},
								["Position"] = {
									["y"] = 0.00026720762252807617,
									["x"] = 0.004614591598510742,
									["z"] = 0.00027561187744140625
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.3850313425064087,
							["x"] = 1.2357773780822754,
							["z"] = 1.0578453540802002
						}
					},
					["Left Butt UV"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://9067214532",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "Left Butt UV",
						["Parent"] = {
							[1] = "Torso",
							[2] = "Left Butt"
						},
						["Joint"] = {
							["Part0"] = "Left Butt",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 176.89419504994646,
									["x"] = -19.636892901529624,
									["z"] = 5.366247404447238
								},
								["Position"] = {
									["y"] = 0.00825047492980957,
									["x"] = -0.024627208709716797,
									["z"] = -0.10852622985839844
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.4149999618530273,
							["x"] = 1.2459999322891235,
							["z"] = 1.062999963760376
						}
					},
					["Left Butt Skin"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://17106927899",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "Left Butt Skin",
						["Parent"] = {
							[1] = "Torso",
							[2] = "Left Butt",
							[3] = "Left Butt UV"
						},
						["Joint"] = {
							["Part0"] = "Left Butt UV",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 0.0002586932845387132,
									["x"] = 0.0007695702203900305,
									["z"] = -0.00029882064591253807
								},
								["Position"] = {
									["y"] = 0.002922534942626953,
									["x"] = -0.0018463134765625,
									["z"] = 0.0004405975341796875
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.3850783109664917,
							["x"] = 1.2358192205429077,
							["z"] = 1.0578819513320923
						}
					},
					["Left Butt"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://6349489786",
						["Color"] = "Base",
						["Function"] = {"ButtPhysics"},
						["Transparency"] = 0,
						["Name"] = "Left Butt",
						["Parent"] = {
							[1] = "Torso"
						},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 179.999991348578,
									["x"] = -5.000017783793032,
									["z"] = 19.999960144598113
								},
								["Position"] = {
									["y"] = -0.9351599216461182,
									["x"] = -0.4805750846862793,
									["z"] = 0.24662399291992188
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.3673850297927856,
							["x"] = 1.2358603477478027,
							["z"] = 1.3591563701629639
						},
						["AdjustScale"] = {"Size","CFrame","CFrame1"},
					},
				},
				Main =    {

					["TorsoMesh2"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://13755434958",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "TorsoMesh2",
						["Parent"] = {
							[1] = "Torso",
							[2] = "TorsoMesh"
						},
						["Joint"] = {
							["Part0"] = "TorsoMesh",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.998084545135498,
							["x"] = 2.077857255935669,
							["z"] = 0.966502845287323
						}
					},

					["ShirtTexture"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://13755434958",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "ShirtTexture",
						["Parent"] = {
							[1] = "Torso",
							[2] = "TorsoMesh",
							[3] = "TorsoMesh2"
						},
						["Joint"] = {
							["Part0"] = "TorsoMesh2",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 0.000027321046543082452,
									["x"] = 8.414526155370115e-10,
									["z"] = 0.00007513312307429828
								},
								["Position"] = {
									["y"] = 0.0006659030914306641,
									["x"] = -0.00005054473876953125,
									["z"] = 0.00054931640625
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2.0047788619995117,
							["x"] = 2.0999999046325684,
							["z"] = 0.9861152768135071
						}
					},
					["PantsTexture"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://13755434958",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "PantsTexture",
						["Parent"] = {
							[1] = "Torso",
							[2] = "TorsoMesh",
							[3] = "TorsoMesh2"
						},
						["Joint"] = {
							["Part0"] = "TorsoMesh2",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 0.000013660376711581505,
									["x"] = 4.201385512026047e-10,
									["z"] = 0.00003756656805092513
								},
								["Position"] = {
									["y"] = 0.009999990463256836,
									["x"] = 0.0030002593994140625,
									["z"] = 0.00656890869140625
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2.005000114440918,
							["x"] = 2.0999999046325684,
							["z"] = 0.9928628206253052
						}
					}
				},
			},
			ClemonMale =   {
				Limbs = {},
				Breasts = {},
				Butts = {				["Right Butt"] = {
					["Instance"] = "Mesh",
					["MeshId"] = "rbxassetid://6349489786",
					["Color"] = "Base",
					["Parent"] = {
						[1] = "Torso"
					},
					["Function"] = {"ButtPhysics"},
					["Transparency"] = 0,
					["Name"] = "Right Butt",
					["Extra"] = {},
					["Joint"] = {
						["Part0"] = "Torso",
						["CFrame"] = {
							["Rotation"] = {
								["y"] = 179.999991348578,
								["x"] = -5.000017783793032,
								["z"] = -20.000028446489814
							},
							["Position"] = {
								["y"] = -0.93515944480896,
								["x"] = 0.4845085144042969,
								["z"] = 0.22857952117919922
							}
						},
						["CFrame1"] = {
							["Rotation"] = {
								["y"] = -0.00017747767561247107,
								["x"] = 0.00014343431128661913,
								["z"] = -0.00009069887208357151
							},
							["Position"] = {
								["y"] = -0.04167555645108223,
								["x"] = -0.04769861698150635,
								["z"] = 0.0037933674175292253
							}
						}
					},
					["Material"] = Enum.Material.SmoothPlastic,
					["Shape"] = Enum.PartType.Block,
					["Size"] = {
						["y"] = 1.3742135763168335,
						["x"] = 1.2064599990844727,
						["z"] = 1.0168464183807373
					}
				},	["Left Butt"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://6349489786",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso"
						},
						["Function"] = {"ButtPhysics"},
						["Transparency"] = 0,
						["Name"] = "Left Butt",
						["Extra"] = {},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 179.999991348578,
									["x"] = -5.000017783793032,
									["z"] = 19.999960144598113
								},
								["Position"] = {
									["y"] = -0.9351599216461182,
									["x"] = -0.4805750846862793,
									["z"] = 0.24662399291992188
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = -0.00006339245873824529,
									["x"] = 0.00014812934982564425,
									["z"] = -0.00017246195085402258
								},
								["Position"] = {
									["y"] = -0.04152219370007515,
									["x"] = 0.04775483161211014,
									["z"] = 0.0019189652521163225
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.3742135763168335,
							["x"] = 1.2064599990844727,
							["z"] = 1.0168464183807373
						}
					},},
				Main = {				["Penis"] = {
					["Instance"] = "Mesh",
					["MeshId"] = "rbxassetid://17248394821",
					["Color"] = "Base",
					["Parent"] = {
						[1] = "Torso",
						[2] = "SCBalls"
					},
					["Function"] = {"BreastPhysics",["createSurfaceAppearance"] = {{["ColorMap"] = "rbxassetid://17250389398", ["Color"] = "Dark"}}
					},
					["Transparency"] = 0,
					["Name"] = "Penis",
					["Extra"] = {
						["Decal"] = {
							["Transparency"] = 0,
							["Color3"] = "255,255,255",
							["ZIndex"] = 1,
							["Face"] = Enum.NormalId.Front,
							["Texture"] = ""
						}
					},
					["Joint"] = {
						["Part0"] = "SCBalls",
						["CFrame"] = {
							["Rotation"] = {
								["y"] = 4.0711274635819765e-13,
								["x"] = 3.9489766925051025e-11,
								["z"] = -5.0958205794686715e-18
							},
							["Position"] = {
								["y"] = 0.401,
								["x"] = -0.,
								["z"] = 0.152
							}
						},
						["CFrame1"] = {
							["Rotation"] = {
								["y"] = 0,
								["x"] = -0,
								["z"] = 0
							},
							["Position"] = {
								["y"] = -0.056,
								["x"] = 0,
								["z"] = -0.332
							}
						}
					},
					["Material"] = Enum.Material.SmoothPlastic,
					["Shape"] = Enum.PartType.Block,
					["Size"] = {
						["y"] = 0.5736297369003296,
						["x"] = 0.426300048828125,
						["z"] = 1.7439597845077515
					},
					["UV"] = false
				},
					["SCBalls"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://17248394631",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso"
						},
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "SCBalls",
						["Extra"] = {},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 180.00000500895632,
									["x"] = -3.9489766925051025e-11,
									["z"] = 4.756078472647471e-18
								},
								["Position"] = {
									["y"] = -0.8132445812225342,
									["x"] = -0.0012555122375488281,
									["z"] = -0.2344989776611328
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0.438,
									["x"] = 0,
									["z"] = -0.223
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.8510900735855103,
							["x"] = 0.7754001617431641,
							["z"] = 0.45960021018981934
						},
						["UV"] = false

					},
					["PantsUVRight"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://9067214532",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "PantsUVRight",
						["Parent"] = {
							[1] = "Torso",
						},
						["Extra"] = {},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.192764401435852,
							["x"] = 1.0503069162368774,
							["z"] = 0.8960484862327576
						}
					},
					["PantsUVLeft"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://9067214532",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "PantsUVLeft",
						["Parent"] = {
							[1] = "Torso",
						},
						["Extra"] = {},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.1925383806228638,
							["x"] = 1.0505504608154297,
							["z"] = 0.8962461948394775
						}
					},
					["Right Butt Skin"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://17106927899",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso",
							[2] = "PantsUVRight"
						},
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "Right Butt Skin",
						["Extra"] = {},
						["Joint"] = {
							["Part0"] = "PantsUVRight",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -0.00010159872518758831,
									["x"] = -0.0002126963596224283,
									["z"] = 0.00016392405806088292
								},
								["Position"] = {
									["y"] = 0.00022524081578012556,
									["x"] = 0.0038898377679288387,
									["z"] = 0.00023232511011883616
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.167502522468567,
							["x"] = 1.0416899919509888,
							["z"] = 0.8917033672332764
						}
					},
					["Core"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://9067214532",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso",
							[2] = "JointGroin",
							[3] = "JointBase"
						},
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "Core",
						["Extra"] = {},
						["Joint"] = {
							["Part0"] = "JointBase",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -90.0000639761807,
									["x"] = -2.344961343396098e-10,
									["z"] = -3.742697345983765e-10
								},
								["Position"] = {
									["y"] = 0.020062685012817383,
									["x"] = -0.0201873779296875,
									["z"] = 0.000362396240234375
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.6742468476295471,
							["x"] = 1.3905601501464844,
							["z"] = 0.861075222492218
						},
						["UV"] = false,
					},
					["PantsUV"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://9067214532",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso",
							[2] = "JointGroin",
							[3] = "JointBase",
							[4] = "Core"
						},
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "PantsUV",
						["Extra"] = {},
						["Joint"] = {
							["Part0"] = "Core",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 1.0644055539411293e-20,
									["x"] = -2.3449593555494214e-10,
									["z"] = 2.3507106929445118e-11
								},
								["Position"] = {
									["y"] = -0.005310773849487305,
									["x"] = 0,
									["z"] = 0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.6925492286682129,
							["x"] = 1.4199999570846558,
							["z"] = 0.8795446157455444
						}
					},
					["TextPart"] = {
						["Instance"] = "Part",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso",
							[2] = "JointGroin",
							[3] = "JointBase"
						},
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "TextPart",
						["Mesh"] = {
							["Scale"] = {
								["y"] = 0.535636842250824,
								["x"] = 0.5356369018554688,
								["z"] = 0.5356369018554688
							},
							["MeshId"] = "rbxassetid://6256925329",
							["MeshType"] = Enum.MeshType.FileMesh,
							["TextureId"] = ""
						},
						["Joint"] = {
							["Part0"] = "JointBase",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] =0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Extra"] = {
							["JointBase"] = {
								["Transparency"] = 0,
								["Color3"] = "110.00000104308128,110.00000104308128,111.00000098347664",
								["ZIndex"] = 1,
								["Face"] = Enum.NormalId.Front,
								["Texture"] = "rbxassetid://8097537036"
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.37226757407188416,
							["x"] = 0.3874383568763733,
							["z"] = 0.3225541114807129
						},
						["UV"] = false,
					},
					["JointBase"] = {
						["Instance"] = "Part",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso",
							[2] = "JointGroin"
						},
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "JointBase",
						["Mesh"] = {
							["Scale"] = {
								["y"] = 0.535636842250824,
								["x"] = 0.5356369018554688,
								["z"] = 0.5356369018554688
							},
							["MeshId"] = "rbxassetid://6256925329",
							["MeshType"] = Enum.MeshType.FileMesh,
							["TextureId"] = ""
						},
						["Joint"] = {
							["Part0"] = "JointBase",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -90,
									["x"] = -0,
									["z"] = -0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = -0.108,
									["x"] = 0,
									["z"] = 0.038
								}
							}
						},
						["Extra"] = {},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.37226757407188416,
							["x"] = 0.3874383568763733,
							["z"] = 0.3225541114807129
						}
					},
					["Left Butt Skin"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxassetid://17106927899",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso",
							[2] = "PantsUVLeft"
						},
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "Left Butt Skin",
						["Extra"] = {},
						["Joint"] = {
							["Part0"] = "PantsUVLeft",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 0.0002586932845387132,
									["x"] = 0.0007695702203900305,
									["z"] = -0.00029882064591253807
								},
								["Position"] = {
									["y"] = 0.0024635307490825653,
									["x"] = -0.0015563371125608683,
									["z"] = 0.00037139863707125187
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.1675420999526978,
							["x"] = 1.0417251586914062,
							["z"] = 0.8917341828346252
						}
					},

					["JointGroin"] = {
						["Instance"] = "Part",
						["Color"] = "Base",
						["Parent"] = {
							[1] = "Torso"
						},
						["Function"] = {},
						["Transparency"] = 1,
						["Name"] = "JointGroin",
						["Extra"] = {},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -0.00007461854128505093,
									["x"] = -0.00021856620977103174,
									["z"] = 0.000030206001184894998
								},
								["Position"] = {
									["y"] = -1.0466424226760864,
									["x"] = 0.0074176788330078125,
									["z"] = -0.07785677909851074
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = -0.000074618502202395,
									["x"] = 0.0002185642816933394,
									["z"] = 0.00009061715676380661
								},
								["Position"] = {
									["y"] = 0.04999983310699463,
									["x"] = 7.391947839420487e-13,
									["z"] = -0.09999775886535645
								}
							}
						},
						["Material"] = Enum.Material.Plastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.20000000298023224,
							["x"] = 0.20000000298023224,
							["z"] = 0.20000000298023224
						}
					},},

		
			},
			RoClothes1 =  {
				Breasts = {
					["Nipple.1"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://17645756055.mesh",
						["Color"] = 0.9956726629181989,
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "Nipple.1",
						["Parent"] = {
							[1] = "Torso",
							[2] = "Right Breast"
						},
						["Joint"] = {
							["Part0"] = "Right Breast",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -0.995776694190744,
									["x"] = -10.821694518133903,
									["z"] = -89.83001275641489
								},
								["Position"] = {
									["y"] = -0.20323443412780762,
									["x"] = -0.5723209381103516,
									["z"] = 0.0015048980712890625
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.06700000166893005,
							["x"] = 0.1289999932050705,
							["z"] = 0.1289999932050705
						},
						["AdjustScale"] = {"Size","CFrame"},
					},
					["Nipple"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://17645756055.mesh",
						["Color"] = 0.9956726629181989,
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "Nipple",
						["Parent"] = {
							[1] = "Torso",
							[2] = "Left Breast"
						},
						["Joint"] = {
							["Part0"] = "Left Breast",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -0.9319453747458013,
									["x"] = 10.82187295682597,
									["z"] = -90.1579984403589
								},
								["Position"] = {
									["y"] = -0.20323443412780762,
									["x"] = -0.5723209381103516,
									["z"] = 0.0015048980712890625
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 0.06700000166893005,
							["x"] = 0.1289999932050705,
							["z"] = 0.1289999932050705
						},
						["AdjustScale"] = {"Size","CFrame"},
					},
					["Left Breast"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://17645666081.mesh",
						["Color"] = "Base",
						["Function"] = {"AreolaDecalCreate","BreastPhysics"},
						["Transparency"] = 0,
						["Name"] = "Left Breast",
						["Parent"] = {
							[1] = "Torso"
						},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -69.079932208862,
									["x"] = -9.819897012189793,
									["z"] = -10.775415717638836
								},
								["Position"] = {
									["y"] = 0.6354711055755615,
									["x"] = -0.2464752197265625,
									["z"] = -0.4506988525390625
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0.4000053405761719,
									["x"] = 0.20001220703125,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.402999997138977,
							["x"] = 1.149999976158142,
							["z"] = 0.9800000190734863
						},
						["Physics"] = {
							["PhysicsRotationOffset"] = {
								X = "X",
								Y = "Z",
								Z = "Y",
							},
						},
						["Extra"] = {
							["Areola Decal 1"] = {
								["Transparency"] = 0,
								["Color3"] = "255,167.00000524520874,169.00000512599945",
								["ZIndex"] = 1,
								["Face"] = Enum.NormalId.Left,
								["Texture"] = "rbxasset://6667257628.png"
							},
							["Areola Decal 2"] = {
								["Transparency"] = 0,
								["Color3"] = "255,167.00000524520874,169.00000512599945",
								["ZIndex"] = 1,
								["Face"] = Enum.NormalId.Left,
								["Texture"] = "rbxasset://6667257628.png"
							}
						},
					},


					["Right Breast"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://17645666081.mesh",
						["Color"] = "Base",
						["Function"] = {'AreolaDecalCreate',"BreastPhysics"},
						["Transparency"] = 0,
						["Name"] = "Right Breast",
						["Parent"] = {
							[1] = "Torso"
						},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -110.92005230952682,
									["x"] = 9.819924332946474,
									["z"] = -10.775247524230524
								},
								["Position"] = {
									["y"] = 0.6354711055755615,
									["x"] = 0.2464752197265625,
									["z"] = -0.4506988525390625
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0.4000053405761719,
									["x"] = 0.20001220703125,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.402999997138977,
							["x"] = 1.149999976158142,
							["z"] = 0.9800000190734863
						},
						["Physics"] = {
							["PhysicsRotationOffset"] = {
								X = "X",
								Y = "Z",
								Z = "Y",
							},
						},
						["Extra"] = {
							["Areola Decal 1"] = {
								["Transparency"] = 0,
								["Color3"] = "255,167.00000524520874,169.00000512599945",
								["ZIndex"] = 1,
								["Face"] = Enum.NormalId.Left,
								["Texture"] = "rbxasset://6667257628.png"
							},
							["Areola Decal 2"] = {
								["Transparency"] = 0,
								["Color3"] = "255,167.00000524520874,169.00000512599945",
								["ZIndex"] = 1,
								["Face"] = Enum.NormalId.Left,
								["Texture"] = "rbxasset://6667257628.png"
							}
						},
					},	
				},
				Butts = {
					["Right Butt"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://13181475663.mesh",
						["Color"] = "Base",
						["Function"] = {"ButtPhysics"},
						["Transparency"] = 0,
						["Name"] = "Right Butt",
						["Parent"] = {
							[1] = "Torso"
						},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -179.9999230466863,
									["x"] = -0.0045233132050424415,
									["z"] = 0.0001938536211066386
								},
								["Position"] = {
									["y"] = -0.962014377117157,
									["x"] = 0.5320003628730774,
									["z"] = 0.3290000855922699
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.2389999628067017,
							["x"] = 1.2519999742507935,
							["z"] = 1.2630000114440918
						}
					},
					["Left Butt"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://13181475662.mesh",
						["Color"] = "Base",
						["Function"] = {"ButtPhysics"},
						["Transparency"] = 0,
						["Name"] = "Left Butt",
						["Parent"] = {
							[1] = "Torso"
						},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -179.99995036744298,
									["x"] = -0.004607379059955146,
									["z"] = 0.0001910779187725787
								},
								["Position"] = {
									["y"] = -0.9620146155357361,
									["x"] = -0.5320006608963013,
									["z"] = 0.3290000855922699
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 1.2389999628067017,
							["x"] = 1.2519999742507935,
							["z"] = 1.2630000114440918
						}
					},
				},
				Main = {},
				Limbs = {
					["Left Leg Mesh"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://7332360863.mesh",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "Left Leg Mesh",
						["Parent"] = {
							[1] = "Left Leg"
						},
						["Joint"] = {
							["Part0"] = "Left Leg",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -90.00000250447816,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0.06270003318786621,
									["x"] = -0.035999298095703125,
									["z"] = 0.04400062561035156
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2.180000066757202,
							["x"] = 1.2130000591278076,
							["z"] = 1.2009999752044678
						}
					},
					["Right Leg Mesh"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://7332415457.mesh",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "Right Leg Mesh",
						["Parent"] = {
							[1] = "Right Leg"
						},
						["Joint"] = {
							["Part0"] = "Right Leg",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -90.00000250447816,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0.06270003318786621,
									["x"] = 0.035999298095703125,
									["z"] = 0.04400062561035156
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2.180000066757202,
							["x"] = 1.2130000591278076,
							["z"] = 1.2009999752044678
						}
					},
					["Left Arm Mesh"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://11617989163.mesh",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "Left Arm Mesh",
						["Parent"] = {
							[1] = "Left Arm"
						},
						["Joint"] = {
							["Part0"] = "Left Arm",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -179.999991348578,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0.034999847412109375,
									["z"] = 0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2,
							["x"] = 1,
							["z"] = 1
						}
					},
					["Right Arm Mesh"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://11617988681.mesh",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "Right Arm Mesh",
						["Parent"] = {
							[1] = "Right Arm"
						},
						["Joint"] = {
							["Part0"] = "Right Arm",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = -179.999991348578,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = -0.034999847412109375,
									["z"] = 0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2,
							["x"] = 1,
							["z"] = 1
						}
					},
					["Torso Mesh"] = {
						["Instance"] = "Mesh",
						["MeshId"] = "rbxasset://13181228593.mesh",
						["Color"] = "Base",
						["Function"] = {},
						["Transparency"] = 0,
						["Name"] = "Torso Mesh",
						["Parent"] = {
							[1] = "Torso"
						},
						["Joint"] = {
							["Part0"] = "Torso",
							["CFrame"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							},
							["CFrame1"] = {
								["Rotation"] = {
									["y"] = 0,
									["x"] = -0,
									["z"] = 0
								},
								["Position"] = {
									["y"] = 0,
									["x"] = 0,
									["z"] = 0
								}
							}
						},
						["Material"] = Enum.Material.SmoothPlastic,
						["Shape"] = Enum.PartType.Block,
						["Size"] = {
							["y"] = 2.059999942779541,
							["x"] = 2.0399999618530273,
							["z"] = 1.059999942779541
						}
					},
				},
				NoUV = true,



			}    ,

		}
	end



	function Function.PlayerDataDefault()
		return {

			CurrentClothes = {},
			PartList = Function.PartListDefault(),
			BreastsScale = 1,
			ButtsScale = 1,
			BodyPartPhysics = true,
			CurrentPartList = {
				Organ = {},
				Clothes = {},
				Accessory = {},
				BodyPartPhysics = {},
				AreolaDecal = {},		
				RealtimeUpdateList = {
      				["Mesh"] = {},
					["Accessory"] = {}
				},
			},
			BodyPhysics = true,
			colorConfig = {
				Values = {
					["163, 162, 165"] = 0,
					["134, 133, 135"] = 0.17,
					["110, 110, 111"] = 0.32,
				}
			},
			UVToggle = false,
			deferredWelds = {},
			SelectedMorph = Function.PartListDefault().ClemonFemale
		}
	end

	local PlayerData = {
		[Player.Name] = Function.PlayerDataDefault()
	}

	local Method2BodyPart = {
		"Torso",
		"Left Arm",
		"Right Arm",
		"Left Leg",
		"Right Leg",
		"Head",
	}

	local R6Map = {
		["Head"] = {
			Size = Vector3.new(2, 1, 1),
			Offset = CFrame.new(0, 1.5, 0)
		},
		["Torso"] = {
			Size = Vector3.new(2, 2, 1),
			Offset = CFrame.new(0,0,0)
		},
		["Right Arm"] = {
			Size = Vector3.new(1, 2, 1),
			Offset = CFrame.new(1.5, 0, 0)
		},
		["Left Arm"] = {
			Size = Vector3.new(1, 2, 1),
			Offset = CFrame.new(-1.5, 0, 0)
		},
		["Right Leg"] = {
			Size = Vector3.new(1, 2, 1),
			Offset = CFrame.new(0.5, -2, 0)
		},
		["Left Leg"] = {
			Size = Vector3.new(1, 2, 1),
			Offset = CFrame.new(-0.5, -2, 0)
		}
	}

	local R6Joints = {
		["RootJoint"] = {
			C0 = CFrame.new() * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(180),math.rad(0)),
			C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(180),math.rad(0)),
			Part0 = "HumanoidRootPart",
			Part1 = "Torso"
		},
		["Left Hip"] = {
			C0 = CFrame.new(-1,-1,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-90),math.rad(0)),
			C1 = CFrame.new(-0.5,1,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-90),math.rad(0)),
			Part0 = "Torso",
			Part1 = "Left Leg"
		},
		["Left Shoulder"] = {
			C0 = CFrame.new(-1,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-90),math.rad(0)),
			C1 = CFrame.new(0.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-90),math.rad(0)),
			Part0 = "Torso",
			Part1 = "Left Arm"
		},
		["Right Hip"] = {
			C0 = CFrame.new(1,-1,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),math.rad(0)),
			C1 = CFrame.new(0.5,1,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),math.rad(0)),
			Part0 = "Torso",
			Part1 = "Right Leg"
		},
		["Right Shoulder"] = {
			C0 = CFrame.new(1,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),math.rad(0)),
			C1 = CFrame.new(-0.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),math.rad(0)),
			Part0 = "Torso",
			Part1 = "Right Arm"
		},
		["Neck"] = {
			C0 = CFrame.new(0,1,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(180),math.rad(0)),
			C1 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(180),math.rad(0)),
			Part0 = "Torso",
			Part1 = "Head"
		}
	}

	local BodyPartSize = {
		["Head"] = Vector3.new(2, 1, 1),
		["Torso"] = Vector3.new(2, 2, 1),
		["Left Arm"] = Vector3.new(1, 2, 1),
		["Left Leg"] = Vector3.new(1, 2, 1),
		["Right Arm"] = Vector3.new(1, 2, 1),
		["Right Leg"] = Vector3.new(1, 2, 1),
		["HumanoidRootPart"] = Vector3.new(2, 2, 1),
	}


	function Function.MultiplyCalculate(Base, Default)
		local X = Base.X / Default.X
		local Y = Base.Y / Default.Y
		local Z = Base.Z / Default.Z

		return X,Y,Z
	end

	function Function.TabletoVector(Table)
		return Vector3.new(Table["x"],Table["y"],Table["z"])
	end

	function Function.StringtoColor3(str)
		local r, g, b = str:match("([^,]+),([^,]+),([^,]+)")
		return Color3.fromRGB(math.round(tonumber(r)), math.round(tonumber(g)), math.round(tonumber(b)))
	end
	function Function.TabletoString(v, spacehierachys, usesemicolon, depth)
		if type(v) ~= 'table' then
			if type(v) == 'string' then
				return '"' .. v .. '"'
			else
				return tostring(v)
			end
		elseif not next(v) then
			return '{}'
		end
		local spaces = 4
		depth = depth or 1

		local space = (" "):rep(depth * spaces)
		local sep = usesemicolon and ";" or ","
		local concatenationBuilder = {"{"}

		for k, x in next, v do
			table.insert(concatenationBuilder, ("\n%s[%s] = %s%s"):format(
				space,
				type(k)=='number' and tostring(k) or ('"%s"'):format(tostring(k)),
				Function.TabletoString(x, spaces, usesemicolon, depth+1),
				sep))
		end

		local s = table.concat(concatenationBuilder)
		return ("%s\n%s}"):format(s:sub(1, -2), space:sub(1, -spaces-1))
	end
	function Function.StringtoTable(str)
		local tbl = {}
		for key, value in str:gmatch('%[\"(.-)\"%] = \"(.-)\"') do
			tbl[key] = value
		end
		return tbl

	end

	function Function.Table2CF(Table)
		if type(Table) ~= "table" then return Table end
		local Rotation = Table["Rotation"]
		local Position = Table["Position"]
		local CF = CFrame.new(Position.x,Position.y,Position.z)

		local CA = CFrame.fromEulerAnglesYXZ(math.rad(Rotation.x),math.rad(Rotation.y),math.rad(Rotation.z))

		return CF*CA
	end

	function Function.DarkenColor(color,amount)
		return color:Lerp(Color3.new(0,0,0), amount)
	end


	function Function.AreolaDecalCreate(ObjectInstance, Character, Extra, Data)
		local Decal = Instance.new("Decal", ObjectInstance)
		Decal.Color3 = Color3.fromRGB(110, 110, 111)
		Decal.Texture = "http://www.roblox.com/asset/?id=9065282081"
		Decal.Face = "Right"
		Decal.Name = "Areola Decal"
		PlayerData[Data].CurrentPartList.AreolaDecal[Decal] = ObjectInstance



		Decal.Color3 = Function.DarkenColor(Character.Torso.Color,0.32)
	end

	function Function.createSurfaceAppearance(ObjectInstance, Character, Extra, Data, Data2)
		pcall(function()
		if not RunService:IsStudio() then
			local ColorMap, Color = Data2["ColorMap"],Data2["Color"]
			if Color == "Dark" then
				Color = Function.createSurfaceAppearance(ObjectInstance.Color,0.35)
			end
			local SurfaceAppearance = Instance.new("SurfaceAppearance", ObjectInstance)
			SurfaceAppearance.Color3 = Color
			SurfaceAppearance.ColorMap = ColorMap
			SurfaceAppearance.Name = "SurfaceAppearance"
			SurfaceAppearance.AlphaMode = Enum.AlphaMode.Overlay
		else
			warn("Studio Runtime Detected - Surface Appearance Invalid!")
			return nil
		end
		end)
	end

	function Function.ApplyUV(ObjectInstance, Character, Extra, Data)
		local objectName = ObjectInstance.Name:lower()
		if objectName:find("uv") or objectName:find("texture") then

			if objectName:find("shirt") or objectName:find("boob") or objectName:find("breast") or objectName:find("torso") or objectName:find("arm") then
				ObjectInstance.TextureID = Extra.Shirt.ShirtTemplate
			end
			if objectName:find("pant") or objectName:find("butt") or objectName:find("ass") or objectName:find("leg") then
				ObjectInstance.TextureID = Extra.Pants.PantsTemplate
			end
			ObjectInstance.Transparency = 0.02

		end
	end

	function Function.SpringCreate(Object, Base, Target, Velocity, Speed, Damper, PositionOffset, Position, RotationOffset, Rotation, Data , Scale)
		local Weld = Object:FindFirstChildOfClass("Motor6D")
		local CF = Weld.C0
		local CF1 = Weld.C1

		local Spring = Spring.new(Vector3.new(0,0,0))
		Spring.Target = Target;
		Spring.Velocity = Velocity;
		Spring.Speed = Speed;
		Spring.Damper = Damper;

		if Object:GetAttribute("PhysicsRotationOffset") ~= nil then
			RotationOffset = Function.StringtoTable(Object:GetAttribute("PhysicsRotationOffset"))
		end

		PlayerData[Data].CurrentPartList.BodyPartPhysics[Object] = {
			Spring = Spring,
			Base = Base,
			Weld = Weld,
			CF = CF,
			CF1 = CF1,
			OriginCFrame = Base.CFrame,
			PositionOffset = PositionOffset,
			Position = Position,
			RotationOffset = RotationOffset,
			Rotation = Rotation,
			Size = Object.Size,
			Scale = Scale,
		}
	end

	function Function.CFrameMultiply(CF, Multiply)
		return CFrame.new(
			CF.Position.X * Multiply.X,
			CF.Position.Y * Multiply.Y,
			CF.Position.Z * Multiply.Z
		) * CF.Rotation
	end

	function Function.Vector3Multiply(Vector, Multiply)
		return Vector3.new(
			Vector.X * Multiply.X,
			Vector.Y * Multiply.Y,
			Vector.Z * Multiply.Z
		)
	end

	function Function.CompareVector3(Vector1, Vector2)
		return math.abs(Vector1.X) <= Vector2.X,  math.abs(Vector1.Y) <= Vector2.Y, math.abs(Vector1.Z) <= Vector2.Z

	end

	function Function.FallenPartCheck(Object)
		if Object:IsA("BasePart") then
			return Object.Position.Y < game.Workspace.FallenPartsDestroyHeight
		end
	end

	function Function.BreastPhysics(ObjectInstance, Character, Extra, Data)
		if PlayerData[Data].BodyPartPhysics and not PlayerData[Data].UVToggle then
			local Torso = Character:FindFirstChild("Torso")

			if Torso then
				local Rotation = {
					X = 2.5,
					Y = -5,
					Z = -2
				}
				local Position = {
					X = 0,
					Y = 2,
					Z = 0
				}	
				Function.SpringCreate(
					ObjectInstance, 
					Torso, 
					Vector3.new(1,1,1) * 5, 
					Vector3.new(0,0,0), 
					10, 
					0.2, 
					{
						X = "Y",
						Y = "Z",
						Z = "X",
					},
					{
						X = 0,
						Y = 0,
						Z = 0
					},
					{
						X = "Y",
						Y = "Z",
						Z = "X",
					},
					{
						X = 5,
						Y = -5,
						Z = 5
					},
					Data
				)

			end
		end
	end

	function Function.BreastUVPhysics(ObjectInstance, Character, Extra, Data)
		if PlayerData[Data].BodyPartPhysics and PlayerData[Data].UVToggle then
			local Torso = Character:FindFirstChild("Torso")

			if Torso then
				local Rotation = {
					X = 2.5,
					Y = -5,
					Z = 0
				}
				local Position = {
					X = 0,
					Y = 0,
					Z = 0
				}	

				Function.SpringCreate(
					ObjectInstance, 
					Torso, 
					Vector3.new(1,1,1) * 3.2, 
					Vector3.new(0,0,0), 
					7.5, 
					0.35, 
					{
						X = "Y",
						Y = "Z",
						Z = "X",
					},
					{
						X = 0,
						Y = 0,
						Z = 0
					},
					{
						X = "Y",
						Y = "Z",
						Z = "Z",
					},
					{
						X = 5,
						Y = -5,
						Z = 5
					},
					Data
				)

			end
		end
	end


	function Function.ButtPhysics(ObjectInstance, Character, Extra, Data)
		if PlayerData[Data].BodyPartPhysics then
			local Torso = Character:FindFirstChild("Torso")

			if Torso then
				local Rotation = {
					X = 2.5,
					Y = -5,
					Z = -2
				}
				local Position = {
					X = 0.5/100,
					Y = 0.5/95,
					Z = 0.5/100
				}	

				Function.SpringCreate(
					ObjectInstance, 
					Torso, 
					Vector3.new(1,1,1) * 5, 
					Vector3.new(0,0,0), 
					15, 
					0.065, 
					{
						X = "X",
						Y = "Y",
						Z = "Z",
					},
					Position,
					{
						X = "Z",
						Y = "Y",
						Z = "X",
					},
					Rotation,
					Data,
					true
				)

			end
		end
	end


	function Function.CreateR6(CF)
		local R6 = Instance.new("Model")
		local R6Humanoid = Instance.new("Humanoid", R6)

		local RootPart = Instance.new("Part", R6)
		RootPart.Name = "HumanoidRootPart"
		RootPart.Size = Vector3.new(2,2,1)
		RootPart.Anchored = true
		RootPart.Transparency = 1

		R6.PrimaryPart = RootPart

		for Name, Property in pairs(R6Map) do
			local Part = Instance.new("Part", R6)
			Part.Size = Property.Size
			Part.CFrame = RootPart.CFrame * Property.Offset
			Part.Anchored = true
			Part.Name = Name

			if Name == "Head" then
				local SpecialMesh = Instance.new("SpecialMesh", Part)
				SpecialMesh.MeshType = Enum.MeshType.Head
				SpecialMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
			end
		end

		for Name, Property in pairs(R6Joints) do
			local Joint = Instance.new("Motor6D",R6[Property["Part0"]])
			Joint.Name = Name
			Joint.C0 = Property["C0"]
			Joint.C1 = Property["C1"]
			Joint.Part0 = Property["Part0"]
			Joint.Part1 = Property["Part1"]
		end


		return R6
	end

	function Function.PlayerDataAdd(Name)
		if not PlayerData[Name] then
			PlayerData[Name] = Function.PlayerDataDefault()
		end
	end

	function Function.Weld(PartConfig, Character,Extra,Data)
		task.spawn(function()
			local INSTANCE = PartConfig["Instance"]
			local NAME = PartConfig["Name"]
			print("Processing "..NAME)
			local CFRAME = PartConfig["Joint"]["CFrame"]
			local CFRAME1 = PartConfig["Joint"]["CFrame1"]

			local TRANSPARENCY = PartConfig["Transparency"]
			local MATERIAL = PartConfig["Material"]
			local COLOR = PartConfig["Color"]

			local PARENT = PartConfig["Parent"]
			local FUNCTION = PartConfig["Function"]

			local SCALE = PartConfig["Scale"]
			local SIZE = PartConfig["Size"]
			local ADJUSTSCALE = PartConfig["AdjustScale"]

			local MESHID = PartConfig["MeshId"]
			local TEXTUREID = PartConfig["TextureId"]

			local SHAPE = PartConfig["Shape"]

			local PHYSICS = PartConfig["Physics"]
			local EXTRA = PartConfig["Extra"]

			if PARENT[1] == nil then
				PARENT[1] = "Torso"
			end
			local BodyPart = Character.Morph:FindFirstChild(PARENT[1])
			if BodyPartSize[BodyPart] == nil then
				BodyPart = Character.Torso
			end
			if BodyPart then
				local XMultiply, YMultiply, ZMultiply = Function.MultiplyCalculate(BodyPart.Size, BodyPartSize[BodyPart.Name])
				local ObjectInstance
				print(XMultiply,YMultiply,ZMultiply)
				local Parent = Character.Morph
				local Scale = 1

				for Index = 1, #PARENT do
					if Parent == nil then break end
					Parent = Parent:FindFirstChild(PARENT[Index])
				end

				if Parent == nil then warn("Parent of "..NAME.." is missing!... Missing Parent: "..PARENT[#PARENT]..".. Deferring Weld.") 
					if not PlayerData[Data].deferredWelds[PARENT[#PARENT]] then
						PlayerData[Data].deferredWelds[PARENT[#PARENT]] = {PartConfig}
					else
						table.insert(PlayerData[Data].deferredWelds[PARENT[#PARENT]], PartConfig)
					end
					return end

				if SCALE  then

					local scale = Function.TabletoVector(SIZE)
					if PlayerData[Data][SCALE] >= 1 then
						Scale = 1 + ((PlayerData[Data][SCALE] - 1) / 5)
					else
						Scale = 1 + ((PlayerData[Data][SCALE] - 1) / 10)
					end
					if PlayerData[Data][SCALE] == 1 then Scale = 1 end

					if ADJUSTSCALE == nil or ADJUSTSCALE ~= nil and table.find(ADJUSTSCALE, "Size") ~= nil  then
						SIZE = Function.Vector3Multiply(scale, {X= Scale, Y = Scale, Z = Scale})
					end
					if ADJUSTSCALE == nil or ADJUSTSCALE ~= nil and table.find(ADJUSTSCALE, "CFrame1") ~= nil  then

						CFRAME1 = Function.CFrameMultiply(Function.Table2CF(CFRAME1), {X= Scale, Y = Scale, Z = Scale})
					end
					if  ADJUSTSCALE ~= nil and table.find(ADJUSTSCALE, "CFrame") ~= nil  then
						CFRAME = Function.CFrameMultiply(Function.Table2CF(CFRAME), {X= Scale, Y = Scale, Z = Scale})
					end
				end

				if INSTANCE == "Mesh" then
					ObjectInstance = IS:CreateMeshPartAsync(MESHID, Enum.CollisionFidelity.Box, Enum.RenderFidelity.Performance)
					if TEXTUREID ~= nil then
						ObjectInstance.TextureID = TEXTUREID
					end
				end

				if INSTANCE == "Part" then
					local MeshConfig = PartConfig["Mesh"]

					ObjectInstance = Instance.new("Part")
					ObjectInstance.Shape = SHAPE

					if MeshConfig ~= nil then
						local Mesh = Instance.new("SpecialMesh",ObjectInstance)
						Mesh.Name = NAME..".Mesh"

						local scale = Function.TabletoVector(MeshConfig["Scale"])
						Mesh.Scale = scale
						Mesh.MeshId = MeshConfig["MeshId"]
						Mesh.MeshType = MeshConfig["MeshType"]
						Mesh.TextureId = MeshConfig["TextureId"]
						if MeshConfig["MeshType"] == Enum.MeshType.FileMesh then
							Mesh.Scale = Function.Vector3Multiply(scale, {X = XMultiply, Y = YMultiply, Z = ZMultiply})
							if SCALE then
								warn("SET SCALE")
								warn(Scale)
								Mesh.Scale = Function.Vector3Multiply(Mesh.Scale, {X= Scale, Y = Scale, Z = Scale})
							end
						end
					end
				end

				if EXTRA ~= nil then
					for Name, Property in pairs(EXTRA) do

						local Instance = Instance.new("Decal",ObjectInstance)
						Instance.Name = Name
						Instance.Transparency = Property["Transparency"]
						Instance.ZIndex = Property["ZIndex"]
						Instance.Face = Property["Face"]
						Instance.Texture = Property["Texture"]
						Instance.Color3 = Function.DarkenColor(Character.Torso.Color,0.32)
					end
				end


				ObjectInstance.CanCollide = false
				ObjectInstance.CanQuery = false
				ObjectInstance.CanTouch = false
				ObjectInstance.Massless = true

				ObjectInstance.Name = NAME
				ObjectInstance.Transparency = TRANSPARENCY
				ObjectInstance.Material = MATERIAL


				local WeldInstance = Instance.new("Motor6D", ObjectInstance)
				WeldInstance.Name = NAME.." Weld"

				local scale = Function.TabletoVector(SIZE)

				ObjectInstance.Parent = Parent

				ObjectInstance.Size = Function.Vector3Multiply(scale, {X = XMultiply, Y = YMultiply, Z = ZMultiply})

				WeldInstance.C0 = Function.CFrameMultiply(Function.Table2CF(CFRAME), {X = XMultiply, Y = YMultiply, Z = ZMultiply})
				WeldInstance.C1 = Function.CFrameMultiply(Function.Table2CF(CFRAME1), {X = XMultiply, Y = YMultiply, Z = ZMultiply})

				WeldInstance.Part0 = Parent
				WeldInstance.Part1 = ObjectInstance
				if PHYSICS and PHYSICS["PhysicsRotationOffset"] then
					ObjectInstance:SetAttribute("PhysicsRotationOffset",Function.TabletoString(PartConfig["Physics"]["PhysicsRotationOffset"]))
				end

				if COLOR ~= nil and COLOR ~= "Base" then
					ObjectInstance.Color = Function.DarkenColor(Character.Torso.Color,PlayerData[Data].colorConfig.Values["110, 110, 111"])

				else
					ObjectInstance.Color = Character.Torso.Color
				end


				if FUNCTION ~= "" then
					if typeof(FUNCTION) == "string" then
						Function[FUNCTION](ObjectInstance, Character, Extra, Data)
					elseif typeof(FUNCTION) == "table" then
						for i, v in pairs(FUNCTION) do
							if typeof(i) == "number" then
							Function[v](ObjectInstance, Character, Extra, Data)
							else
								Function[i](ObjectInstance, Character, Extra, Data,v)
							end
						end
					end
				end

				if Extra.UVToggle then
					if NAME:lower():find("nipple") 
						or NAME:lower():find("butt")  then
						ObjectInstance.Transparency = 1
					end
					if NAME:lower():find("skin") then
						ObjectInstance.Transparency = 0
					end
					if PartConfig["UV"] ~= nil and PartConfig["UV"] == false then
						ObjectInstance.Transparency = 1
					end
					for i,v in pairs(PlayerData[Data].CurrentPartList.AreolaDecal) do
						if v:FindFirstChildOfClass("Decal") then
							v:FindFirstChildOfClass("Decal"):Destroy()
						end
					end
					if Character.Morph:FindFirstChild("Closed") then
						Character.Morph.Closed:Destroy()
					end
					Function.ApplyUV(ObjectInstance, Character, Extra, Data)
				end

				PlayerData[Data].CurrentPartList.Organ[ObjectInstance.Name] = ObjectInstance
				PlayerData[Data].CurrentPartList.RealtimeUpdateList.Mesh[ObjectInstance] = {Size = SIZE, CFrame = WeldInstance.C0, CFrame1 = WeldInstance.C1, Base = BodyPart, Weld = WeldInstance}

				print(ObjectInstance.Name.." Processed")

				if PlayerData[Data].deferredWelds[NAME] then

					for index,object in pairs(PlayerData[Data].deferredWelds[NAME]) do
						warn("Picked up a deferee")
						Function.Weld(object,Character,Extra,Data)
						PlayerData[Data].deferredWelds[NAME][index] = nil
					end

				end

				return ObjectInstance
			end
		end)
	end

	function Function.ParseCharacter(Character, Data)

		local R6_2_R15= {
			["Torso"] = {
				C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0,0,0),
				C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0),
				Part0 = "UpperTorso",
				Part1 = "Torso"
			},
			["Left Leg"] = {
				C0 = CFrame.new(0, 0.201, -0) * CFrame.Angles(0,0,0),
				C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0),
				Part0 = "LeftLowerLeg",
				Part1 = "Left Leg"
			},
			["Left Arm"] = {
				C0 = CFrame.new(0, 0.224, -0) * CFrame.Angles(0,0,0),
				C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0),
				Part0 = "LeftLowerArm",
				Part1 = "Left Arm"
			},
			["Right Leg"] = {
				C0 = CFrame.new(0,0.201,0) * CFrame.Angles(0,0,0),
				C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0),
				Part0 = "RightLowerLeg",
				Part1 = "Right Leg"
			},
			["Right Arm"] = {
				C0 = CFrame.new(0,0.224,0) * CFrame.Angles(0,0,0),
				C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0),
				Part0 = "RightLowerArm",
				Part1 = "Right Arm"
			},
		}

		if Character then
			for i,v in pairs(Character:GetChildren()) do
				if not v:IsA("BasePart") then continue end
				if v.Name == "Head" then continue end
				v.Transparency = 1
			end

			for Name,BodyPart in pairs(R6Map) do
				if Character:FindFirstChild(Name) then continue end
				local Part = Instance.new("Part", Character)
				Part.Size = BodyPart["Size"]
				Part.Name = Name
				Part.Transparency = 0
				Part.CanCollide = false
				Part.CanQuery = false
				Part.CanTouch = false
				Part.Massless = true
				Part.Color = Character.Head.Color
				local Mesh = Instance.new("SpecialMesh",Part)
				Mesh.MeshId = "rbxassetid://12221758"

				if Name ~= "Torso" then
					Mesh.Scale = Vector3.new(0.5,1,1)
				end
				table.insert(PlayerData[Data].CurrentPartList.Organ,Part)
			end
			for Name, Property in pairs(R6_2_R15) do
				local Joint = Instance.new("Motor6D",Character[Property["Part0"]])
				Joint.Name = Name
				Joint.C0 = Property["C0"]
				Joint.C1 = Property["C1"]
				Joint.Part0 = Character[Property["Part0"]]
				Joint.Part1 = Character[Property["Part1"]]
			end
		end
	end

	function Function.CharacterReset(Character, Data)

		if Character == nil then return end
	 
		local PartList = PlayerData[Data].CurrentPartList

		for i,v in pairs(PartList.Organ) do
			v:Destroy()
		end

		for i,v in pairs(PartList.Accessory) do
			v:Destroy()
		end

		for i,v in pairs(PartList.Clothes) do
			v:Destroy()
		end

		PlayerData[Data].CurrentPartList = Function.PlayerDataDefault().CurrentPartList

		for i,v:BasePart in pairs(Character:GetChildren()) do
			local Limbs = {"Torso","Head","Right Arm","Right Leg","Left Arm","Left Leg"}
			if v:IsA("BasePart") and table.find(Limbs,v.Name) ~= nil then
				v.Transparency = 0
			end
			if v.Name == "Morph" then
				v:Destroy()
			end
		end
		for i,v in pairs(Character.PrimaryPart:GetChildren()) do
			if v:IsA("Clothing") then
				v.Parent = Character
			end
		end
	end

	function Function.CharacterExecute(Character, Data)
		task.spawn(function()
			if Character then
				Function.PlayerDataAdd(Data)
				Function.CharacterReset(Character,Data)

				local DataConfig = PlayerData[Data]

				local Humanoid = Character:FindFirstChildOfClass("Humanoid")
				

				local Extra = {
					Shirt = Character:FindFirstChildOfClass("Shirt"),
					Pants = Character:FindFirstChildOfClass("Pants"),
					TShirt = Character:FindFirstChildOfClass("ShirtGraphic"),
					UVToggle = DataConfig.UVToggle
				}
				
				local SelectedMorph = DataConfig.SelectedMorph
				
				if SelectedMorph.NoUV == true then
					Extra["UVToggle"] = false
				end
		
				if not Extra.UVToggle then
					for i,v in pairs(Extra) do
						if typeof(v) == "Instance" and v:IsA("Clothing") then
							v.Parent = Character.PrimaryPart
						end
					end
				end

				if Humanoid.RigType == Enum.HumanoidRigType.R15 then
					Function.ParseCharacter(Character,Data)
				end

				local PartListData = DataConfig.PartList

				local Morph

				local function createContainer(Name)
					local Container = Instance.new("Part",Morph)
					Container.Name = Name
					Container.Size = Vector3.new(2, 2, 1)
					Container.Transparency = 1
					Container.CanCollide = false
					Container.Massless = true
					return Container
				end
				local function createWeld(Part)
					local Weld = nil
					Weld = Instance.new("Weld")
					Weld.Parent = Part
					Weld.Name = Part.Name.."_Weld"
					return Weld
				end

				local function createLimbs()

					Morph = Instance.new("Model",Character)
					Morph.Name = "Morph"

					local M_Torso = createContainer("Torso")

					M_Torso.Size = Vector3.new(2, 2, 1)
					local M_RL = createContainer("Right Leg")
					M_RL.Size = Vector3.new(1, 2, 1)

					local M_LL = createContainer("Left Leg")
					M_LL.Size = Vector3.new(1, 2, 1)

					local M_RA = createContainer("Right Arm")
					M_RL.Size = Vector3.new(1, 2, 1)

					local M_LA = createContainer("Left Arm")
					M_LL.Size = Vector3.new(1, 2, 1)


					table.insert(DataConfig.CurrentPartList.Organ,Morph)
					for _, i in pairs(Morph:GetChildren()) do
						i.CanCollide = false
						i.Massless = true
						local Weld = createWeld(i)
						Weld.Part0 = Character[i.Name]
						Weld.Part1 = i
						i.Color = Character[i.Name].Color
						Character[i.Name].Transparency = 0
					end
					
		
					
					for _, object in pairs(SelectedMorph.Limbs) do
						Function.Weld(object, Character,Extra, Data)
						task.spawn(function()
							if Morph:FindFirstChild(object["Parent"][1]) then
								Character[object["Parent"][1]].Transparency = 1
							end
						end)
					end


				end

				createLimbs()

				pcall(function()
					for name, object in pairs(SelectedMorph.Main) do
						Function.Weld(object, Character,Extra, Data)
					end	
				end)

				pcall(function()
					for name, object in pairs(SelectedMorph.Vaginas) do
						local VModel = createContainer("Closed")
						VModel.Color = Character.Torso.Color
						local Weld = createWeld(VModel)
						Weld.Part0 = Morph.Torso
						Weld.Part1 = VModel


						for _, OBJECT in pairs(object) do
							Function.Weld(OBJECT, Character,Extra, Data)
						end
					end
				end)

				pcall(function()
					for name, object in pairs(SelectedMorph.Breasts) do
						object["Scale"] = "BreastsScale"
						Function.Weld(object, Character,Extra, Data)
					end
				end)
				pcall(function()
					for name, object in pairs(SelectedMorph.Butts) do
						object["Scale"] = "ButtsScale"
						Function.Weld(object, Character,Extra, Data)
					end
				end)

			end
		end)
	end

	local ExecutePlayer = Players:FindFirstChild(SelectPlayer)
	if ExecutePlayer then
		local ExecuteCharacter = ExecutePlayer.Character
		if ExecuteCharacter then
			Function.CharacterExecute(ExecuteCharacter, ExecuteCharacter.Name)

		end
	end

	local RenderConnect = RunService.RenderStepped:Connect(function()
		for PlayerName, DataList in pairs(PlayerData) do
			for Part, Property in pairs(DataList.CurrentPartList.RealtimeUpdateList.Mesh) do

				task.spawn(function()
					local Base = Property.Base
					local CFRAME = Property.CFrame
					local CFRAME1 = Property.CFrame1
					local SIZE = Property.Size
					local Weld = Property.Weld

					local XMultiply, YMultiply, ZMultiply = Function.MultiplyCalculate(Base.Size, BodyPartSize[Base.Name])
					local CCFRAME = CFrame.new(CFRAME.Position.x * XMultiply, CFRAME.Position.y * YMultiply, CFRAME.Position.z * ZMultiply) * CFRAME.Rotation
					local CCFRAME1 = CFrame.new(CFRAME1.Position.x * XMultiply, CFRAME1.Position.y * YMultiply, CFRAME1.Position.z * ZMultiply) * CFRAME1.Rotation

					if PlayerData[PlayerName].CurrentPartList.BodyPartPhysics[Part] == nil then
						Part.Size = Vector3.new(SIZE.x * XMultiply, SIZE.y * YMultiply, SIZE.z * ZMultiply)
						Weld.C0 = CCFRAME
						Weld.C1 = CCFRAME1

					else
						PlayerData[PlayerName].CurrentPartList.BodyPartPhysics[Part].CF = CCFRAME
						PlayerData[PlayerName].CurrentPartList.BodyPartPhysics[Part].CF1 = CCFRAME1
					end
				end)
			end
		end
	end)

	local PhysicsConnect = RunService.Stepped:Connect(function(t,d)
		for PlayerName, DataList in pairs(PlayerData) do
			for Part, Property in pairs(DataList.CurrentPartList.BodyPartPhysics) do
				task.spawn(function()
					if Function.FallenPartCheck(Part) then
						DataList.CurrentPartList.BodyPartPhysics[Part] = nil
						return
					end

					local Character = Player.Character

					if Character then
						local Base = Property.Base
						local Camera = game.Workspace.CurrentCamera

						local CurrentCFrame = Base.CFrame
						local _, withinScreenBounds = Camera:WorldToScreenPoint(Base.Position)
						if (Camera.CFrame.Position - Base.Position).Magnitude < 300 and withinScreenBounds then
							local Weld = Property.Weld
							local CF = Property.CF
							local CF1 = Property.CF1
							local Spring = Property.Spring
							local OriginCFrame = Property.OriginCFrame
							local PositionOffset = Property.PositionOffset
							local RotationOffset = Property.RotationOffset
							local Position = Property.Position
							local Rotation = Property.Rotation

							local OriginPosition = OriginCFrame.Position
							local CurrentPosition = CurrentCFrame.Position
							local PositionDistance = (OriginPosition - CurrentPosition)

							local OriginLookVector = OriginCFrame.LookVector
							local CurrentLookVector = CurrentCFrame.LookVector
							local LookVectorDistance = (OriginLookVector - CurrentLookVector)
							local LookVectorAxis = Vector3.new(LookVectorDistance.X, LookVectorDistance.Y, 0)

							Spring:TimeSkip(d)
							Spring:Impulse(PositionDistance + LookVectorAxis, 0, 0)

							local NoiseBuffer = Vector3.new(0.0015,0.0015,0.0015)

							local NoiseCheckX,NoiseCheckY,NoiseCheckZ = Function.CompareVector3(Spring.Velocity,NoiseBuffer)

							if NoiseCheckX == true and NoiseCheckY == true and NoiseCheckZ == true then
								return
							end



							local PositionList = {
								X = 0,
								Y = 0,
								Z = 0
							}

							local RotationList = {
								X = 0,
								Y = 0,
								Z = 0

							}
							for From, To in pairs(PositionOffset) do
								PositionList[From] = (Position[To] * Spring.Velocity[To]) * PositionPhysicsMultiply
							end

							for From, To in pairs(RotationOffset) do
								RotationList[From] = (math.rad(Rotation[To] * (Random.new():NextNumber(1, 1.01)* Spring.Velocity[To]))) * RotationPhysicsMultiply 
							end

							local scaleVector = Vector3.new(
								1,
								1,
								1
							)

							if Property.Scale ~= nil and Property.Scale then
								scaleVector = Vector3.new(
									math.clamp(1+ RotationList.X/4,0.8,1.1),
									math.clamp(1+ RotationList.Y/4,0.8,1.1),
									math.clamp(1+ RotationList.Z/4,0.8,1.1)
								)

								task.spawn(function()		
									Part.Size = Property.Size * scaleVector
									local mesh = Part:FindFirstChildOfClass("SpecialMesh")
									if mesh then
										mesh.Scale = Property.Size * scaleVector
									end
								end)
							end


							Weld.C0 = CF *
								Function.CFrameMultiply(
									CFrame.new(
										PositionList.X,
										PositionList.Y,
										PositionList.Z
									),
									{ X = scaleVector.X, Y = scaleVector.Y, Z = scaleVector.Z }
								) *
								CFrame.Angles(
									RotationList.X,
									RotationList.Y,
									-RotationList.Z
								)


						end

						PlayerData[PlayerName].CurrentPartList.BodyPartPhysics[Part].OriginCFrame = CurrentCFrame 
					end
				end)
			end
		end

	end)




	local currentMorph = 1
	game:GetService("UserInputService").InputBegan:Connect(function(input,gpe)
		if not gpe then
			if input.KeyCode == Enum.KeyCode.C then
				PlayerData[Player.Name].UVToggle = not PlayerData[Player.Name].UVToggle
				Function.CharacterExecute(Player.Character, Player.Name)
				warn("Toggled UV")
			end
			if input.KeyCode == Enum.KeyCode.RightBracket then
				PlayerData[Player.Name].BreastsScale = PlayerData[Player.Name].BreastsScale+ 0.1
				warn("Breasts set to "..	PlayerData[Player.Name].BreastsScale)
				PlayerData[Player.Name].ButtsScale = PlayerData[Player.Name].ButtsScale+ 0.1
				warn("Butts set to "..	PlayerData[Player.Name].ButtsScale)
				Function.CharacterExecute(Player.Character, Player.Name)
			end
			if input.KeyCode == Enum.KeyCode.LeftBracket then
				PlayerData[Player.Name].BreastsScale = PlayerData[Player.Name].BreastsScale- 0.1
				warn("Breasts set to "..	PlayerData[Player.Name].BreastsScale)
				PlayerData[Player.Name].ButtsScale = PlayerData[Player.Name].ButtsScale- 0.1
				warn("Butts set to "..	PlayerData[Player.Name].ButtsScale)
				Function.CharacterExecute(Player.Character, Player.Name)
			end
			if input.KeyCode == Enum.KeyCode.B then
				for i,v in pairs(Players:GetPlayers()) do
					Function.CharacterExecute(v.Character,v.Name)
				end
			end
			if input.KeyCode == Enum.KeyCode.P then
				local partList = Function.PartListDefault()
				local keys = {}
				for k in pairs(partList) do
					table.insert(keys, k)
				end
				currentMorph+=1
				if currentMorph > #keys then currentMorph = 1 end
				
				local morph = keys[currentMorph]
				for _, player in ipairs(Players:GetPlayers()) do
					task.spawn(function()
						PlayerData[player.Name]["SelectedMorph"] = Function.PartListDefault()[morph]
						Function.CharacterExecute(player.Character, player.Name)
						warn("Morph changed to " ..morph)
						
					end)
				end
			end
			if input.KeyCode == Enum.KeyCode.Equals then
				local playerMouse = Player:GetMouse()
				local highlight = Instance.new("Highlight")
				local lastModel = nil 

				local function updateHighlight()
					local target = playerMouse.Target
					local model = target and target:FindFirstAncestorOfClass("Model")
					if model ~= lastModel then
						lastModel = model
						highlight.Parent = nil 
						if model and model:FindFirstChildOfClass("Humanoid") then
							highlight.Parent = model
						end
					end
				end

				local updateConn = RunService.RenderStepped:Connect(updateHighlight)
				local clickConn = nil
				clickConn = playerMouse.Button1Down:Connect(function()
					local selectedCharacter = highlight.Parent 
					if selectedCharacter then
						Function.CharacterExecute(selectedCharacter, selectedCharacter.Name)
					end
					updateConn:Disconnect() 
					clickConn:Disconnect()
					highlight:Destroy() 
				end)
			end


		end
	end)

	local TextChatService = game:GetService("TextChatService")
	TextChatService.MessageReceived:Connect(function(TextChatMessage)
		local Player = TextChatMessage.TextSource
		local Command = TextChatMessage.Text
		Command = string.split(Command, " ")
		if Command[1] == "/execute" then
			Function.CharacterExecute(workspace:FindFirstChild(Command[2]),Command[2])
		end
	end)

end

task.wait(1)
run(Players.LocalPlayer)

