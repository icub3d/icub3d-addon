-- Slash command for managing macros. This is mostly for debug/fix as
-- it should all happen automagically.
SLASH_ICUB3DMACROS1 = "/im"
function SlashCmdList.ICUB3DMACROS(msg, editBox)
   if msg == "create" then
	  icub3d_CreateMacros()
   elseif msg == "delete" then
	  icub3d_DeleteMacros()
   else
	  print("unknown icub3d-macro command: " .. msg);
   end
end

-- When we create macros, we'll create these as well. They aren't
-- normally used in action bars but I do occasionally use them in
-- opie.
icub3d_PermanentMacros = {
   ["im_buy"] = { icon = "inv_misc_bag_10_green", body = "#/script BuyMerchantItem(1)\n/click GossipTitleButton3\n/click QuestFrameCompleteButton\n/click QuestFrameCompleteQuestButton"},
   ["im_turnin"] = { icon = "achievement_quests_completed_08", body = "/script SelectGossipAvailableQuest(1)\n/script CompleteQuest()\n/script GetQuestReward()"},
   ["im_mench"] = { icon = "INV_Misc_QuestionMark", body = "#showtooltip Enchanting\n/run C_TradeSkillUI.CraftRecipe(TradeSkillFrame.RecipeList:GetSelectedRecipeID())\n/use Enchanting Vellum\n/click StaticPopup1Button1"},
   ["im_focus"] = { icon = "ability_cheapshot", body = "/clearfocus [target=focus,exists]\n/focus [target=focus,noexists]"},
   ["im_scrap"] = { icon = "inv_misc_wartornscrap_plate", body = "/click EasyScrap_ScrapKeybindFrame" },
}

-- When we change the macros for an action bar button, it's possible
-- to choose one of these.
icub3d_SpecialMacros = {
   ["im_belt"] = { icon = "INV_Misc_QuestionMark", body = "#showtooltip\n/use 6"},
   ["im_cloak"] = { icon = "INV_Misc_QuestionMark", body = "#showtooltip\n/use 15"},
   ["im_trinket"] = { icon = "INV_Misc_QuestionMark", body = "#showtooltip\n/use [mod:alt] 14; 13"},
   ["im_racial"] = { icon = "INV_Misc_QuestionMark", body = "/run print('hello')"},
   ["im_medallion"] = { icon = "INV_Misc_QuestionMark", body = "#showtooltip\n/use Honorable Medallion"},
}

-- These are the different macro formats that can be used.
icub3d_MacroFormats = {
   ["pve"] = {
	  ["harm"] = {
		 "#showtooltip %1$s\n/cast [mod:alt,@focus] [@mouseover,harm,nodead] [harm] [@mouseovertarget,harm] [@targettarget,harm] [] %1$s",
		 "#showtooltip %1$s\n/cast [mod:alt,@focus] [@mouseover,harm,nodead] [harm] [@mouseovertarget,harm] [@targettarget,harm] [] %1$s",
	  },
	  ["help"] = {
		 "#showtooltip %1$s \n/cast [mod:alt,@player] [@mouseover,help,nodead] [help] [@targettarget,help] [] %1$s",
		 "#showtooltip %1$s \n/cast [mod:alt,@player] [@mouseover,help,nodead] [help] [@targettarget,help] [] %1$s",
	  },
	  ["mouse"] = {
		 "#showtooltip %1$s \n/cast [mod,@player] [] %1$s",
		 "#showtooltip %1$s \n/cast [mod,@player] [] %1$s",
	  },
	  ["use"] = {
		 "#showtooltip %1$s \n/use %1$s",
		 "#showtooltip %1$s \n/use %1$s",
	  },
   },
   ["pvp"] = {
	  ["harm"] = {
		 "#showtooltip %1$s\n/cast [mod:alt,@arena3] [@arena1] [] %1$s",
		 "#showtooltip %1$s\n/cast [mod:alt,@arena3] [@arena2] [] %1$s",
	  },
	  ["help"] = {
		 "#showtooltip %1$s\n/cast [mod:alt,@player] [@%2s] [] %1$s",
		 "#showtooltip %1$s\n/cast [mod:alt,@player] [@%2s] [] %1$s",
	  },
	  ["mouse"] = {
		 "#showtooltip %1$s \n/cast [mod,@player] [] %1$s",
		 "#showtooltip %1$s \n/cast [mod,@player] [] %1$s",
	  },
	  ["use"] = {
		 "#showtooltip %1$s \n/cast %1$s",
		 "#showtooltip %1$s \n/cast %1$s",
	  },
   }
}

function icub3d_UpdateMacro(name, where, typ, spell, target, who)
   macro = string.format(icub3d_MacroFormats[where][typ][target], spell, who)
   EditMacro(name, nil, nil, macro)
end

