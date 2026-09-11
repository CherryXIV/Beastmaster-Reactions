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
			name = "Beastmaster\\Crucible\\Draws",
			uuid = "5e9a2c7f-1b4d-48e6-a3c0-9f7d2e5b8a14",
		},
		inheritanceRoot = "Beastmaster\\Crucible\\Draws",
		objectType = "folder",
	}, 
	inheritedProfiles = 
	{
		"Beastmaster\\Crucible\\Draws",
	},
}



return tbl