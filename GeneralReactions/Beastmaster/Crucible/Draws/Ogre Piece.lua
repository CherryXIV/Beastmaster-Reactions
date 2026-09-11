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
	inheritedProfiles = 
	{
	},
}



return tbl
