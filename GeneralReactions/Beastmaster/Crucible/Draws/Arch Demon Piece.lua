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
	inheritedProfiles = 
	{
	},
}



return tbl
