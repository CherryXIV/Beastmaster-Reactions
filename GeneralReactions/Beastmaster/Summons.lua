local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Wespe",
			uuid = "3f7b9c12-e4a8-4c5d-b261-9d0e8a47f5c3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Wespe",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionID = 44890,
						actionLua = "if TibsBM_autoFinalSting == nil then\n    TibsBM_autoFinalSting = true\nend\nlocal target = TensorCore.mGetTarget()\nif target == nil then\n    self.used = true\n    return\nend\nlocal action = ActionList:Get(1, 44890)\nif action ~= nil then\n    action:Cast(target.id)\nend\nself.used = true\n",
						atomicPriority = true,
						conditions = 
						{
							
							{
								"2f9fc4fb-708e-04ad-bb79-511f40e7bb34",
								true,
							},
							
							{
								"8cfac0b8-3252-54c8-a27c-16f2d2777c15",
								true,
							},
							
							{
								"842540c3-7565-18dd-98bd-dd40eca46146",
								true,
							},
							
							{
								"1cd335ba-8f20-d942-904c-91761b8c3984",
								true,
							},
							
							{
								"67ed062c-46f6-8723-b339-268146a48850",
								true,
							},
							
							{
								"f9688526-1db3-4952-b1ef-3b5f38a96f93",
								true,
							},
						},
						ignoreWeaveRules = true,
						name = "Press Tempered Release",
						uuid = "1ca7cf68-1064-0f8e-90c8-9a5e6c09ae2f",
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
						conditionType = 14,
						jobIDList = 
						{
							43,
						},
						name = "BST",
						uuid = "2f9fc4fb-708e-04ad-bb79-511f40e7bb34",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In Combat",
						uuid = "8cfac0b8-3252-54c8-a27c-16f2d2777c15",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "data.final_sting = data.final_sting or {}\nlocal state = data.final_sting\nif state.isKillable == nil then\n    return false\nend\nreturn state.isKillable(TensorCore.mGetPlayer(), TensorCore.mGetTarget())\n",
						name = "Wespe Killable",
						uuid = "842540c3-7565-18dd-98bd-dd40eca46146",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif player == nil then\n    return false\nend\nlocal BST = AnyoneCore and AnyoneCore.BST\nif BST == nil or BST.GetFamiliar == nil then\n    return false\nend\nlocal familiar = BST.GetFamiliar(player)\nreturn familiar ~= nil and familiar.id == 10\n",
						name = "Wespe Out",
						uuid = "1cd335ba-8f20-d942-904c-91761b8c3984",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TibsBM_autoFinalSting ~= false\n",
						name = "Auto On",
						uuid = "67ed062c-46f6-8723-b339-268146a48850",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 44890,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "Tempered Release <=1s",
						uuid = "f9688526-1db3-4952-b1ef-3b5f38a96f93",
						version = 3,
					},
				},
			},
			name = "Wespe Final Sting",
			uuid = "4d525127-66f4-30bc-a47b-e186271539f9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Wespe",
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif player == nil or player.job ~= 43 then\n    self.used = true\n    return\nend\n\ndata.final_sting = data.final_sting or {}\nlocal state = data.final_sting\nif state.killVersion ~= 9 then\n    state.killVersion = 9\n    state.dpp = state.dpp or 3\n    state.callText = \"Final Sting Can Kill target\"\n    state.colText = GUI:ColorConvertFloat4ToU32(0.20, 0.55, 1.0, 1.0)\n    state.qtFlags = GUI.WindowFlags_NoCollapse + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_AlwaysAutoResize\n    state.overlayFlags = GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoCollapse + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoFocusOnAppearing + GUI.WindowFlags_NoBringToFrontOnFocus\n    function state.hasWespe(nowPlayer)\n        local BM = AnyoneCore and AnyoneCore.Beastmaster\n        if nowPlayer == nil or BM == nil or BM.GetBattlehornBeast == nil then\n            return false\n        end\n        local i = 1\n        while i <= 3 do\n            local beast = BM.GetBattlehornBeast(i, nowPlayer)\n            if beast ~= nil and beast.id == 10 then\n                return true\n            end\n            i = i + 1\n        end\n        return false\n    end\n    function state.isKillable(nowPlayer, nowTarget)\n        if state.hasWespe(nowPlayer) ~= true or nowTarget == nil or nowTarget.attackable ~= true or nowTarget.alive ~= true or nowTarget.hp == nil or nowTarget.hp.max <= 0 or nowTarget.hp.current <= 0 then\n            return false\n        end\n        local hp = nowTarget.hp.current\n        local frac = hp / nowTarget.hp.max\n        if frac < 0 then frac = 0 elseif frac > 1 then frac = 1 end\n        return (2000 + 1000 * (1 - frac)) * state.dpp >= hp\n    end\nend\n\nif state.hasWespe(player) ~= true then\n    self.used = true\n    return\nend\n\nif TibsBM_autoFinalSting == nil then TibsBM_autoFinalSting = true end\nif TibsBM_killText == nil then TibsBM_killText = true end\n\nlocal on = TibsBM_autoFinalSting == true\nlocal r, g, b = 0.70, 0.16, 0.16\nif on then r, g, b = 0.16, 0.62, 0.22 end\nGUI:Begin(\"##WespeQT\", true, state.qtFlags)\nGUI:PushStyleColor(GUI.Col_Button, r, g, b, 1)\nGUI:PushStyleColor(GUI.Col_ButtonHovered, r + 0.10, g + 0.10, b + 0.10, 1)\nGUI:PushStyleColor(GUI.Col_ButtonActive, r - 0.06, g - 0.06, b - 0.06, 1)\nif GUI:Button(\"Auto Final Sting\", 150, 28) then\n    TibsBM_autoFinalSting = not on\nend\nGUI:PopStyleColor(3)\nTibsBM_killText = GUI:Checkbox(\"Kill text\", TibsBM_killText == true)\nGUI:End()\n\nif TibsBM_killText == true and player.incombat == true and state.isKillable(player, TensorCore.mGetTarget()) then\n    local w, h = GUI:GetScreenSize()\n    GUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\n    GUI:SetNextWindowSize(w, h, GUI.SetCond_Always)\n    GUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\n    GUI:Begin(\"WespeFSText##tr\", true, state.overlayFlags)\n    GUI:SetWindowFontScale(3)\n    GUI:AddText((w - GUI:CalcTextSize(state.callText)) * 0.5, h * 0.16, state.colText, state.callText)\n    GUI:End()\n    GUI:PopStyleColor()\nend\n\nself.used = true",
						name = "Wespe HUD",
						uuid = "7e3c9a14-5b82-4f0d-a1c6-8d4e2b90f573",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
			},
			eventType = 13,
			name = "Wespe Final Sting HUD",
			uuid = "11906759-f33b-0db2-8035-a88f5edf1d78",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
