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
	inheritedProfiles = 
	{
	},
}



return tbl
