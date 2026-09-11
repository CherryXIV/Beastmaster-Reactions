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
	inheritedProfiles = 
	{
	},
}



return tbl
