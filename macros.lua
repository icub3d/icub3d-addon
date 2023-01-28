-- We use these as the default values. The first is if there is no
-- macro in the slot, the second if it's a spell.
icub3d_DefaultIcon = 'spell_chargenegative'
icub3d_QuestionIcon = 'INV_Misc_QuestionMark'

--------------------------------------------------------------------
-- SLASH COMMANDS
--------------------------------------------------------------------
SLASH_ICUB3DMACROS1 = '/im'
SlashCmdList["ICUB3DMACROS"] = function(msg, editBox)
	if msg == 'create' then
		icub3d_CreateMacros()
	elseif msg == 'delete' then
		icub3d_DeleteMacros()
	else
		icub3d_Error('unknown icub3d-macro command: %s', { msg })
	end
end

--------------------------------------------------------------------
-- EVENT REGISTRATION
--------------------------------------------------------------------
icub3d_RegisterEvent(
	'ADDON_READY',
	function(arg1)
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
local icub3d_PermanentMacros = {
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
	['im_scrap'] = { icon = 'inv_misc_wartornscrap_plate', body = '/click EasyScrap_ScrapKeybindFrame' },
	['im_root_beam'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip Solar Beam\n/cast [mod:alt,talent:4/2,@focus] [talent:4/2,@mouseover,harm] [] Mass Entanglement\n/cast  [mod:alt,@focus] [@mouseover,harm] [] Solar Beam\n' },
	['im_travel'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [mod:shift] Treant Form; [mod:alt] Stag Form; Travel Form' },
	['im_cloak_belt'] = { icon = icub3d_QuestionIcon, body = '#showtooltip\n/use [mod:shift] 15; 6' },
	['im_belt'] = { icon = icub3d_QuestionIcon, body = '#showtooltip\n/use 6' },
	['im_cloak'] = { icon = icub3d_QuestionIcon, body = '#showtooltip\n/use 15' },
	['im_trinket'] = { icon = icub3d_QuestionIcon, body = '#showtooltip\n/use [mod:shift] 14; 13' },
	['im_racial'] = { icon = icub3d_QuestionIcon, body = "/run print('hello')" },
	['im_medallion'] = { icon = icub3d_QuestionIcon, body = '#showtooltip\n/use Honorable Medallion' },
	['im_glide'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip Glide\n/dismount\n/cast [mod:shift] Goblin Glider Kit; Glide' },
	['im_soothe'] = { icon = icub3d_QuestionIcon, body = '#showtooltip \n/cast [mod:shift] Hibernate; Soothe' },
	['im_healthstone'] = { icon = icub3d_QuestionIcon, body = '#showtooltip healthstone\n/use healthstone' },
	['im_imp_void'] = { icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Summon Voidlord; Summon Imp' },
	['im_fel_succ'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [mod:shift] Summon Succubus; Summon Felhunter' },
	['im_banish_subjugate'] = { icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Subjugate Demon; Banish' },
	['im_curse'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [mod:shift] Curse of Weakness; Curse of Exhaustion' },
	['im_ritual'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [mod:shift] Ritual of Summoning; Ritual of Doom' },
	['im_pet_attack_follow'] = { icon = 'ability_ghoulfrenzy',
		body = '/petfollow [mod:shift]\n/petattack [nomod:shift,mod:alt,@focus] [nomod:shift,@mouseover,harm,nodead] [nomod:shift,harm] [nomod:shift,@mouseovertarget,harm] [nomod:shift,@targettarget,harm] [nomod:shift]' },
	['im_pet_move_stay'] = { icon = 'ability_hunter_pet_goto', body = '/petstay [mod:shift]\n/petmoveto [nomod:shift]' },
	['im_pet_special'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [pet:felhunter,@mouseover,harm,nodead] [pet:felhunter,harm] [pet:felhunter] Devour Magic; [pet:succubus,@mouseover,harm,nodead] [pet:succubus,harm] [pet:succubus] Whiplash; Fear' },
	['im_demonic_circle'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [mod:shift] Demonic Circle; Demonic Circle: Teleport' },
	['im_lock_stone'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [mod:shift] Create Soulwell; Create Healthstone' },
	['im_devo'] = { icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Concentration Aura; Devotion Aura' },
	['im_crus'] = { icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Retribution Aura; Crusader Aura' },
	['im_foam_loot'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/use [mod:shift] Soft Foam Sword; [mod:alt] Goblin Glider Kit; Loot-A-Rang' },
	['im_levitate'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/use [mod:shift] Goblin Glider Kit[Racial] ; [mod:alt,@focus] [@mouseover,help,nodead] [help] [@mouseovertarget,help] [@targettarget,help] [] Levitate' },
	['im_health'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/use [mod:shift] Healthstone; Spiritual Healing Potion' },
	['im_health_rev'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/use [mod:shift] Spiritual Healing Potion; Healthstone' },
	['im_glider_flap'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/use [mod:shift] [noform:4] Goblin Glider Kit; Flap' },
	['im_covenant'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/use [mod:shift] Signature Ability; Covenant Ability' },
	['im_cyclone_typhoon'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/use [mod:shift] Typhoon; [mod:alt,@focus] [@mouseover,harm,nodead] [harm] [@mouseovertarget,harm] [@targettarget,harm] [] Cyclone' },
	['im_glider_foam'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/use [mod:shift] Soft Foam Sword; Goblin Glider Kit' },
	['im_flap'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [nomod:shift,noform:4] Moonkin Form; [nomod:sift] Flap\n/cancelform [mod:shift]' },
	['im_entangling_hibernate'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [mod:shift] Hibernate; Entangling Roots' },
	['im_charge_roar'] = { icon = icub3d_QuestionIcon, body = '#showtooltip\n/cast [mod:shift] Stampeding Roar; Wild Charge' },
	['im_fregen'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [nomod:shift,nostance:1] !Bear Form; [nomod:shift] Frenzied Regeneration\n/cancelform [mod:shift]' },
	['im_warrior_stances'] = { icon = icub3d_QuestionIcon,
		body = '#showtooltip\n/cast [stance:2]!Defensive Stance;!Battle Stance' },
	['im_empty'] = { icon = icub3d_DefaultIcon, body = '' }
}

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
		body = "#showtooltip\n/cast Berserking"
	elseif race == "Vulpera" then
		body = "#showtooltip\n/cast [mod:shift] Rummage Your Bag; Bag of Tricks"
	elseif race == "Tauren" then local p = x
		if p > 12 and p < 25 then
			p = p + 12
		end

		body = "#showtooltip\n/cast War Stomp"
	elseif race == "Nightborne" then
		body = "#showtooltip\n/cast [mod:shift] Cantrips; Arcane Pulse"
	end

	if GetMacroInfo('im_racial') == nil then
		CreateMacro('im_racial', icub3d_QuestionIcon, body)
	else
		EditMacro('im_racial', 'im_racial', icub3d_QuestionIcon, body, 1)
	end
end

function icub3d_CreateMacros()
	for name, macro in pairs(icub3d_PermanentMacros) do
		icub3d_Debug("macro %s", { name })
		if GetMacroInfo(name) == nil then
			CreateMacro(name, macro.icon, macro.body, false)
		else
			EditMacro(name, name, macro.icon, macro.body, 1)
		end
	end
	icub3d_RacialMacro()
end

function icub3d_DeleteMacros()
	-- Start at the end, and move backward to first position (1).
	for i = 0 + select(1, GetNumMacros()), 1, -1 do
		DeleteMacro(i)
	end

	-- Start at the end, and move backward to first position (121).
	for i = 120 + select(2, GetNumMacros()), 121, -1 do
		DeleteMacro(i)
	end
end