function icub3d_MacrosInit()
   -- Update our racial macro.
   icub3d_RacialMacro()
end

function icub3d_RacialMacro()
   _, race, _ = UnitRace("player")
   local body = "#showtooltip\n/cast [nomod] Will of the Forsaken; Cannibalize"

   if race == "BloodElf" then
	  body = "#showtooltip\n/cast Arcane Torrent"
   elseif race == "HighmountainTauren" then
	  body = "#showtooltip\n/cast Bull Rush"
   end

   icub3d_SpecialMacros["im_racial"] = {icon = "INV_Misc_QuestionMark", body = body}

   if GetMacroInfo("im_racial") == nil then
	  CreateMacro("im_racial", "INV_Misc_QuestionMark", body)
   else
	  EditMacro("im_racial", "im_racial", "INV_Misc_QuestionMark", body, 1)
   end
end

function icub3d_CreateMacro(x)
   local p = nil
   if x < 19 then
	  p = true
   end
   local name = string.format("is-%03d", x)
   if GetMacroInfo(name) == nil then
	  CreateMacro(name, "INV_Misc_QuestionMark", "", p)
   end
end

function icub3d_CreateMacros()
   for x = 1, 120 do
	  icub3d_CreateMacro(x)
   end

   for name, macro in pairs(icub3d_PermanentMacros) do
	  if GetMacroInfo(name) == nil then
		 CreateMacro(name, macro.icon, macro.body)
	  end
   end
end

function icub3d_DeleteMacros()
   for i = 1,138 do
	  local name = string.format("is-%03d", i)
	  local oldName = string.format("is-%02d", i)
	  DeleteMacro(name)
	  DeleteMacro(oldName)
   end
   for name, macro in pairs(icub3d_PermanentMacros) do
	  DeleteMacro(name)
   end
end

function icub3d_UpdateMacros(spec, where, targets)
   for i, s in ipairs(spec.actionbar) do
	  -- Track the slot we'd place it in. We want to skip the second
	  -- action bar.
	  p = i
	  if p > 12 then
		 p = p + 12
	  end
	  -- print(p .. " -> " .. DataDumper(s))

	  -- Determine the macro name the spell will be placed in and set
	  -- a default target.
	  local name = string.format("is-%03d", i)
	  if s.target == nil then
		 s.target = 1
	  end
	  
	  -- We may need to add the macro back to the actionbar if a
	  -- previous spec removed/skipped it.
	  if s.typ ~= "skip" and GetActionText(p) == nil then
		 PickupMacro(name)
		 PlaceAction(p)
	  end
	  
	  if s.typ == "skip" then
		 -- We want to remove this action, we aren't using it. Also,
		 -- clear the macro so it doesn't get placed when we put them
		 -- on the action bar.
		 EditMacro(name, nil, nil, "")
		 PickupAction(p)
		 ClearCursor()
	  elseif s.typ == "macro" then
		 -- We want to use one of our special macros.
		 local macro = icub3d_SpecialMacros[s.name]
		 if macro ~= nil then
			EditMacro(name, nil, macro.icon, macro.body)
		 else
			print("icub3dSpecialMacros[" .. s.name .. "] not found")
		 end
	  elseif s.typ == "pvp" then
		 -- This is a pvp talent slot.
		 local count = 0
		 local selected = nil
		 
		 -- Find the pvp for the given count.
		 for _, spell in ipairs(spec.pvp.spells) do
			-- We found a spell, increment the count.
			if GetSpellInfo(spell.name) ~= nil then
			   count = count + 1
			end
			-- If we've found the number of pvptalents we were
			-- expecting, we found the right spell.
			if count == s.num then
			   selected = spell
			   break
			end
			-- Otherwise, we'll just use the alternate.
			if selected == nil then
			   selected = spec.pvp.alternate
			end
		 end

		 -- Update the macro with the chosen spell or alternate.
		 icub3d_UpdateMacro(name, where, selected.typ, selected.name,
							s.target, targets[s.target])
	  elseif s.typ == "use" then
		 -- This is just a normal spell, item, etc.
		 icub3d_UpdateMacro(name, where, s.typ, s.name, s.target,
							targets[s.target])
	  elseif GetSpellInfo(s.name) ~= nil then
		 -- This is just a normal spell, item, etc.
		 icub3d_UpdateMacro(name, where, s.typ, s.name, s.target,
							targets[s.target])
	  elseif s.alternates ~= nil then
		 -- No spell was found, so try the alternates.
		 for _, alt in ipairs(s.alternates) do
			if GetSpellInfo(alt.name) ~= nil then
			   icub3d_UpdateMacro(name, where, alt.typ, alt.name,
								  alt.target, targets[alt.target])
			   break
			end
		 end
	  else
		 print("unable to place spell(" .. s.name .. ")")
	  end
   end
end
