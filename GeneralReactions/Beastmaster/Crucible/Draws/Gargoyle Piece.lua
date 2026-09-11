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
	inheritedProfiles = 
	{
	},
}



return tbl
