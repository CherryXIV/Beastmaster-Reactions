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
	inheritedProfiles = 
	{
	},
}



return tbl
