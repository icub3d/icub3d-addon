--------------------------------------------------------------------
-- GLOBAL VARIABLES
--------------------------------------------------------------------
icub3d_MACROTYPE = nil
icub3d_PVP1 = nil
icub3d_PVP2 = nil

-- We use these as the default values. The first is if there is no
-- macro in the slot, the second if it's a spell.
icub3d_DefaultIcon = 'spell_chargenegative'
icub3d_QuestionIcon = 'INV_Misc_QuestionMark'

--------------------------------------------------------------------
-- SLASH COMMANDS
--------------------------------------------------------------------
SLASH_ICUB3DMACROS1 = '/im'
function SlashCmdList.ICUB3DMACROS(msg, editBox)
   if msg == 'create' then
	  icub3d_CreateMacros()
   elseif msg == 'delete' then
	  icub3d_DeleteMacros()
   elseif msg == 'place' then
	  icub3d_PlaceMacros()
   else
	  icub3d_Error('unknown icub3d-macro command: %s', {msg})
   end
end

--------------------------------------------------------------------
-- EVENT REGISTRATION
--------------------------------------------------------------------
icub3d_RegisterEvent(
   'ADDON_READY',
   function(arg1)
	  if icub3d_MACROTYPE == nil then
		 icub3d_MACROTYPE = 'pve'
		 icub3d_PVP1 = 'none'
		 icub3d_PVP2 = 'none'
	  end

	  icub3d_MacrosInit()
   end
)

--------------------------------------------------------------------
-- MACRO CODE
--------------------------------------------------------------------
-- This prevents icons from being animated onto the main action bar
IconIntroTracker.RegisterEvent = function()
end
IconIntroTracker:UnregisterEvent('SPELL_PUSHED_TO_ACTIONBAR')

-- When we create macros, we'll create these as well. They aren't
-- normally used in action bars but I do occasionally use them in
-- opie.
icub3d_PermanentMacros = {
   ['im_buy'] = {
	  icon = 'inv_misc_bag_10_green',
	  body = '#/script BuyMerchantItem(1)\n/click GossipTitleButton3\n/click QuestFrameCompleteButton\n/click QuestFrameCompleteQuestButton'
   },
   ['im_turnin'] = {
	  icon = 'achievement_quests_completed_08',
	  body = '/script SelectGossipAvailableQuest(1)\n/script CompleteQuest()\n/script AcceptQuest()\n/script GetQuestReward(1)'
   },
   ['im_mench'] = {
	  icon = icub3d_QuestionIcon,
	  body = '#showtooltip Enchanting\n/run C_TradeSkillUI.CraftRecipe(TradeSkillFrame.RecipeList:GetSelectedRecipeID())\n/use Enchanting Vellum\n/click StaticPopup1Button1'
   },
   ['im_sell'] = {
	  icon = 'inv_shirt_grey_01',
	  body = '/run local c,i,n,v=0;for b=0,4 do for s=1,GetContainerNumSlots(b)do i={GetContainerItemInfo(b,s)}n=i[7]if n and string.find(n,"9d9d9d")then v={GetItemInfo(n)}q=i[2]c=c+v[11]*q;UseContainerItem(b,s)print(n,q)end;end;end;print(GetCoinText(c))'
   },
   ['im_focus'] = {
	  icon = 'ability_cheapshot',
	  body = '/clearfocus [target=focus,exists]\n/focus [target=focus,noexists]'
   },
   ['im_scrap'] = {icon = 'inv_misc_wartornscrap_plate', body = '/click EasyScrap_ScrapKeybindFrame'}
}

