local tbl = 
{
	
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
	
	{
		data = 
		{
			displayPath = "",
			name = "Bone Knights",
			uuid = "a6a413e3-46bf-afe8-ac5c-8fb6338898b1",
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
			displayPath = "Bone Knights",
			eventType = 3,
			name = "Death Spiral Draw",
			uuid = "e42864f0-b82a-bacd-91ac-8f285a2b7b66",
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
			displayPath = "Bone Knights",
			eventType = 3,
			name = "Tumulus Draw",
			uuid = "e04e452b-82af-62d9-b7df-14823dd975b2",
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
			displayPath = "Bone Knights",
			eventType = 3,
			name = "Black Eruption Draw",
			timeout = 6,
			uuid = "2b699649-ab81-cc25-b5b3-a6c814a78a8d",
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
			displayPath = "Bone Knights",
			eventType = 3,
			name = "Forward Guard - Snarl",
			timeout = 10,
			uuid = "514392ee-698f-9005-9f7d-da7fb79bc4ab",
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
			displayPath = "Bone Knights",
			eventType = 8,
			name = "Directional Parry Removed - Challenge",
			timeout = 30,
			uuid = "67262fdf-83b4-07e8-bd07-bbfc9c2c6c05",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Arch Demon Piece",
			uuid = "f5c7bf84-eb64-a75a-8fcc-173e5a916cc3",
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
			displayPath = "Arch Demon Piece",
			eventType = 3,
			name = "Abyssal Transfixion Sword Circles",
			uuid = "0f4e2a86-e428-5fec-900b-a07e58c45c58",
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
			displayPath = "Arch Demon Piece",
			eventType = 3,
			name = "Abyssal Transfixion Follow-up Sword Circles",
			timeout = 25,
			uuid = "a840fd2a-a7ea-978e-a4fb-c1607789dddf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Ogre Piece",
			uuid = "14e5dad5-d797-bd4d-8c4a-8dca5bbedb88",
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
						name = "Ball of Fire",
						uuid = "6be87ea7-9013-86bb-9cdb-081a1dc63c27",
						version = 3,
					},
				},
			},
			displayPath = "Ogre Piece",
			eventType = 5,
			name = "Ball of Fire Tether Circle",
			timeout = 30,
			uuid = "61211239-0e5c-d91e-a701-0355aaff7bc8",
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
			displayPath = "Ogre Piece",
			eventType = 3,
			name = "Scorching Smite AOE",
			timeout = 12,
			uuid = "f3ba96f4-cad4-cc21-a157-c2e03dd77814",
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
						name = "Wisp Pieces",
						uuid = "6bb94e83-40f9-c7a5-b8bb-250e0a07bad4",
						version = 3,
					},
				},
			},
			displayPath = "Ogre Piece",
			eventType = 5,
			name = "Wisp Piece Circles",
			timeout = 60,
			uuid = "07bf1193-6dc1-1fb8-ae6c-e3190a1588a0",
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
			displayPath = "Ogre Piece",
			eventType = 5,
			name = "Ball of Fire Tether Circle",
			timeout = 30,
			uuid = "07d405a7-9440-4485-a9d6-9ce2c0dc23d5",
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
			displayPath = "Ogre Piece",
			eventType = 3,
			name = "Scorching Smite AOE",
			timeout = 12,
			uuid = "0aeb212d-21d6-4391-bc1b-8cef3e0af972",
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
						name = "Wisp Pieces",
						uuid = "6bb94e83-40f9-c7a5-b8bb-250e0a07bad4",
						version = 3,
					},
				},
			},
			displayPath = "Ogre Piece",
			eventType = 5,
			name = "Wisp Piece Circles",
			timeout = 60,
			uuid = "b128c5c0-e8b9-7907-b68b-99f7cfd7324b",
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
			displayPath = "Ogre Piece",
			eventType = 5,
			name = "Ball of Fire Tether Circle",
			timeout = 30,
			uuid = "a5df7b29-7516-9747-98c4-a79d8d5261aa",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Manticore Piece",
			uuid = "c5166bbc-983b-59b2-a368-c7eae0fcfa2a",
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
						actionLua = "local old = data.bst_hammer_order\nif old and old.uuid then Argus.deleteTimedShape(old.uuid) end\ndata.bst_hammer_order = {started = Now(), seen = {}, count = 0, bossID = eventArgs.entityID}\nself.used = true",
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
			displayPath = "Manticore Piece",
			eventType = 3,
			name = "Charge and Hammer - Start Prediction",
			timeout = 1,
			uuid = "99481790-dbbe-9e89-a32e-71cb51fa3160",
			version = 2,
		},
		inheritedIndex = 14,
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
			displayPath = "Manticore Piece",
			eventType = 27,
			name = "Charge and Hammer - Record Arm Order",
			timeout = 1,
			uuid = "c87c7da5-86fb-720a-8a52-6f0f3ff838ed",
			version = 2,
		},
		inheritedIndex = 15,
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
						actionLua = "local state = data.bst_charge_hammer\nlocal e = eventArgs\nif state and e.castPosX and e.castPosZ then\n    for key, shape in pairs(state) do\n        local dx, dz = shape.x - e.castPosX, shape.z - e.castPosZ\n        if dx * dx + dz * dz < 0.25 then\n            if shape.uuid then Argus.deleteTimedShape(shape.uuid) end\n            state[key] = nil\n        end\n    end\nend\nself.used = true",
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
						actionLua = "local s = data.bst_hammer_order\nif s and s.uuid then\n    Argus.deleteTimedShape(s.uuid)\n    s.uuid = nil\n    if s.stage == 1 and s.second and Now() - s.started < 25000 then\n        local offset = s.second == 2784 and math.pi / 2 or -math.pi / 2\n        s.uuid = TensorCore.getMoogleDrawer():addTimedRect(2050, s.x, s.y, s.z, 42, 84, s.heading + offset, 0, false, true)\n        s.stage = 2\n    else\n        s.stage = 3\n    end\nend\nself.used = true",
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
			displayPath = "Manticore Piece",
			eventType = 2,
			name = "Charge and Hammer - Clear Resolved Dash",
			timeout = 1,
			uuid = "955cb02f-de5d-531a-8eff-b3a7f4aa5344",
			version = 2,
		},
		inheritedIndex = 16,
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
			displayPath = "Manticore Piece",
			eventType = 18,
			name = "Charge and Hammer - Timed Telegraphs",
			timeout = 1,
			uuid = "7093b668-11b7-5c97-bf41-ab9527319b8e",
			version = 2,
		},
		inheritedIndex = 17,
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Banemite Piece",
			uuid = "726cb948-cbc7-5c3f-a29b-e06d42a4a01b",
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
			displayPath = "Banemite Piece",
			eventType = 3,
			name = "Deadly Thrust - Snarl then Challenge",
			timeout = 12,
			uuid = "04ab0d6b-c9ab-ad8f-b7bd-9a8f3a95f5e7",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl