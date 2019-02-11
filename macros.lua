SLASH_IM1 = "/im";
SLASH_IM2 = "/icub3d-macro";
function SlashCmdList.IM(msg, editBox)
   if msg == "rm" then
	  icub3d_DeleteMacros();
   elseif msg == "init" then
	  icub3d_CreateMacros();
   else
	  print("unknown icub3d-macro command: " .. msg);
   end
end

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
   }
};

function icub3d_UpdateMacro(name, where, typ, spell, target, who)
   macro = string.format(icub3d_MacroFormats[where][typ][target], spell, who);
   EditMacro(name, nil, nil, macro);
end


function icub3d_PlaceMacros(spells, where, targets)
   for i, v in ipairs(spells) do
	  if v.skip == nil then
		 -- Skip the second action bar; it's normally hidden
		 p = i
		 if p > 12 then
			p = p + 12
		 end

		 for j, s in ipairs(v) do
			if s.typ == "macro" then
			   PickupMacro(s.name);
			   PlaceAction(p);
			   break;
			elseif GetSpellInfo(s.name) ~= nil then
			   local name = string.format("is-%02d", i);
			   if s.target == nil then
				  s.target = 1
			   end
			   icub3d_UpdateMacro(name, where, s.typ, s.name, s.target, targets[s.target]);
			   PickupMacro(name);
			   PlaceAction(p);
			   break
			end
		 end
	  end
   end
end

function icub3d_CreateMacros()
   for x = 1,90 do
	  CreateMacro(string.format("is-%02d", x), "INV_Misc_QuestionMark", "/run print('hello');");
   end

   -- These are specialized macros that are commonly used but I don't want to lose.
   CreateMacro("im_belt", "INV_Misc_QuestionMark", "#showtooltip\n/use 6");
   CreateMacro("im_cloak", "INV_Misc_QuestionMark", "#showtooltip\n/use 15");
   CreateMacro("im_buy", "inv_misc_bag_10_green", "#/script BuyMerchantItem(1)\n/click GossipTitleButton3\n/click QuestFrameCompleteButton\n/click QuestFrameCompleteQuestButton");
   CreateMacro("im_focus", "ability_cheapshot", "/clearfocus [target=focus,exists]\n/focus [target=focus,noexists]");
   CreateMacro("im_trinket", "INV_Misc_QuestionMark", "#showtooltip\n/use [mod:alt] 14; 13");
   CreateMacro("im_turnin", "achievement_quests_completed_08", "/script SelectGossipAvailableQuest(1)\n/script CompleteQuest()\n/script GetQuestReward()");
   CreateMacro("im_mench", "INV_Misc_QuestionMark", "#showtooltip Enchanting\n/run C_TradeSkillUI.CraftRecipe(TradeSkillFrame.RecipeList:GetSelectedRecipeID())\n/use Enchanting Vellum\n/click StaticPopup1Button1");
   CreateMacro("im_racial", "INV_Misc_QuestionMark", "/run print('hello')");
   icub3d_RacialMacro();
end

function icub3d_DeleteMacros()
   for x = 1,90 do
	  local name = string.format("is-%02d", x);
	  DeleteMacro(name);
   end

   -- These are specialized macros that are commonly used but I don't want to lose.
   DeleteMacro("im_belt");
   DeleteMacro("im_cloak");
   DeleteMacro("im_buy");
   DeleteMacro("im_focus");
   DeleteMacro("im_trinket");
   DeleteMacro("im_turnin");
   DeleteMacro("im_mench");
   DeleteMacro("im_racial");
end

function icub3d_RacialMacro()
   _, race, _ = UnitRace("player");

   -- default forsaken
   local macro = "#showtooltip\n/cast [nomod] Will of the Forsaken; Cannibalize";
   if race == "BloodElf" then
	  macro = "#showtooltip\n/cast Arcane Torrent";
   end

   EditMacro("im_racial", nil, nil, macro);
end