-- When we change the macros for an action bar button, it's possible
-- to choose one of these.
icub3d_SpecialMacros = {
   ['im_fregen'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [nostance:1] !Bear Form; Frenzied Regeneration'},
   ['im_root_beam'] = {icon = icub3d_QuestionIcon, body = '#showtooltip Solar Beam\n/cast [mod:alt,talent:4/2,@focus] [talent:4/2,@mouseover,harm] [] Mass Entanglement\n/cast  [mod:alt,@focus] [@mouseover,harm] [] Solar Beam\n'},
   ['im_travel'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Treant Form; [mod:alt] Stag Form; Travel Form'},
   ['im_cloak_belt'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/use [mod:shift] 15; 6'},
   ['im_belt'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/use 6'},
   ['im_cloak'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/use 15'},
   ['im_trinket'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/use [mod:shift] 14; 13'},
   ['im_racial'] = {icon = icub3d_QuestionIcon, body = "/run print('hello')"},
   ['im_medallion'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/use Honorable Medallion'},
   ['im_glide'] = {icon = icub3d_QuestionIcon, body = '#showtooltip Glide\n/dismount\n/cast [mod:shift] Goblin Glider Kit; Glide'},
   ['im_soothe'] = {icon = icub3d_QuestionIcon, body = '#showtooltip \n/cast [mod:shift] Hibernate; Soothe'},
   ['im_healthstone'] = {icon = icub3d_QuestionIcon, body = '#showtooltip healthstone\n/use healthstone'},
   ['im_imp_void'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Summon Voidlord; Summon Imp'},
   ['im_fel_succ'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Summon Succubus; Summon Felhunter'},
   ['im_banish_subjugate'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Subjugate Demon; Banish'},
   ['im_curse'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Curse of Weakness; Curse of Exhaustion'},
   ['im_ritual'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Ritual of Summoning; Ritual of Doom'},
   ['im_pet_attack_follow'] = {icon = 'ability_ghoulfrenzy', body = '/petfollow [mod:shift]\n/petattack [nomod:shift,mod:alt,@focus] [nomod:shift,@mouseover,harm,nodead] [nomod:shift,harm] [nomod:shift,@mouseovertarget,harm] [nomod:shift,@targettarget,harm] [nomod:shift]'},
   ['im_pet_move_stay'] = {icon = 'ability_hunter_pet_goto', body = '/petstay [mod:shift]\n/petmoveto [nomod:shift]'},
   ['im_pet_special'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [pet:felhunter,@mouseover,harm,nodead] [pet:felhunter,harm] [pet:felhunter] Devour Magic; [pet:succubus,@mouseover,harm,nodead] [pet:succubus,harm] [pet:succubus] Whiplash; Fear'},
   ['im_demonic_circle'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Demonic Circle; Demonic Circle: Teleport'},
   ['im_lock_stone'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Create Soulwell; Create Healthstone'},
   ['im_devo'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Concentration Aura; Devotion Aura'},
   ['im_crus'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Retribution Aura; Crusader Aura'},
   ['im_foam_loot'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/use [mod:shift] Soft Foam Sword; [mod:alt] Goblin Glider Kit; Loot-A-Rang'},
   ['im_levitate'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/use [mod:shift] Goblin Glider Kit; [mod:alt,@focus] [@mouseover,help,nodead] [help] [@mouseovertarget,help] [@targettarget,help] [] Levitate'},
   ['im_health'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/use [mod:shift] Healthstone; Spiritual Healing Potion'},
   ['im_health_rev'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/use [mod:shift] Spiritual Healing Potion; Healthstone'},
   ['im_glider_flap'] = {icon = icub3d_QuestionIcon, body ='#showtooltip\n/use [mod:shift] [noform:4] Goblin Glider Kit; Flap'},
   ['im_covenant'] = {icon = icub3d_QuestionIcon, body ='#showtooltip\n/use [mod:shift] Signature Ability; Covenant Ability'},
   ['im_cyclone_typhoon'] = {icon = icub3d_QuestionIcon, body ='#showtooltip\n/use [mod:shift] Typhoon; [mod:alt,@focus] [@mouseover,harm,nodead] [harm] [@mouseovertarget,harm] [@targettarget,harm] [] Cyclone'},
   ['im_glider_foam'] = {icon = icub3d_QuestionIcon, body = '#showtooltip\n/use [mod:shift] Soft Foam Sword; Goblin Glider Kit'},
   
}

-- These are the different macro formats that can be used.
icub3d_MacroFormats = {
   ['pve'] = {
	  ['both'] = '#showtooltip %1$s\n/cast [mod:alt,@player] [@mouseover,exists,nodead] [@cursor,combat] [] %1$s',
	  ['harm'] = '#showtooltip %1$s\n/cast [mod:alt,@focus] [@mouseover,harm,nodead] [harm] [@mouseovertarget,harm] [@targettarget,harm] [] %1$s',
	  ['help'] = '#showtooltip %1$s \n/cast [mod:alt,@player] [@mouseover,help,nodead] [help] [@targettarget,help] [] %1$s',
	  ['mouse'] = '#showtooltip %1$s \n/cast [mod:alt,@player] [mod:shift,@cursor] [] %1$s',
	  ['use'] = '#showtooltip %1$s \n/use %1$s',
	  ['click'] = '#showtooltip %1$s \n/click [@mouseover] [] %1$s',
	  ['simple'] = '#showtooltip %1$s \n/use %1$s',
   },
   ['pvp'] = {
	  ['both'] = '#showtooltip %1$s\n/cast [mod:alt,@player] [@mouseover,exists,nodead] [@cursor,combat] [] %1$s',
	  ['harm'] = '#showtooltip %1$s\n/cast [mod:alt,@arena1] [mod:shift,@arena2] [@mouseover,harm,nodead] [harm] [@mouseovertarget,harm] [@targettarget,harm] [] %1$s',
	  ['help'] = '#showtooltip %1$s\n/cast [mod:alt,@player] [mod:shift,@%2s] [@mouseover,help,nodead] [help] [@%3s] %1$s',
	  ['mouse'] = '#showtooltip %1$s \n/cast [mod:alt,@player] [mod:shift,@focus] [] %1$s',
	  ['use'] = '#showtooltip %1$s \n/use %1$s',
	  ['click'] = '#showtooltip %1$s \n/click [@mouseover] [] %1$s',
	  ['simple'] = '#showtooltip %1$s \n/use %1$s',
   }
}

function icub3d_UpdateMacro(name, where, typ, spell)
   macro = string.format(icub3d_MacroFormats[where][typ], spell, icub3d_PVP1, icub3d_PVP2)
   if spell == 'Prowl' then
	  macro = '#showtooltip Prowl\n/cancelform [nostance:2]\n/cast Prowl'
   elseif spell == 'Glide' then
	  macro = '#showtooltip [mod: shift] Goblin Glider Kit; Glide\n/dismount [nomod:shift,mounted]\n/cast [mod:shift] Goblin Glider Kit; Glide'
   elseif spell == 'Dash' then
	  macro = '#showtooltip Dash\n/cancelform [nostance:2]\n/cast Dash'
   elseif spell == "Angelic Feather" then
	  macro = '#showtooltip Angelic Feather \n/cast [nomod,@player] [] Angelic Feather'
   elseif spell == "Divine Shield" and GetSpecialization() == 2 then -- only do this for prot.
	  macro = "#showtooltip Divine Shield\n/cancelaura Divine Shield\n/cast Divine Shield"
   end
   EditMacro(name, nil, icub3d_QuestionIcon, macro)
end

function icub3d_MacrosInit()
   -- Update our racial macro.
   icub3d_RacialMacro()
end

function icub3d_RacialMacro()
   _, race, _ = UnitRace('player')
   local body = '#showtooltip\n/cast [mod:shift] Cannibalize; Will of the Forsaken'

   if race == 'BloodElf' then
	  body = '#showtooltip\n/cast Arcane Torrent'
   elseif race == 'NightElf' then
	  body = '#showtooltip\n/cast Shadowmeld'
   elseif race == 'HighmountainTauren' then
	  body = '#showtooltip\n/cast Bull Rush'
   elseif race == 'Orc' then
	  body = '#showtooltip\n/cast Blood Fury'
   elseif race == "Human" then
	  body = "#showtooltip\n/cast Every Man for Himself"
   elseif race == "Troll" then
	  body ="#showtooltip\n/cast Berserking"
   elseif race == "Vulpera" then
	  body ="#showtooltip\n/cast [mod:shift] Rummage Your Bag; Bag of Tricks"
   elseif race == "Tauren" then
	  body ="#showtooltip\n/cast War Stomp"
   end

   icub3d_SpecialMacros['im_racial'] = {icon = icub3d_QuestionIcon, body = body}

   if GetMacroInfo('im_racial') == nil then
	  CreateMacro('im_racial', icub3d_QuestionIcon, body)
   else
	  EditMacro('im_racial', 'im_racial', icub3d_QuestionIcon, body, 1)
   end
end

function icub3d_CreateMacro(x)
   local p = nil
   if x < 19 then
	  p = true
   end
   local name = string.format('is-%03d', x)
   if GetMacroInfo(name) == nil then
	  CreateMacro(name, icub3d_QuestionIcon, '', p)
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

function icub3d_PlaceMacros()
   for x = 1, 120 do
	  -- skip the second action bar.
	  local p = x
	  if p > 12 then
		 p = p + 12
	  end
	  
	  -- Move the action bar into position.
	  local name = string.format('is-%03d', x)
	  PickupMacro(name)
	  PlaceAction(p)
	  ClearCursor()
   end
end


function icub3d_DeleteMacros()
   for i = 1, 138 do
	  local name = string.format('is-%03d', i)
	  local oldName = string.format('is-%02d', i)
	  DeleteMacro(name)
	  DeleteMacro(oldName)
   end
   for name, macro in pairs(icub3d_PermanentMacros) do
	  DeleteMacro(name)
   end
end

function icub3d_UpdateMacros(spec, where)
   for i, s in ipairs(spec.actionbar) do
	  icub3d_Debug('%s', {s.name})
	  -- Track the slot we'd place it in. We want to skip the second
	  -- action bar.
	  local p = i
	  if p > 12 then
		 p = p + 12
	  end

	  -- Determine the macro name the spell will be placed in and set
	  -- a default target.
	  local name = string.format('is-%03d', i)

	  if s.typ == 'skip' then
		 EditMacro(name, nil, icub3d_DefaultIcon, '')
	  elseif s.typ == 'potion' then
		 local _, class, _ = UnitClass("player");
		 local spec = GetSpecialization()

		 local potion = "Potion of Spectral Intellect"
		 if class == "PALADIN" and (spec == 2 or spec == 3) then
			potion = "Potion of Spectral Strength"
		 elseif class == "DRUID" and spec ~= 1 and spec ~= 4 then
			potion = "Potion of Spectral Agility"
		 elseif class == "HUNTER" or class == "DEMONHUNTER" then
			potion = "Potion of Spectral Agility"
		 end
		 local mc = string.format('#showtooltip\n/use [mod:shift] Spiritual Mana Potion; %1$s', potion)
		 EditMacro(name, nil, icub3d_QuestionIcon, mc)
	  elseif s.typ == 'macro' then
		 -- We want to use one of our special macros.
		 local macro = icub3d_SpecialMacros[s.name]
		 if macro ~= nil then
			EditMacro(name, nil, macro.icon, macro.body)
		 else
			icub3d_Error('icub3dSpecialMacros[%s] not found', {s.name})
		 end
	  elseif s.typ == 'pvp' then
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
		 icub3d_UpdateMacro(name, where, selected.typ, selected.name)
	  elseif s.typ == 'talent' then
		 -- This is a pvp talent slot.
		 local count = 0
		 local selected = nil

		 -- Find the pvp for the given count.
		 for _, spell in ipairs(spec.talent) do
			-- We found a spell, increment the count.
			if GetSpellInfo(spell.name) ~= nil or spell.typ == 'pot' then
			   count = count + 1
			end
			-- If we've found the number of pvptalents we were
			-- expecting, we found the right spell.
			if count == s.num then
			   selected = spell
			   break
			end
		 end

		 -- Otherwise, we'll just use the alternate.
		 if selected == nil then
			EditMacro(name, nil, icub3d_DefaultIcon, '')
		 elseif selected.typ == 'pot' then
			local mc = string.format('#showtooltip %1$s \n/use %1$s', selected.name)
			EditMacro(name, nil, icub3d_QuestionIcon, mc)
		 elseif selected.name == 'Demonic Circle' then
			-- We want to use one of our special macros.
			local macro = icub3d_SpecialMacros['im_demonic_circle']
			EditMacro(name, nil, macro.icon, macro.body)
		 else
			-- Update the macro with the chosen spell or alternate.
			icub3d_UpdateMacro(name, where, selected.typ, selected.name)
		 end
	  elseif s.typ == 'click' then
		 -- This is just a normal spell, item, etc.
		 icub3d_UpdateMacro(name, where, s.typ, s.name)
	  elseif s.typ == 'use' then
		 -- This is just a normal spell, item, etc.
		 icub3d_UpdateMacro(name, where, s.typ, s.name)
	  elseif GetSpellInfo(s.name) ~= nil then
		 -- This is just a normal spell, item, etc.
		 icub3d_UpdateMacro(name, where, s.typ, s.name)
	  elseif s.alternates ~= nil then
		 -- No spell was found, so try the alternates.
		 for _, alt in ipairs(s.alternates) do
			if alt.typ == 'skip' then
			   EditMacro(name, nil, icub3d_DefaultIcon, '')
			elseif alt.typ == 'macro' then
			   -- We want to use one of our special macros.
			   local macro = icub3d_SpecialMacros[alt.name]
			   if macro ~= nil then
				  EditMacro(name, nil, macro.icon, macro.body)
			   else
				  icub3d_Error('icub3dSpecialMacros[%s] not found', {alt.name})
			   end
			elseif GetSpellInfo(alt.name) ~= nil then
			   icub3d_UpdateMacro(name, where, alt.typ, alt.name)
			   break
			end
		 end
	  elseif s.typ == 'ignore' then

	  else
		 icub3d_Error('unable to place spell(%s)', {s.name})
	  end
   end
end
