local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Beastmaster\\Crucible",
			uuid = "004716f4-e356-06e8-e910-ba2e79989544",
		},
		inheritanceRoot = "Beastmaster\\Crucible",
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
						actionLua = "if CaptureReaction_Enabled == nil then\n    CaptureReaction_Enabled = false\nend\n\nlocal flags = GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoCollapse + GUI.WindowFlags_AlwaysAutoResize\nGUI:SetNextWindowSize(220, 0, GUI.SetCond_Always)\nlocal visible = GUI:Begin(\"Capture Menu###CaptureMenu\", true, flags)\n\nif visible then\n    GUI:Text(\"Capture Spam\")\n    GUI:SameLine(150)\n    local newEnabled, changed = GUI:Checkbox(\"##CaptureEnabled\", CaptureReaction_Enabled)\n    if changed then\n        CaptureReaction_Enabled = newEnabled\n    end\nend\n\nGUI:End()\nself.used = true",
						uuid = "e869c964-9865-db03-a50e-3452d326a83c",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 44880,
						conditions = 
						{
							
							{
								"8aa709c9-db34-4c2d-b1db-dfb238a81fc3",
								true,
							},
						},
						targetType = "Enemy",
						uuid = "e070475c-4cdd-9176-bee6-bdc1662a7e7e",
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
						conditionLua = "if CaptureReaction_Enabled then\n    return true\nelse\n\treturn false\nend",
						name = "L - Toggle enabled",
						uuid = "8aa709c9-db34-4c2d-b1db-dfb238a81fc3",
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
								"83ed2437-e2b9-3c55-bcf0-aeee82860413",
								true,
							},
						},
						filterTargetType = "Enemy",
						name = "F - Nearest",
						uuid = "c6d430fd-e4ca-5432-805c-c699a11ca305",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 4626,
						name = "B - Not interested",
						uuid = "83ed2437-e2b9-3c55-bcf0-aeee82860413",
						version = 3,
					},
				},
			},
			eventType = 13,
			name = "Spam Capture",
			uuid = "f51ff691-1e1d-ed86-a9fe-fc51924d5ba9",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
		"Beastmaster\\Crucible",
	},
}



return tbl