local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Ogre Piece",
			uuid = "ed7bd2c1-3044-717b-82eb-a3fd1c8dc47f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Ogre Piece",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\ndrawer:addTimedCircleOnEnt(30000, eventArgs.entityID, 10, 0, false, true)\nself.used = true",
						conditions = 
						{
							
							{
								"6be87ea7-9013-86bb-9cdb-081a1dc63c27",
								true,
							},
						},
						name = "Draw Ball of Fire Circle",
						uuid = "c4357964-0bf8-e0d1-9e4b-d59b41f3d8d0",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertTTS = true,
						alertText = "Tether",
						conditions = 
						{
							
							{
								"6be87ea7-9013-86bb-9cdb-081a1dc63c27",
								true,
							},
						},
						name = "Tether Alert",
						uuid = "b4b3ee24-1eed-b87f-acc5-79bbd8a08301",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.entityContentID == 14540",
						name = "Ball of Fire",
						uuid = "6be87ea7-9013-86bb-9cdb-081a1dc63c27",
						version = 3,
					},
				},
			},
			eventType = 5,
			name = "Ball of Fire Tether Circle",
			timeout = 30,
			uuid = "4499039f-b1fb-ba8d-8cd1-5741c71a82e3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ogre Piece",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nif caster ~= nil and caster.pos ~= nil then\n    local timeout = eventArgs.channelTimeMax * 1000\n    local midpointX = caster.pos.x + math.sin(caster.pos.h) * 20\n    local midpointZ = caster.pos.z + math.cos(caster.pos.h) * 20\n\n    drawer:addTimedCone(timeout, caster.pos.x, caster.pos.y, caster.pos.z, 40, math.pi * 2 / 3, caster.pos.h, 0, false, true)\n    drawer:addTimedArrow(timeout, midpointX, caster.pos.y, midpointZ, caster.pos.h + math.pi, 3, 0.8, 2, 1.6, 0, false, true)\n    self.used = true\nend",
						conditions = 
						{
							
							{
								"bd8ecbc0-74b5-de54-9e96-3647ee86f1c6",
								true,
							},
						},
						endIfUsed = true,
						name = "Draw Scorching Smite",
						uuid = "039097d3-438a-dd4e-801e-0133aaba9c4a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Scorching Smite",
						spellIDList = 
						{
							46912,
							49688,
						},
						uuid = "bd8ecbc0-74b5-de54-9e96-3647ee86f1c6",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Scorching Smite AOE",
			timeout = 12,
			uuid = "d72853db-704e-335f-925a-904afe3a512d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ogre Piece",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\ndrawer:addTimedCircleOnEnt(17000, eventArgs.entityID, 2, 0, false, true)\nself.used = true",
						conditions = 
						{
							
							{
								"6bb94e83-40f9-c7a5-b8bb-250e0a07bad4",
								true,
							},
						},
						endIfUsed = true,
						name = "Draw Wisp Circle",
						uuid = "97910eaa-9d77-4ca4-ae29-b12f92ad4b20",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"6bb94e83-40f9-c7a5-b8bb-250e0a07bad4",
								true,
							},
						},
						name = "Target Nearest Wisp",
						setTarget = true,
						targetName = "Wisp Piece",
						targetType = "Named Target",
						uuid = "48c5d084-2dcb-980b-96ba-51c6536551eb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.entityName == \"Wisp Piece\" or eventArgs.entityName == \"Great Wisp Piece\"",
						name = "Wisp Pieces",
						uuid = "6bb94e83-40f9-c7a5-b8bb-250e0a07bad4",
						version = 3,
					},
				},
			},
			eventType = 5,
			name = "Wisp Piece Circles",
			timeout = 60,
			uuid = "72945199-7056-67a2-b665-b8a863095f35",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Banemite Piece",
			uuid = "993e631b-7775-1d76-86ff-1a40e89462d6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Banemite Piece",
			actions = 
			{
				
				{
					data = 
					{
						actionID = 46751,
						atomicPriority = true,
						conditions = 
						{
							
							{
								"5e63b3e8-f0cd-3999-bfb2-78273292be47",
								true,
							},
						},
						name = "Use Snarl",
						targetType = "Event Entity",
						uuid = "857423e4-f2aa-bff6-aba5-09d4acd03525",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 46750,
						conditions = 
						{
							
							{
								"5e63b3e8-f0cd-3999-bfb2-78273292be47",
								true,
							},
							
							{
								"b341ae44-553d-d7a7-aaf4-9ce9b1dfa91f",
								true,
							},
							
							{
								"8581cff7-ccd6-6a63-ba7a-1e6cdb2da4dd",
								true,
							},
						},
						name = "Use Challenge",
						targetType = "Event Entity",
						uuid = "08ab8117-01c2-0487-91df-791aafd4c67c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 46906,
						name = "Deadly Thrust",
						uuid = "5e63b3e8-f0cd-3999-bfb2-78273292be47",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionUUID = "857423e4-f2aa-bff6-aba5-09d4acd03525",
						category = "Action",
						name = "Snarl used",
						uuid = "b341ae44-553d-d7a7-aaf4-9ce9b1dfa91f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 10,
						actionID = 46751,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "Snarl cooldown <= 10s",
						uuid = "8581cff7-ccd6-6a63-ba7a-1e6cdb2da4dd",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Deadly Thrust - Snarl then Challenge",
			timeout = 12,
			uuid = "0452edab-e6ad-e88a-929d-dec316ea8db0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Arch Demon Piece",
			uuid = "607d6b52-642f-2cd1-8994-10df5d4b60ae",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Arch Demon Piece",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\nlocal sword = TensorCore.mGetEntity(eventArgs.entityID)\nif sword ~= nil and sword.pos ~= nil then\n    drawer:addTimedCircle(3650, sword.pos.x, sword.pos.y, sword.pos.z, 6, 0, false, true)\n    self.used = true\nend",
						conditions = 
						{
							
							{
								"2324635b-57c0-25e1-b0b7-754ee94ae7b4",
								true,
							},
						},
						endIfUsed = true,
						name = "Draw sword circle",
						uuid = "434c481f-cca9-2610-a469-1f9b836cfdfc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Transfixion sword",
						spellIDList = 
						{
							46882,
						},
						uuid = "2324635b-57c0-25e1-b0b7-754ee94ae7b4",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Abyssal Transfixion Sword Circles",
			uuid = "19c08d88-4229-78db-99eb-55a02a187971",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Arch Demon Piece",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\nlocal sword = TensorCore.mGetEntity(eventArgs.entityID)\nif sword ~= nil and sword.pos ~= nil then\n    drawer:addTimedCircle(3500, sword.pos.x, sword.pos.y, sword.pos.z, 3, 0, false, true)\n    self.used = true\nend",
						conditions = 
						{
							
							{
								"5039f442-4468-d23e-83fa-8e0aed2ba395",
								true,
							},
						},
						endIfUsed = true,
						name = "Draw follow-up circle",
						uuid = "9ed49992-13a4-f2c4-a153-0375f1258e0f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Follow-up sword",
						spellIDList = 
						{
							46884,
						},
						uuid = "5039f442-4468-d23e-83fa-8e0aed2ba395",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Abyssal Transfixion Follow-up Sword Circles",
			timeout = 25,
			uuid = "b81fa17f-855b-19f1-8c50-6b566f4914b8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Bone Knights",
			uuid = "9a02db8a-e798-6e1e-9b05-846e25d80e54",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Bone Knights",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\ndrawer:addTimedDonutOnEnt(eventArgs.channelTimeMax * 1000, eventArgs.entityID, 4, 100, 0, false, false)\nself.used = true",
						conditions = 
						{
							
							{
								"3a5d75b8-b7e6-fc04-b47e-1fbd3965e816",
								true,
							},
						},
						name = "Red Danger Outside 4y",
						uuid = "8f9377ed-7c8b-3e52-baf3-341ea24930a9",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 46867,
						name = "Spell 46867",
						uuid = "3a5d75b8-b7e6-fc04-b47e-1fbd3965e816",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Death Spiral Draw",
			uuid = "2c309964-c519-5bbe-81d7-f19a63dd9872",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Bone Knights",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\ndrawer:addTimedCircleOnEnt(4700, eventArgs.entityID, 6, 0, false, true)\nself.used = true",
						alertDuration = 4700,
						alertPriority = 3,
						alertText = "Tumulus (6y)",
						conditions = 
						{
							
							{
								"9629e49d-244d-6a47-9c9d-bb56bd505ec9",
								true,
							},
						},
						name = "Draw - Tumulus (6y)",
						uuid = "49cc8df4-c05a-195e-b46d-95997df1858a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 46866,
						name = "Tumulus",
						uuid = "9629e49d-244d-6a47-9c9d-bb56bd505ec9",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Tumulus Draw",
			uuid = "81bd3063-2396-2415-97a6-45b321e4ae12",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Bone Knights",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nif caster ~= nil and caster.pos ~= nil then\n    local quarter_turn = math.pi / 2\n    local x = caster.pos.x\n    local y = caster.pos.y\n    local z = caster.pos.z\n    local origin_heading = caster.pos.h\n    local followup_delays = {5600, 8200, 10800, 13400}\n    local followup_duration = 3000\n    drawer:addTimedCircleOnEnt(5700, eventArgs.entityID, 5, 0, false, true)\n    for i = 0, 3 do\n        local heading = origin_heading + quarter_turn * i\n        for wave = 1, 4 do\n            local distance = wave * 3\n            local position = TensorCore.getPosInDirection(caster.pos, heading, distance)\n            drawer:addTimedCircle(followup_duration, position.x, position.y, position.z, 5, followup_delays[wave], false, true)\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"3f3fe136-13aa-bdb3-bc2a-2b8adae67acc",
								true,
							},
						},
						name = "Draw - Black Eruption (timed circles removed on impact)",
						uuid = "3afd726f-61a7-535c-9d31-2c62df60f9d3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Black Eruption AOE",
						spellIDList = 
						{
							46874,
						},
						uuid = "3f3fe136-13aa-bdb3-bc2a-2b8adae67acc",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Black Eruption Draw",
			timeout = 6,
			uuid = "ccd47108-1724-c2ec-bc59-4e7cc064ee41",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Bone Knights",
			actions = 
			{
				
				{
					data = 
					{
						actionID = 46751,
						conditions = 
						{
							
							{
								"16d74329-8fd9-a70f-ba89-031b5d606def",
								true,
							},
						},
						name = "Use Snarl",
						targetType = "Event Entity",
						uuid = "48f7b2bc-17f3-6675-8877-1ba3a677d3fc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Forward Guard",
						spellIDList = 
						{
							46864,
						},
						uuid = "16d74329-8fd9-a70f-ba89-031b5d606def",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Forward Guard - Snarl",
			timeout = 10,
			uuid = "c0d5b9f9-f04c-2b2c-a572-7eebdb86d9cc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Bone Knights",
			actions = 
			{
				
				{
					data = 
					{
						actionID = 46750,
						conditions = 
						{
							
							{
								"fb4de9a5-5098-bdd0-b43d-fd9b99b97b61",
								true,
							},
							
							{
								"c1d57d75-a295-6ba6-b613-6374316980a7",
								true,
							},
						},
						name = "Use Challenge",
						targetType = "Current Target",
						uuid = "1f1e3c50-ca44-f7d6-abc1-0cf832d33e7e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventBuffID = 2552,
						name = "Directional Parry applied",
						uuid = "fb4de9a5-5098-bdd0-b43d-fd9b99b97b61",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 2552,
						name = "Directional Parry gone",
						uuid = "c1d57d75-a295-6ba6-b613-6374316980a7",
						version = 3,
					},
				},
			},
			eventType = 8,
			name = "Directional Parry Removed - Challenge",
			timeout = 30,
			uuid = "286394e5-f923-87d9-99b8-b2bebd6cea49",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Deadly Demesne",
			uuid = "b7c4e2a1-5f8d-4a3b-9c1e-2d6f8a0b4c7e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Deadly Demesne",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local channel = 31\nlocal flags = Argus2.RenderFlags\nlocal drawY = eventArgs.y + 0.2\n\nif eventArgs.a5 == 4390915 then\n    local safeDrawer = TensorCore.getStaticFlatDrawer(0x6000FF00, 1.5, channel, flags.FLAG_OCCLUSION_BASE)\n    safeDrawer:addTimedCircle(11800, 520, drawY, -420, 20, 0, false, true, flags.FLAG_OCCLUSION_BASE)\nend\n\nlocal blocker = TensorCore.getStaticFlatDrawer(0, 0, channel, flags.FLAG_OCCLUDE)\nblocker:addTimedCross(11800, eventArgs.x, drawY, eventArgs.z, 15, 10, eventArgs.heading, 0, false, true, flags.FLAG_OCCLUDE)\nself.used = true",
						conditions = 
						{
							
							{
								"f286250f-e330-d748-bc43-1377e5ad0422",
								true,
							},
						},
						name = "Raised Safe Area",
						uuid = "04540671-0684-b571-ad0e-6f7d27641d54",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						comparator = 3,
						dequeueIfLuaFalse = true,
						eventArgType = 5,
						eventIntValue = 2015427,
						name = "Life Claim Nail Marker",
						uuid = "f286250f-e330-d748-bc43-1377e5ad0422",
						version = 3,
					},
				},
			},
			eventType = 29,
			name = "Deadly Demesne - Raised Safe Area",
			uuid = "6cd5d7b6-b7fa-9085-af9f-720a1723a49e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Minotaur Piece",
			uuid = "d4f1a8c3-6e2b-4d9f-8a7c-1b5e9d0f3a26",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Minotaur Piece",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nif caster == nil or caster.pos == nil then\n    self.used = true\n    return\nend\n\nlocal width = eventArgs.aoeWidth\nif width == 0 then\n    width = 8\nend\n\nlocal length = eventArgs.aoeLength\nif length == nil or length <= 0 then\n    length = 25\nend\n\nlocal heading = eventArgs.heading\nif heading == nil then\n    heading = caster.pos.h\nend\n\nlocal drawer = TensorCore.getMoogleFlatDrawer()\ndrawer:addTimedRect(8000, caster.pos.x, caster.pos.y, caster.pos.z, length, width, heading, 0, false, true)\nself.used = true",
						conditions = 
						{
							
							{
								"6727f973-e84b-217a-98ff-4934ccf29d67",
								true,
							},
						},
						name = "Draw - Wild Charge lane",
						uuid = "2eab3ff8-698b-6b36-971f-f2e0d7a5b90c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.aoeID == 48128",
						dequeueIfLuaFalse = true,
						name = "Wild Charge 48128",
						uuid = "6727f973-e84b-217a-98ff-4934ccf29d67",
						version = 3,
					},
				},
			},
			eventType = 18,
			name = "Wild Charge Draw - Minotaur",
			uuid = "6dd07372-d031-bd6d-a356-c94c6194d739",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Gargoyle Piece",
			uuid = "3cf430ab-032c-51e1-bb72-2da7a9b9d43c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Gargoyle Piece",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\ndrawer:addTimedConeOnEnt(11000, eventArgs.entityID, 60, math.pi, nil, 0, false, true, 0, false)\nself.used = true",
						conditions = 
						{
							
							{
								"e7b32582-2574-9ff4-af6a-063e2ccb3a43",
								true,
							},
							
							{
								"c400d883-c0cd-567a-ada2-7ad9799f74ae",
								true,
							},
						},
						name = "Draw Forward then Locked Rear Cleaves",
						uuid = "55a3cae1-0af2-7faa-b995-13cb18328f84",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertTTS = true,
						alertText = "Move Out",
						conditions = 
						{
							
							{
								"e7b32582-2574-9ff4-af6a-063e2ccb3a43",
								true,
							},
							
							{
								"c400d883-c0cd-567a-ada2-7ad9799f74ae",
								true,
							},
						},
						uuid = "bcf81bc3-0f05-0899-bf31-fb1efd099898",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14608,
						name = "Gargoyle Piece",
						uuid = "e7b32582-2574-9ff4-af6a-063e2ccb3a43",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 48717,
						name = "Sweeping Evisceration Cast Start",
						uuid = "c400d883-c0cd-567a-ada2-7ad9799f74ae",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Sweeping Evisceration - Forward then Rear Cleaves",
			uuid = "66b873a3-1a3c-0171-8859-5005adb73fa6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Gargoyle Piece",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\ndrawer:addTimedCone(4000, eventArgs.castPosX, eventArgs.castPosY + 0.05, eventArgs.castPosZ, 60, math.pi, eventArgs.heading + math.pi, 870, false, true, 1)\nself.used = true",
						conditions = 
						{
							
							{
								"5a2318f5-f2dc-940e-b962-3169abba4054",
								true,
							},
							
							{
								"09c0f523-002b-d04a-81da-525379734d6a",
								true,
							},
						},
						name = "Draw Locked Mirrored Rear Cleave",
						uuid = "2098276b-6cf9-1bcc-8bea-00408d9e8b50",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14608,
						name = "Gargoyle Piece",
						uuid = "5a2318f5-f2dc-940e-b962-3169abba4054",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 50932,
						name = "Sweeping Evisceration First Cleave Telegraph",
						uuid = "09c0f523-002b-d04a-81da-525379734d6a",
						version = 3,
					},
				},
			},
			eventType = 2,
			name = "Sweeping Evisceration - Mirrored Rear Cleave",
			uuid = "e998de34-539e-f251-bf21-3bb0c548aa18",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Gargoyle Piece",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\nlocal duration = math.floor(eventArgs.channelTimeMax * 1000)\ndrawer:addTimedCircleOnEnt(duration, eventArgs.entityID, 20, 0, false, true, 1)\nself.used = true",
						conditions = 
						{
							
							{
								"d2d59481-2dea-7217-9875-caead445f0b6",
								true,
							},
							
							{
								"a617a165-beb4-c441-a351-71ed6316dc83",
								true,
							},
						},
						endIfUsed = true,
						name = "Red 20y Tether Range",
						uuid = "a900f56e-0a4a-52cd-8568-789ec6a52eb9",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14608,
						name = "Gargoyle Channel Entity",
						uuid = "d2d59481-2dea-7217-9875-caead445f0b6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 48717,
						name = "Sweeping Evisceration Channel",
						uuid = "a617a165-beb4-c441-a351-71ed6316dc83",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Sweeping Evisceration - Tether Range",
			uuid = "8048292d-06be-7aa0-b1ce-c8f7989f85b9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Borgny the Venomous",
			uuid = "7f2c9e18-4a6b-4d3f-8c1e-b9d047e5a263",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Borgny the Venomous",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\n\nif caster ~= nil and caster.pos ~= nil then\n    local heading = caster.pos.h\n    local jumpDistance = 20\n\n    -- Predict the landing position behind the caster.\n    local landingX = caster.pos.x - math.sin(heading) * jumpDistance\n    local landingZ = caster.pos.z - math.cos(heading) * jumpDistance\n\n    drawer:addTimedCone(\n        8000,\n        landingX,\n        caster.pos.y,\n        landingZ,\n        30,\n        2 * math.pi / 3,\n        heading,\n        0,\n        false,\n        true\n    )\n\n    self.used = true\nend",
						conditions = 
						{
							
							{
								"be136f68-5aa3-6937-afd9-2e29987cc365",
								true,
							},
							
							{
								"5efd16b4-0877-dff8-98c4-5f190fcea495",
								true,
							},
							
							{
								"9fc7715d-66e3-c1f7-a80d-6fe67a886a09",
								true,
							},
						},
						endIfUsed = true,
						name = "Draw Toxic Breath Wall Cone",
						uuid = "445b58f2-1568-8724-9a89-45aad6f67adf",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14628,
						name = "Borgny",
						uuid = "be136f68-5aa3-6937-afd9-2e29987cc365",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 48807,
						name = "Toxic Breath",
						uuid = "5efd16b4-0877-dff8-98c4-5f190fcea495",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						channelCheckTimeRemain = 2,
						channelCheckType = 3,
						comparator = 2,
						conditionType = 5,
						name = "<2 seconds Left on channel",
						partyTargetType = "Event Entity",
						uuid = "9fc7715d-66e3-c1f7-a80d-6fe67a886a09",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "Toxic Breath Wall Cone",
			throttleTime = 5000,
			timeout = 15,
			uuid = "3120534a-06d8-2747-a254-9b2c84ce978c",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
