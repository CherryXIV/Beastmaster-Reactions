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
	inheritedProfiles = 
	{
	},
}



return tbl
