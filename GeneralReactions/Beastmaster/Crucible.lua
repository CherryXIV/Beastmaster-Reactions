local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Draws",
			uuid = "5e9a2c7f-1b4d-48e6-a3c0-9f7d2e5b8a14",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Draws",
			name = "Ogre Piece",
			uuid = "ed7bd2c1-3044-717b-82eb-a3fd1c8dc47f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
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
						dequeueIfLuaFalse = true,
						name = "Ball of Fire",
						uuid = "6be87ea7-9013-86bb-9cdb-081a1dc63c27",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Ogre Piece",
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
			displayPath = "Draws/Ogre Piece",
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
						dequeueIfLuaFalse = true,
						name = "Wisp Pieces",
						uuid = "6bb94e83-40f9-c7a5-b8bb-250e0a07bad4",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Ogre Piece",
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
			displayPath = "Draws",
			name = "Banemite Piece",
			uuid = "993e631b-7775-1d76-86ff-1a40e89462d6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Banemite Piece",
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
			displayPath = "Draws",
			name = "Arch Demon Piece",
			uuid = "607d6b52-642f-2cd1-8994-10df5d4b60ae",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Arch Demon Piece",
			eventType = 3,
			name = "Abyssal Transfixion Sword Circles",
			uuid = "19c08d88-4229-78db-99eb-55a02a187971",
			version = 2,
		},
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Arch Demon Piece",
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
			displayPath = "Draws",
			name = "Bone Knights",
			uuid = "9a02db8a-e798-6e1e-9b05-846e25d80e54",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Bone Knights",
			eventType = 3,
			name = "Death Spiral Draw",
			uuid = "2c309964-c519-5bbe-81d7-f19a63dd9872",
			version = 2,
		},
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Bone Knights",
			eventType = 3,
			name = "Tumulus Draw",
			uuid = "81bd3063-2396-2415-97a6-45b321e4ae12",
			version = 2,
		},
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Bone Knights",
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
			displayPath = "Draws/Bone Knights",
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
			displayPath = "Draws/Bone Knights",
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
			displayPath = "Draws",
			name = "Deadly Demesne",
			uuid = "b7c4e2a1-5f8d-4a3b-9c1e-2d6f8a0b4c7e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Deadly Demesne",
			eventType = 29,
			name = "Deadly Demesne - Raised Safe Area",
			uuid = "6cd5d7b6-b7fa-9085-af9f-720a1723a49e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Draws",
			name = "Minotaur Piece",
			uuid = "d4f1a8c3-6e2b-4d9f-8a7c-1b5e9d0f3a26",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local old = data.bst_hammer_order\nif old and old.uuid then Argus.deleteTimedShape(old.uuid) end\ndata.bst_hammer_order = {\n    started = Now(),\n    seen = {},\n    count = 0,\n    dashCount = 0,\n    dashSeen = {},\n    bossID = eventArgs.entityID\n}\nself.used = true",
						conditions = 
						{
							
							{
								"f0c26b34-4f5d-30d2-901f-3fdd837c8ff0",
								true,
							},
							
							{
								"5cf13e2e-7ae0-cac4-9406-9e2e8f7cd96a",
								true,
							},
							
							{
								"4219a040-09cc-63cc-b9d1-1bd5ed1f6541",
								true,
							},
						},
						name = "Open Arm Recording Window",
						uuid = "7419112a-787d-8664-af71-0e37584315a1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1340,
						uuid = "f0c26b34-4f5d-30d2-901f-3fdd837c8ff0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 48127,
						uuid = "5cf13e2e-7ae0-cac4-9406-9e2e8f7cd96a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14545,
						uuid = "4219a040-09cc-63cc-b9d1-1bd5ed1f6541",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Minotaur Piece",
			eventType = 3,
			name = "Charge and Hammer - Start Prediction",
			timeout = 1,
			uuid = "1d88811f-8abd-af37-a747-a047be6dd62d",
			version = 2,
		},
		inheritedIndex = 20,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s = data.bst_hammer_order\nif not s or Now() - s.started > 10000 or s.bossID ~= eventArgs.primaryEntityID then\n    if s and s.uuid then Argus.deleteTimedShape(s.uuid) end\n    s = {started = Now(), seen = {}, count = 0, bossID = eventArgs.primaryEntityID}\n    data.bst_hammer_order = s\nend\nif not s.first then\n    s.first = eventArgs.vfxID\n    s.second = s.first == 2784 and 2785 or 2784\nend\nself.used = true",
						conditions = 
						{
							
							{
								"3b042423-b8ff-c1e1-9197-525d49bf4a68",
								true,
							},
							
							{
								"a7cc678e-2ee2-5e5a-abb9-0a87cd768384",
								true,
							},
							
							{
								"44bc9869-e653-85df-870c-61cc1447b8b9",
								true,
							},
							
							{
								"c282707d-aa03-8b6d-84e2-a048228838e5",
								true,
							},
						},
						name = "Remember First and Second Arm",
						uuid = "6d567629-fc8e-9cb2-bd98-eff399238936",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1340,
						name = "Map 1340",
						uuid = "3b042423-b8ff-c1e1-9197-525d49bf4a68",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventIntValue = 2784,
						name = "Arm VFX >=2784",
						uuid = "a7cc678e-2ee2-5e5a-abb9-0a87cd768384",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						dequeueIfLuaFalse = true,
						eventIntValue = 2785,
						name = "Arm VFX <=2785",
						uuid = "44bc9869-e653-85df-870c-61cc1447b8b9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventArgType = 3,
						eventEntityContentID = 14545,
						name = "Manticore Piece",
						uuid = "c282707d-aa03-8b6d-84e2-a048228838e5",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Minotaur Piece",
			eventType = 27,
			name = "Charge and Hammer - Record Arm Order",
			timeout = 1,
			uuid = "817e9065-5d03-642f-9725-2e712a107853",
			version = 2,
		},
		inheritedIndex = 21,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local state = data.bst_charge_hammer\nlocal e = eventArgs\nif state and e.castPosX and e.castPosZ then\n    for key, shape in pairs(state) do\n        local dx, dz = shape.x - e.castPosX, shape.z - e.castPosZ\n        if dx * dx + dz * dz < 0.25 then\n            if shape.uuid then Argus.deleteTimedShape(shape.uuid) end\n            state[key] = nil\n        end\n    end\nend\n\nlocal s = data.bst_hammer_order\nif s and e.entityID then\n    s.dashSeen = s.dashSeen or {}\n    if not s.dashSeen[e.entityID] then\n        s.dashSeen[e.entityID] = true\n        s.dashCount = (s.dashCount or 0) + 1\n        if s.dashCount == 4 and s.first and s.second and s.x and s.y and s.z and s.heading and not s.nextUuid then\n            local offset = s.second == 2784 and math.pi / 2 or -math.pi / 2\n            s.nextUuid = TensorCore.getMoogleDrawer():addTimedRect(6000, s.x, s.y, s.z, 42, 84, s.heading + offset, 0, false, true)\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"7a61dc77-dac5-06de-9c44-c5f3d2318c53",
								true,
							},
							
							{
								"b1def698-9e7c-19ac-ab00-690efc6161c6",
								true,
							},
							
							{
								"bf14109c-3fff-9c01-9954-ab52b6c9132b",
								true,
							},
						},
						name = "Clear Matching Dash",
						uuid = "60a37716-f61b-43ba-aaf8-5c3fe1b72ae8",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s = data.bst_hammer_order\nif s and s.uuid then\n    Argus.deleteTimedShape(s.uuid)\n    s.uuid = nil\n    if s.stage == 1 and s.second and Now() - s.started < 25000 then\n        if s.nextUuid then\n            s.uuid = s.nextUuid\n            s.nextUuid = nil\n        else\n            local offset = s.second == 2784 and math.pi / 2 or -math.pi / 2\n            s.uuid = TensorCore.getMoogleDrawer():addTimedRect(2050, s.x, s.y, s.z, 42, 84, s.heading + offset, 0, false, true)\n        end\n        s.stage = 2\n    else\n        if s.nextUuid then\n            Argus.deleteTimedShape(s.nextUuid)\n            s.nextUuid = nil\n        end\n        s.stage = 3\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"7a61dc77-dac5-06de-9c44-c5f3d2318c53",
								true,
							},
							
							{
								"bf14109c-3fff-9c01-9954-ab52b6c9132b",
								true,
							},
							
							{
								"e5d51691-3bd7-670a-8e89-b24e9bf47fd4",
								true,
							},
						},
						name = "Clear Smash and Show Next Side",
						uuid = "7ce06c74-7c2b-bf64-ac8e-93cf5b741493",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1340,
						name = "Map 1340",
						uuid = "7a61dc77-dac5-06de-9c44-c5f3d2318c53",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 48130,
						name = "Wild Charge Damage",
						uuid = "b1def698-9e7c-19ac-ab00-690efc6161c6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14545,
						name = "Manticore Piece",
						uuid = "bf14109c-3fff-9c01-9954-ab52b6c9132b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Smash Damage",
						spellIDList = 
						{
							48132,
							48134,
						},
						uuid = "e5d51691-3bd7-670a-8e89-b24e9bf47fd4",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Minotaur Piece",
			eventType = 2,
			name = "Charge and Hammer - Clear Resolved Dash",
			timeout = 1,
			uuid = "b6736c9e-b04c-e2b2-b58e-3af7ecbdd2e6",
			version = 2,
		},
		inheritedIndex = 22,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.bst_charge_hammer = data.bst_charge_hammer or {}\nlocal state = data.bst_charge_hammer\nlocal e = eventArgs\nfor key, shape in pairs(state) do\n    if e.startTime - shape.startTime > 9000 then state[key] = nil end\nend\nlocal previous = state[e.entityID]\nif previous and previous.uuid then Argus.deleteTimedShape(previous.uuid) end\nlocal x = e.x - math.sin(e.heading) * e.aoeLength\nlocal z = e.z - math.cos(e.heading) * e.aoeLength\nlocal uuid = TensorCore.getMoogleDrawer():addTimedRect(9000, x, e.y, z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\nstate[e.entityID] = {uuid = uuid, x = e.x, z = e.z, startTime = e.startTime}\nself.used = true",
						conditions = 
						{
							
							{
								"45581391-34d8-495a-8651-60cbf9322270",
								true,
							},
							
							{
								"3f2b0628-c537-d58d-b871-0ce5c1b814c4",
								true,
							},
						},
						name = "Record Dash Path",
						uuid = "423fe248-d7b5-c03f-a3ab-0eb26ce53a11",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s = data.bst_hammer_order\nif s and Now() - s.started <= 10000 then\n    s.seen = s.seen or {}\n    if not s.seen[eventArgs.entityID] then\n        s.seen[eventArgs.entityID] = true\n        s.count = (s.count or 0) + 1\n        if s.count == 4 and s.first and not s.uuid then\n            s.x, s.y, s.z, s.heading = eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.heading\n            local offset = s.first == 2784 and math.pi / 2 or -math.pi / 2\n            s.uuid = TensorCore.getMoogleDrawer():addTimedRect(10800, s.x, s.y, s.z, 42, 84, s.heading + offset, 0, false, true)\n            s.stage = 1\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"45581391-34d8-495a-8651-60cbf9322270",
								true,
							},
							
							{
								"3f2b0628-c537-d58d-b871-0ce5c1b814c4",
								true,
							},
						},
						name = "Predict First Half Arena Smash",
						uuid = "9a56686c-442a-6e07-9a1e-b1dda7fdc885",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1340,
						name = "Map 1340",
						uuid = "45581391-34d8-495a-8651-60cbf9322270",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.contentID == 14545 and eventArgs.aoeID == 48128",
						dequeueIfLuaFalse = true,
						name = "Dash Preview 48128",
						uuid = "3f2b0628-c537-d58d-b871-0ce5c1b814c4",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Minotaur Piece",
			eventType = 18,
			name = "Charge and Hammer - Timed Telegraphs",
			timeout = 1,
			uuid = "08af49af-8371-2de0-8845-c737c60c0bca",
			version = 2,
		},
		inheritedIndex = 23,
	},
	
	{
		data = 
		{
			displayPath = "Draws",
			name = "Gargoyle Piece",
			uuid = "3cf430ab-032c-51e1-bb72-2da7a9b9d43c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Gargoyle Piece",
			eventType = 3,
			name = "Sweeping Evisceration - Forward then Rear Cleaves",
			uuid = "66b873a3-1a3c-0171-8859-5005adb73fa6",
			version = 2,
		},
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Gargoyle Piece",
			eventType = 2,
			name = "Sweeping Evisceration - Mirrored Rear Cleave",
			uuid = "e998de34-539e-f251-bf21-3bb0c548aa18",
			version = 2,
		},
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Gargoyle Piece",
			eventType = 3,
			name = "Sweeping Evisceration - Tether Range",
			uuid = "8048292d-06be-7aa0-b1ce-c8f7989f85b9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Draws",
			name = "Borgny the Venomous",
			uuid = "7f2c9e18-4a6b-4d3f-8c1e-b9d047e5a263",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
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
			displayPath = "Draws/Borgny the Venomous",
			eventType = 3,
			name = "Toxic Breath Wall Cone",
			throttleTime = 5000,
			timeout = 15,
			uuid = "3120534a-06d8-2747-a254-9b2c84ce978c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Draws",
			name = "Lauda the Spellcleaver",
			uuid = "df95505e-20b0-78b2-adb2-85442c7b455b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local entity = TensorCore.mGetEntity(eventArgs.entityID)\nif eventArgs.entityContentID ~= 14693 or entity == nil or entity.charType ~= 5 then\n    return\nend\n\nlocal drawer = TensorCore.getMoogleFlatDrawer()\ndrawer:setColor(0x00000000, 0x00000000, 0x00000000)\nif self.drawUUID ~= nil then\n    Argus.deleteTimedShape(self.drawUUID)\nend\nself.drawUUID = drawer:addTimedConeOnEnt(3600000, eventArgs.entityID, 8, 2 * math.pi / 3, nil, 0, false, true)\nself.used = true",
						conditions = 
						{
							
							{
								"15318b09-1f67-9e38-bd05-de6a7fc49f61",
								true,
							},
						},
						endIfUsed = true,
						name = "Draw Persistent Cone Outline",
						uuid = "e71feb82-5876-47e7-a61f-8a717bac8bed",
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
						eventEntityContentID = 14693,
						name = "Lauda",
						uuid = "15318b09-1f67-9e38-bd05-de6a7fc49f61",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Lauda the Spellcleaver",
			eventType = 5,
			name = "Lauda Auto Attack Cone",
			uuid = "aced4575-2f56-db21-b902-f5c838442ddc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Draws",
			name = "Sphinx Piece",
			uuid = "eab19342-dd00-59b5-9c8e-79d8b1fc2b72",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local buffs = TensorCore.getBuffs(Player)\nlocal assignmentName = nil\nlocal duration = 0\n\nfor _, buff in pairs(buffs) do\n    if buff.name == \"All Odds\"\n        or buff.name == \"All Evens\"\n        or buff.name == \"All Three\"\n        or buff.name == \"All Primes\" then\n        assignmentName = buff.name\n        duration = buff.duration or 0\n        break\n    end\nend\n\nif assignmentName == nil then\n    return\nend\n\nlocal value = eventArgs.entityContentID - 2015492\nlocal correct = false\n\nif assignmentName == \"All Odds\" then\n    correct = value % 2 == 1\nelseif assignmentName == \"All Evens\" then\n    correct = value % 2 == 0\nelseif assignmentName == \"All Three\" then\n    correct = value % 3 == 0\nelseif assignmentName == \"All Primes\" then\n    correct = value == 2 or value == 3 or value == 5 or value == 7\nend\n\nlocal color = correct and 0x8000FF00 or 0x800000FF\nlocal drawer = TensorCore.getStaticFlatDrawer(color, 1.5)\nlocal drawDuration = math.max(1, math.floor(duration * 1000))\ndrawer:addTimedCenteredRect(\n    drawDuration,\n    eventArgs.x,\n    eventArgs.y + 0.05,\n    eventArgs.z,\n    12,\n    12,\n    0,\n    0,\n    false,\n    true\n)\n\nself.used = true",
						conditions = 
						{
							
							{
								"37c01db2-fc29-e2bc-a7c4-4e50ed27e62b",
								true,
							},
							
							{
								"9d2a50de-b8f5-16b6-afc1-27fe900979af",
								true,
							},
						},
						name = "Colour Assignment Tile",
						uuid = "96a98a97-da5f-9ede-898c-d6d4803753c4",
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
						eventArgType = 5,
						eventIntValue = 2015493,
						name = "Tile ID >= 1",
						uuid = "37c01db2-fc29-e2bc-a7c4-4e50ed27e62b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						dequeueIfLuaFalse = true,
						eventArgType = 5,
						eventIntValue = 2015501,
						name = "Tile ID <= 9",
						uuid = "9d2a50de-b8f5-16b6-afc1-27fe900979af",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Sphinx Piece",
			eventType = 29,
			name = "Sphinx Assignment Tile Colours",
			timeout = 20,
			uuid = "8abc95af-f14b-a274-b813-49a387333814",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.sphinx_mnemonic = data.sphinx_mnemonic or {}\nlocal state = data.sphinx_mnemonic\nstate.pieces = state.pieces or {}\n\nstate.pieces[eventArgs.entityContentID] = {\n    id = eventArgs.entityID,\n    name = eventArgs.entityName\n}\n\nself.used = true",
						conditions = 
						{
							
							{
								"599771fa-5217-c941-8f1b-1ad428681cb3",
								true,
							},
						},
						name = "Store Piece ID",
						uuid = "e3cb7a93-c68a-0a1d-afe3-235841391eba",
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
						conditionLua = "return eventArgs.entityContentID >= 14666 and eventArgs.entityContentID <= 14669",
						dequeueIfLuaFalse = true,
						name = "Mnemonic Piece",
						uuid = "599771fa-5217-c941-8f1b-1ad428681cb3",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Sphinx Piece",
			eventType = 5,
			name = "Mnemonic Riddle - Track Pieces",
			uuid = "1f4b1657-5b3c-5dad-8210-5f53b306b189",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.sphinx_answerID = 14668\nself.used = true",
						conditions = 
						{
							
							{
								"95ca1224-3e48-1621-8631-959cbf1c5708",
								true,
							},
						},
						name = "Remember Opo-opo",
						uuid = "0862c627-9062-4304-9e8a-d5ee7c347b39",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.sphinx_answerID = 14669\nself.used = true",
						conditions = 
						{
							
							{
								"5fcf928b-5dfd-19c6-98d3-e8062f0243f7",
								true,
							},
						},
						name = "Remember Puk",
						uuid = "8541b006-669e-6f48-af27-bc735cf7f46e",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.sphinx_answerID = 14666\nself.used = true",
						conditions = 
						{
							
							{
								"89735157-6e7a-28e2-9478-3e7b4f1577e3",
								true,
							},
						},
						name = "Remember Dodo",
						uuid = "3c75810b-e8a2-6550-b50e-9951c4c54b56",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.sphinx_answerID = 14667\nself.used = true",
						conditions = 
						{
							
							{
								"1e095fba-3f84-d0cb-a0bb-411abe54a9d9",
								true,
							},
						},
						name = "Remember Pugil",
						uuid = "75c3c0c5-fcc1-ad2b-9f22-137b0a8a047f",
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
						eventChatLine = "beast",
						name = "Riddle Opo-opo",
						uuid = "95ca1224-3e48-1621-8631-959cbf1c5708",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventChatLine = "scale",
						name = "Riddle Puk",
						uuid = "5fcf928b-5dfd-19c6-98d3-e8062f0243f7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventChatLine = "cloud",
						name = "Riddle Dodo",
						uuid = "89735157-6e7a-28e2-9478-3e7b4f1577e3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventChatLine = "wave",
						name = "Riddle Pugil",
						uuid = "1e095fba-3f84-d0cb-a0bb-411abe54a9d9",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Sphinx Piece",
			eventType = 7,
			name = "Mnemonic Riddle - Remember Answer",
			timeout = 15,
			uuid = "d9f238d2-2b19-6679-b4d7-9150fa7ae1e8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local answerID = data.sphinx_answerID\n\nlocal green = TensorCore.getStaticFlatDrawer(0x8000FF00)\nlocal red = TensorCore.getStaticFlatDrawer(0x800000FF)\nlocal pieces = TensorCore.entityList(\"\")\n\nfor _, piece in pairs(pieces or {}) do\n    local contentID = piece.contentid\n    if contentID >= 14666 and contentID <= 14669 then\n        local drawer = contentID == answerID and green or red\n        drawer:addTimedCircleOnEnt(300000, piece.id, 2.2, 0, false, true)\n    end\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"cbd04022-53ce-3943-90f2-5548288651b3",
								true,
							},
						},
						name = "Draw Answer Circles",
						uuid = "3ea30f14-e78f-59cc-ab3f-e2ad8e7775ab",
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
						eventEntityContentID = 14665,
						name = "Transfigure - Sphinx",
						uuid = "cbd04022-53ce-3943-90f2-5548288651b3",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Sphinx Piece",
			eventType = 3,
			name = "Mnemonic Riddle - Mark Answers",
			uuid = "6ca0e758-82a2-a32b-bfe9-65aa960051de",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Draws",
			name = "Medusa Piece",
			uuid = "ce6e0835-5096-2dd5-b1eb-fbaaae7200f8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local blacklist = MoogleTelegraphs.Settings.aoeIDUserBlacklist\nif blacklist[49291] == nil then\n    blacklist[49291] = \"Ringing Blade\"\nend\nif blacklist[49296] == nil then\n    blacklist[49296] = \"Shockwave\"\nend\nself.used = true",
						conditions = 
						{
							
							{
								"cc030024-44c3-d402-b5e1-381629cd7283",
								true,
							},
						},
						name = "Hide Ringing Blade and Shockwave",
						uuid = "ecbe5df3-2b92-70ed-9653-e09827aebbc8",
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
						conditionLua = "return eventArgs.entityContentID == 14660",
						dequeueIfLuaFalse = true,
						name = "Medusa Piece Spawn",
						uuid = "cc030024-44c3-d402-b5e1-381629cd7283",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Medusa Piece",
			eventType = 5,
			name = "Medusa Evisceration - Hide Native AOEs",
			timeout = 1,
			uuid = "ea120cc1-19b9-3d69-bf08-2d1411a05b8a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal blacklist = MoogleTelegraphs.Settings.aoeIDUserBlacklist\nif blacklist[49291] == nil then\n    blacklist[49291] = \"Ringing Blade\"\nend\nif blacklist[49296] == nil then\n    blacklist[49296] = \"Shockwave\"\nend\n\ndata.medusaEviscerationDanger = data.medusaEviscerationDanger or {}\nlocal state = data.medusaEviscerationDanger\n\nif state.drawWave == nil then\n    function state.drawWave(drawer, wave, timeout, delay, circlePhase, radius)\n        if circlePhase then\n            drawer:addTimedDonutCone(timeout, wave.x, wave.y, wave.z, radius, wave.length, math.pi / 4, wave.heading, delay, false, true)\n        else\n            drawer:addTimedCone(timeout, wave.x, wave.y, wave.z, radius, math.pi / 4, wave.heading, delay, false, true)\n        end\n    end\nend\n\nlocal redFill = 0x55FF0000\nlocal redEdge = 0xCCFF0000\nlocal drawer = TensorCore.getCachedFlatDrawer(redFill, redFill, redFill, redEdge, 1.5)\nlocal duration = e.duration * 1000\nlocal hitAt = e.startTime + duration\n\nif e.aoeID == 49296 then\n    if state.firstWaveStart == nil or e.startTime - state.firstWaveStart > 12000 then\n        state.firstWaveStart = e.startTime\n        state.firstWave = {}\n        state.secondWaveStart = nil\n        state.firstHitAt = nil\n        state.secondHitAt = nil\n        state.secondAOE = nil\n        state.secondAOEDrawn = false\n        state.firstCircle = nil\n        state.secondCircle = nil\n    end\n\n    local wave = {\n        x = e.x,\n        y = e.y,\n        z = e.z,\n        heading = e.heading,\n        length = e.aoeLength,\n        startTime = e.startTime,\n        hitAt = hitAt\n    }\n\n    if math.abs(e.startTime - state.firstWaveStart) < 100 then\n        state.firstWave[#state.firstWave + 1] = wave\n        if state.firstHitAt ~= nil and state.firstCircle ~= nil then\n            local timeout = math.min(hitAt, state.firstHitAt) - e.startTime\n            if timeout > 0 then\n                local radius = state.firstCircle and state.firstRadius or 5\n                state.drawWave(drawer, wave, timeout, 0, state.firstCircle, radius)\n            end\n        end\n    else\n        if state.secondWaveStart == nil then\n            state.secondWaveStart = e.startTime\n        end\n        if state.firstHitAt ~= nil and state.secondCircle ~= nil then\n            local phaseStart = math.max(e.startTime, state.firstHitAt)\n            local phaseEnd = hitAt\n            if state.secondHitAt ~= nil then\n                phaseEnd = math.min(phaseEnd, state.secondHitAt)\n            end\n            local timeout = phaseEnd - phaseStart\n            local delay = phaseStart - e.startTime\n            if timeout > 0 then\n                local radius = state.secondCircle and state.secondRadius or 5\n                state.drawWave(drawer, wave, timeout, delay, state.secondCircle, radius)\n            end\n        end\n    end\n\n    self.used = true\n    return\nend\n\nlocal aoe = {\n    id = e.aoeID,\n    x = e.x,\n    y = e.y,\n    z = e.z,\n    length = e.aoeLength,\n    startTime = e.startTime,\n    hitAt = hitAt\n}\n\nif e.aoeID == 49291 or e.aoeID == 49295 then\n    state.secondAOE = aoe\n    state.secondHitAt = hitAt\n    state.secondCircle = e.aoeID == 49295\n    state.secondRadius = state.secondCircle and e.aoeLength or 5\n\n    if e.aoeID == 49291 and state.firstHitAt ~= nil and not state.secondAOEDrawn then\n        local delay = math.max(0, state.firstHitAt - e.startTime)\n        local timeout = hitAt - math.max(e.startTime, state.firstHitAt)\n        if timeout > 0 then\n            drawer:addTimedDonut(timeout, e.x, e.y, e.z, 5, e.aoeLength, delay, false, true)\n            state.secondAOEDrawn = true\n        end\n    end\n\n    self.used = true\n    return\nend\n\nstate.firstHitAt = hitAt\nstate.firstCircle = e.aoeID == 49289\nstate.firstRadius = state.firstCircle and e.aoeLength or 5\nstate.secondCircle = not state.firstCircle\n\nif state.secondAOE ~= nil then\n    state.secondHitAt = state.secondAOE.hitAt\n    state.secondRadius = state.secondCircle and state.secondAOE.length or 5\nend\n\nif state.firstWave ~= nil then\n    for _, wave in ipairs(state.firstWave) do\n        local timeout = math.min(wave.hitAt, state.firstHitAt) - e.startTime\n        if timeout > 0 then\n            state.drawWave(drawer, wave, timeout, 0, state.firstCircle, state.firstRadius)\n        end\n    end\nend\n\nif state.secondAOE ~= nil and state.secondAOE.id == 49291 and not state.secondAOEDrawn then\n    local delay = math.max(0, state.firstHitAt - e.startTime)\n    local timeout = state.secondAOE.hitAt - math.max(e.startTime, state.firstHitAt)\n    if timeout > 0 then\n        drawer:addTimedDonut(timeout, state.secondAOE.x, state.secondAOE.y, state.secondAOE.z, 5, state.secondAOE.length, delay, false, true)\n        state.secondAOEDrawn = true\n    end\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"e6a163c6-9ad8-d4bc-924e-8a4b7e44cc9f",
								true,
							},
						},
						name = "Draw Non-overlapping Red Danger",
						uuid = "e3a228d6-aa96-7046-aaa2-11a31bc30e6c",
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
						conditionLua = "return eventArgs.contentID == 14660 and (eventArgs.aoeID == 49289 or eventArgs.aoeID == 49291 or eventArgs.aoeID == 49293 or eventArgs.aoeID == 49295 or eventArgs.aoeID == 49296)",
						dequeueIfLuaFalse = true,
						name = "Medusa Evisceration AOE",
						uuid = "e6a163c6-9ad8-d4bc-924e-8a4b7e44cc9f",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Medusa Piece",
			eventType = 18,
			name = "Evisceration - Medusa Danger Areas",
			timeout = 1,
			uuid = "d9571e5a-292c-f39c-ab29-8f2ef8e36291",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Draws",
			name = "Mindflayer Piece",
			uuid = "4fb59dee-3f5e-f63b-bdd1-4ee1b738e841",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal ent = TensorCore.mGetEntity(e.entityID)\nif ent ~= nil and ent.charType == 5 and ent.pos ~= nil and ent.contentId == 14634 then\n    TensorCore.getMoogleFlatDrawer():addTimedCircle(700, ent.pos.x, ent.pos.y, ent.pos.z, 6, 0, false, true)\n    self.used = true\nend",
						conditions = 
						{
							
							{
								"720bc1f5-8670-0db1-8beb-5d5b3844e031",
								true,
							},
						},
						name = "Draw Spore Spill",
						uuid = "60e04a8a-8d78-ffb0-9aa1-fdca310e4206",
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
						conditionLua = "return eventArgs.entityContentID == 14634 and eventArgs.newAnimID == 73",
						dequeueIfLuaFalse = true,
						name = "Content ID 14634 Death Animation",
						uuid = "720bc1f5-8670-0db1-8beb-5d5b3844e031",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Mindflayer Piece",
			eventType = 23,
			name = "Myconid Death AOE",
			timeout = 2,
			uuid = "986eb53a-e748-27e8-9896-276ba1529d4a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local state = data.myconid_hp_drawn\nif state == nil then\n    state = {}\n    data.myconid_hp_drawn = state\nend\nlocal entities = TensorCore.entityList(\"\")\nif entities ~= nil then\n    for _, ent in pairs(entities) do\n        if ent ~= nil then\n            local hp = ent.hp\n            if hp ~= nil then\n                if hp.percent < 50 then\n                    if ent.contentID == 14634 then\n                        if ent.charType == 5 then\n                            if ent.pos ~= nil and state[ent.id] == nil then\n                                TensorCore.getMoogleFlatDrawer():addTimedCircle(35000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 0, false, true)\n                                state[ent.id] = true\n                            end\n                        end\n                    end\n                end\n            end\n        end\n    end\nend\nself.used = true",
						name = "Draw Early Spore Spill",
						uuid = "013282a4-ea25-a74d-8ab1-89870f5d8be1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
			},
			displayPath = "Draws/Mindflayer Piece",
			name = "Myconid Death AOE - Early HP",
			throttleTime = 250,
			timeout = 1,
			uuid = "adfc4a1d-af8c-0387-8a2c-9876a66b2776",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local state = data.arcane_sphere_draws\nif state == nil then\n    state = {}\n    data.arcane_sphere_draws = state\nend\nlocal entities = TensorCore.entityList(\"\")\nlocal activeAOEs = Argus.getCurrentAOEs()\nif entities ~= nil then\n    for _, sphere in pairs(entities) do\n        if sphere ~= nil then\n            if sphere.contentID == 14637 then\n                local entry = state[sphere.id]\n                if entry ~= \"done\" then\n                    local active = false\n                    if activeAOEs ~= nil then\n                        for _, aoe in pairs(activeAOEs) do\n                            if aoe ~= nil then\n                                if aoe.entityID == sphere.id then\n                                    if aoe.aoeID == 49203 or aoe.aoeID == 49204 then\n                                        active = true\n                                    elseif aoe.aoeWidth ~= nil then\n                                        if aoe.aoeWidth >= 10 then\n                                            active = true\n                                        end\n                                    end\n                                end\n                            end\n                        end\n                    end\n                    if active then\n                        if entry ~= nil then\n                            if entry.uuid1 ~= nil then\n                                Argus.deleteTimedShape(entry.uuid1)\n                            end\n                            if entry.uuid2 ~= nil then\n                                Argus.deleteTimedShape(entry.uuid2)\n                            end\n                        end\n                        state[sphere.id] = \"done\"\n                    elseif sphere.pos ~= nil then\n                        local width = 4\n                        local tethers = Argus.getTethersOnEnt(sphere.id)\n                        if tethers ~= nil then\n                            for _, tether in pairs(tethers) do\n                                if tether ~= nil then\n                                    local partnerID = tether.partnerid\n                                    if partnerID == nil then\n                                        partnerID = tether.targetid\n                                    end\n                                    local partner = TensorCore.mGetEntity(partnerID)\n                                    if partner ~= nil then\n                                        if partner.contentID == 14633 then\n                                            width = 10\n                                        end\n                                    end\n                                end\n                            end\n                        end\n                        if entry ~= nil then\n                            if entry.width > width then\n                                width = entry.width\n                            end\n                        end\n                        if entry == nil or entry.width ~= width then\n                            if entry ~= nil then\n                                if entry.uuid1 ~= nil then\n                                    Argus.deleteTimedShape(entry.uuid1)\n                                end\n                                if entry.uuid2 ~= nil then\n                                    Argus.deleteTimedShape(entry.uuid2)\n                                end\n                            end\n                            local drawer = TensorCore.getMoogleFlatDrawer()\n                            local uuid1 = drawer:addTimedRect(35000, sphere.pos.x, sphere.pos.y, sphere.pos.z, 100, width, sphere.pos.h, 0, false, true)\n                            local uuid2 = drawer:addTimedRect(35000, sphere.pos.x, sphere.pos.y, sphere.pos.z, 100, width, sphere.pos.h + math.pi, 0, false, true)\n                            state[sphere.id] = {width = width, uuid1 = uuid1, uuid2 = uuid2}\n                        end\n                    end\n                end\n            end\n        end\n    end\nend\nself.used = true",
						name = "Draw Sphere AOEs",
						uuid = "32c29710-a093-7ecb-8ad7-e1083c99f820",
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
						conditionLua = "return true",
						dequeueIfLuaFalse = true,
						name = "Arcane Sphere",
						uuid = "fbf0706d-cc56-505e-932e-f8f561adda31",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Mindflayer Piece",
			name = "Arcane Sphere Tethered Larger AOE",
			throttleTime = 250,
			timeout = 1,
			uuid = "c15e8f25-7308-99b5-a27a-10e71f8dc0ca",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Draws",
			name = "Guttler the Gutter",
			uuid = "1847b7ab-83f6-1288-87db-d9a45b4076d9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local entity = TensorCore.mGetEntity(eventArgs.entityID)\nif eventArgs.entityContentID ~= 14592 or entity == nil or (entity.charType ~= 5 and entity.charType ~= 11) then\n    return\nend\n\nlocal drawer = TensorCore.getMoogleFlatDrawer()\ndrawer:setColor(0x00000000, 0x00000000, 0x00000000)\nif self.drawUUID ~= nil then\n    Argus.deleteTimedShape(self.drawUUID)\nend\nself.drawUUID = drawer:addTimedConeOnEnt(3600000, eventArgs.entityID, 8, 2 * math.pi / 3, nil, 0, false, true)\nself.used = true",
						conditions = 
						{
							
							{
								"89a1e270-f5fa-30e0-a672-8919611ff56a",
								true,
							},
						},
						endIfUsed = true,
						name = "Draw Guttler Cone Outline",
						uuid = "109ea510-0ea4-777d-8bdc-32f9a6e81098",
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
						eventEntityContentID = 14592,
						name = "Guttler",
						uuid = "89a1e270-f5fa-30e0-a672-8919611ff56a",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Guttler the Gutter",
			eventType = 5,
			name = "Guttler Auto Attack Cone",
			uuid = "e49cdfd3-cea3-63a4-b736-9e2af3067b3b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Draws",
			name = "Chimera Piece",
			uuid = "9e1c1eb7-a7e3-3e46-9d40-9db8729be0e6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal drawer = TensorCore.getMoogleFlatDrawer()\nlocal timeout = 3000\nif e.duration ~= nil and e.duration > 0 then\n    timeout = e.duration * 1000\nelseif e.delay ~= nil and e.delay > 0 then\n    timeout = e.delay * 1000\nend\nlocal heading = e.heading or 0\nif e.aoeCastType == 13 then\n    drawer:addTimedCone(timeout, e.x, e.y, e.z, e.aoeLength, math.pi * 4 / 3, heading, 0, false, true)\nelseif e.aoeCastType == 1 then\n    drawer:addTimedCircle(timeout, e.x, e.y, e.z, e.aoeLength, 0, false, true)\nelseif e.aoeCastType == 10 then\n    local outer = math.min(e.aoeLength, 20)\n    local inner = 8\n    drawer:addTimedDonut(timeout, e.x, e.y, e.z, inner, outer, 0, false, true)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"520894c5-62eb-a09a-b2d0-1b740c677c16",
								true,
							},
						},
						name = "Draw Chimera Cone and Ring AOEs",
						uuid = "aba1e6e1-32fd-01ce-8023-4274f533f419",
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
						conditionLua = "return eventArgs ~= nil and eventArgs.contentID == 14663 and eventArgs.aoeLength ~= nil and eventArgs.aoeLength > 0 and (eventArgs.aoeCastType == 1 or eventArgs.aoeCastType == 10 or eventArgs.aoeCastType == 13)",
						dequeueIfLuaFalse = true,
						name = "Chimera Cone/Point Blank/Donut AOE",
						uuid = "520894c5-62eb-a09a-b2d0-1b740c677c16",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Chimera Piece",
			eventType = 18,
			name = "Chimera Piece - 240° Cone Attacks",
			timeout = 1,
			uuid = "4438ac68-d13b-46b6-af75-4a98fd54aac7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawer = TensorCore.getMoogleFlatDrawer()\nlocal duration = 5000\nif eventArgs.channelTimeMax ~= nil and eventArgs.channelTimeMax > 0 then\n    duration = math.floor(eventArgs.channelTimeMax * 1000)\nend\ndrawer:addTimedCircleOnEnt(duration, eventArgs.entityID, 15, 0, false, true, 1)\nself.used = true",
						conditions = 
						{
							
							{
								"193acd05-030a-b484-bda8-26d4159be53a",
								true,
							},
						},
						endIfUsed = true,
						name = "Tether Range Circle (15y)",
						uuid = "34d2847b-50a0-b7d1-8aaa-7cd52093acb2",
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
						eventSpellID = 49324,
						name = "Rushing Roar Channels",
						spellIDList = 
						{
							49322,
							49323,
							49324,
							49325,
						},
						uuid = "193acd05-030a-b484-bda8-26d4159be53a",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Chimera Piece",
			eventType = 3,
			name = "Chimera Tether Range Circle",
			timeout = 1,
			uuid = "d8daa7fc-4963-41ce-80b2-466b089cf5b5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local headStates = _G.TensorReactionsChimeraHeadCleave\nlocal headState = headStates ~= nil and headStates[eventArgs.entityID] or nil\nif headState == nil or headState.seenAt == nil or TimeSince(headState.seenAt) > 1000 then\n    return\nend\nlocal headingOffset = headState.headingOffset\nheadStates[eventArgs.entityID] = nil\nlocal channelMs = 0\nif eventArgs.channelTimeMax ~= nil and eventArgs.channelTimeMax > 0 then\n    channelMs = math.floor(eventArgs.channelTimeMax * 1000)\nend\nlocal drawer = TensorCore.getMoogleFlatDrawer()\ndrawer:addTimedConeOnEnt(4000, eventArgs.entityID, 60, math.pi * 4 / 3, nil, channelMs, false, true, headingOffset, false)\nself.used = true",
						conditions = 
						{
							
							{
								"113ad6e9-e279-f105-bad2-539b9aef9e92",
								true,
							},
						},
						endIfUsed = true,
						name = "Draw Head 240° Cone at Dash",
						uuid = "1122deef-34ec-5f99-b0fe-3602df93727a",
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
						name = "Rushing Roar Head Channels",
						spellIDList = 
						{
							49322,
							49323,
							49324,
							49325,
						},
						uuid = "113ad6e9-e279-f105-bad2-539b9aef9e92",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Chimera Piece",
			eventType = 3,
			name = "Chimera Head - 240° Cone",
			timeout = 1,
			uuid = "ec628ae7-ec31-fa90-b895-edac3a27c724",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local offsets = {\n    [2968] = -math.pi * 2 / 3,\n    [2969] = math.pi * 2 / 3,\n    [2970] = 0,\n}\nlocal headingOffset = offsets[eventArgs.vfxID]\nif headingOffset == nil then\n    return\nend\n_G.TensorReactionsChimeraHeadCleave = _G.TensorReactionsChimeraHeadCleave or {}\n_G.TensorReactionsChimeraHeadCleave[eventArgs.primaryEntityID] = {\n    headingOffset = headingOffset,\n    seenAt = Now(),\n}\nself.used = true",
						conditions = 
						{
							
							{
								"32100249-ee42-9ccd-b6d1-a2e4e6037d02",
								true,
							},
						},
						endIfUsed = true,
						name = "Remember Chimera Head Direction",
						uuid = "320cf6dc-a834-cc2d-affe-986e9b8b4170",
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
						conditionLua = "return eventArgs.primaryEntityContentID == 14663 and (eventArgs.vfxID == 2968 or eventArgs.vfxID == 2969 or eventArgs.vfxID == 2970)",
						dequeueIfLuaFalse = true,
						name = "Chimera Head Indicator VFX",
						uuid = "32100249-ee42-9ccd-b6d1-a2e4e6037d02",
						version = 3,
					},
				},
			},
			displayPath = "Draws/Chimera Piece",
			eventType = 27,
			name = "Chimera Head - Remember Cleave VFX",
			timeout = 1,
			uuid = "750e731d-a4af-5e1c-b7b4-8964ab9dda75",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if GUI:Begin(\"Battlehorn\") then\n    local ui = GUI:GetWindowFontSize()\n    local buttonWidth = ui * 8\n    local buttonHeight = ui * 1.8\n    local player = TensorCore.mGetPlayer()\n    local currentHorn = AnyoneCore.BST.GetBattlehorn(player)\n    local function hornButton(label, horn, actionID)\n        local active = currentHorn == horn\n        local action = ActionList:Get(1, actionID)\n        local usable = active or (action and action:IsReady(player))\n        local r, g, b = active and 0.20 or (usable and 0.80 or 0.35), active and 0.80 or (usable and 0.20 or 0.35), active and 0.20 or (usable and 0.20 or 0.35)\n        GUI:PushStyleColor(GUI.Col_Button, r, g, b, 1.0)\n        GUI:PushStyleColor(GUI.Col_ButtonHovered, math.min(r + 0.10, 1.0), math.min(g + 0.10, 1.0), math.min(b + 0.10, 1.0), 1.0)\n        GUI:PushStyleColor(GUI.Col_ButtonActive, math.min(r + 0.15, 1.0), math.min(g + 0.15, 1.0), math.min(b + 0.15, 1.0), 1.0)\n        local pressed = GUI:Button(label, buttonWidth, buttonHeight)\n        GUI:PopStyleColor(3)\n        if pressed and usable then\n            AnyoneCore.BST.Settings.Battlehorn = horn\n            if player and player.incombat and usable and not active then\n                AnyoneCore.BST.RequestAction(\"partingBlow\")\n            end\n        end\n    end\n    hornButton(\"Horn 1\", 1, 44881)\n    hornButton(\"Horn 2\", 2, 44892)\n    hornButton(\"Horn 3\", 3, 44894)\n    GUI:End()\nend",
						name = "Battlehorn Buttons",
						uuid = "c8973ed5-91c7-a6c4-a184-37c2558e6ef2",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
			},
			enabled = false,
			eventType = 13,
			name = "Battlehorn HUD",
			uuid = "8561a94f-5f8c-97c2-9942-82fb718885fa",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 44891,
						conditions = 
						{
							
							{
								"a3df0948-5fa9-de6a-80e3-e6636cb0adb2",
								true,
							},
							
							{
								"38ea66e5-857a-24f1-8777-e72a2f821b9d",
								true,
							},
							
							{
								"8043b0e8-3d6a-f9e3-b738-2fb9b4162514",
								true,
							},
							
							{
								"b37e53ca-b028-2f98-b6d8-18f02a55e0a2",
								true,
							},
							
							{
								"44468cad-fd8a-a655-bb79-5a9799fae8d6",
								true,
							},
						},
						targetSubType = "Most Clustered",
						targetType = "Enemy",
						uuid = "86586c82-3987-1b55-89e9-f212e6a2333a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1339,
							1340,
							1341,
							1342,
							1343,
						},
						uuid = "a3df0948-5fa9-de6a-80e3-e6636cb0adb2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "38ea66e5-857a-24f1-8777-e72a2f821b9d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 10,
						partyTargetType = "Pet",
						uuid = "8043b0e8-3d6a-f9e3-b738-2fb9b4162514",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						name = "Bot Running",
						uuid = "b37e53ca-b028-2f98-b6d8-18f02a55e0a2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"594ed8c2-a68b-2cb7-982e-70b0b81449cb",
								true,
							},
							
							{
								"6d84eeee-ed73-51e7-a2a8-5319bc3a30e6",
								true,
							},
							
							{
								"8634b011-d136-b128-867f-572186424cbd",
								true,
							},
						},
						matchAnyBuff = true,
						uuid = "44468cad-fd8a-a655-bb79-5a9799fae8d6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local action = ActionList:Get(1, 44881)\n\nreturn action:CanCastResult() ~= 572 and action.cd <= 0",
						name = "First Horn",
						uuid = "594ed8c2-a68b-2cb7-982e-70b0b81449cb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local action = ActionList:Get(1, 44892)\n\nreturn action:CanCastResult() ~= 572 and action.cd <= 0",
						name = "Second Horn",
						uuid = "6d84eeee-ed73-51e7-a2a8-5319bc3a30e6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local action = ActionList:Get(1, 44894)\n\nreturn action:CanCastResult() ~= 572 and action.cd <= 0",
						name = "Third Horn",
						uuid = "8634b011-d136-b128-867f-572186424cbd",
						version = 3,
					},
				},
			},
			name = "Auto Parting Blow",
			throttleTime = 1000,
			uuid = "a94b9443-db63-da4e-afba-8021bf921498",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl