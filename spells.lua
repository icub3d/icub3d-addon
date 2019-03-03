-- A helper function creates a table that the system will understand
-- as a spell. The variadic arguments are the alternates to use if not
-- available, for example, a talent. They should be given in pairs wit
-- hthe type and name.
function icub3d_Spell(typ, name, target, ...)
   if target == nil then
	  target = 1
   end
   arg = {...}
   local alternates = {}
   for x = 1, select("#",...)-1, 2 do
	  alternates[math.floor((x+1)/2)] = {typ = arg[x], name = arg[x+1], target = target}
   end
   spell = {
	  typ = typ,
	  name = name,
	  target = target,
	  alternates = alternates,
   }
   return spell
end

function icub3d_PvPTalent(num, target)
   return {typ = "pvp", num = num, target = target}
end

function icub3d_Skip()
   return {typ = "skip"}
end

function icub3d_Macro(name)
   return {typ = "macro", name = name}
end

-- icub3d_spells contains the spells that each character uses.
--
--
-- These are stored by class by the standardized string name. See:
-- https://wow.gamepedia.com/ClassId
icub3d_Spells = {
   ["DEMONHUNTER"] = {
	  specs = { -- The tags are useful for switching but these should be in in-game order.
		 {
			tags = {"h", "havoc"},
			pvp = {
			   alternate = icub3d_Spell("help", "Arcane Torrent"),
			   spells = {
				  icub3d_Spell("harm", "Mana Break"),
				  icub3d_Spell("harm", "Mana Rift"),
				  icub3d_Spell("harm", "Eye of Leotheras"),
				  icub3d_Spell("harm", "Reverse Magic"),
				  icub3d_Spell("harm", "Rain from Above"),
			   },
			},
			actionbar = { -- These should be in the order you want them on the action bar.
			   -- Top Row
			   icub3d_Spell("harm", "Demon's Bite", 1),
			   icub3d_Spell("harm", "Demon's Bite", 2),
			   icub3d_Spell("harm", "Chaos Strike", 1),
			   icub3d_Spell("harm", "Chaos Strike", 2),
			   icub3d_Spell("harm", "Immolation Aura", 1, "harm", "Chaos Strike"),
			   icub3d_Spell("harm", "Immolation Aura", 1, "harm", "Chaos Strike"),
			   icub3d_Spell("harm", "Chaos Nova", 1),
			   icub3d_Spell("harm", "Chaos Nova", 1),
			   icub3d_Spell("harm", "Throw Glaive", 1),
			   icub3d_Spell("harm", "Throw Glaive", 2),
			   icub3d_Spell("harm", "Blade Dance", 1),
			   icub3d_Spell("harm", "Blade Dance", 1),

			   -- Middle Left
			   icub3d_Spell("harm", "Dark Slash", 1, "harm", "Chaos Strike"),
			   icub3d_Spell("harm", "Dark Slash", 2, "harm", "Chaos Strike"),
			   icub3d_Spell("harm", "Imprison", 1),
			   icub3d_Spell("harm", "Imprison", 2),
			   icub3d_Spell("harm", "Fel Rush", 1),
			   icub3d_Spell("harm", "Fel Rush", 2),
			   icub3d_Spell("harm", "Torment", 1),
			   icub3d_Spell("harm", "Torment", 2),
			   icub3d_Spell("harm", "Fel Barrage", 1, "harm", "Torment"),
			   icub3d_Spell("harm", "Fel Barrage", 1, "harm", "Torment"),

			   -- Middle Right
			   icub3d_Spell("harm", "Eye Beam", 1),
			   icub3d_Spell("harm", "Eye Beam", 1),
			   icub3d_Spell("mouse", "Metamorphosis", 1),
			   icub3d_Spell("mouse", "Metamorphosis", 1),
			   icub3d_Spell("harm", "Felblade", 1, "mouse", "Metamorphosis"),
			   icub3d_Spell("harm", "Felblade", 2, "mouse", "Metamorphosis"),
			   icub3d_Spell("harm", "Disrupt", 1),
			   icub3d_Spell("harm", "Disrupt", 2),
			   icub3d_Spell("harm", "Fel Eruption", 1, "harm", "Consume Magic"),
			   icub3d_Spell("harm", "Fel Eruption", 2, "harm", "Consume Magic"),
			   icub3d_Spell("harm", "Consume Magic", 1),
			   icub3d_Spell("harm", "Consume Magic", 2),

			   -- Bottom Left
			   icub3d_PvPTalent(1, 1),
			   icub3d_PvPTalent(1, 2),
			   icub3d_PvPTalent(2, 1),
			   icub3d_PvPTalent(2, 2),
			   icub3d_PvPTalent(3, 1),
			   icub3d_PvPTalent(3, 2),
			   icub3d_Macro("im_racial"),
			   icub3d_Macro("im_medallion"),
			   icub3d_Spell("help", "Blur"),
			   icub3d_Spell("help", "Darkness"),
			   icub3d_Spell("help", "Netherwalk", nil, "help", "Darkness"),
			   icub3d_Spell("help", "Vengeful Retreat"),
			   
			   -- Bottom Row (right)
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Spell("use", "Soft Foam Sword"),
			   icub3d_Macro("im_trinket"),
			   icub3d_Macro("im_belt"),
			   icub3d_Macro("im_cloak"),
			   icub3d_Spell("help", "Spectral Sight"),
			},
		 },
		 
		 {
			tags = {"v", "veng", "vengeance"},
			pvp = {
			   alternate = icub3d_Spell("harm", "Gladiator's Medallion"),
			   spells = {
				  icub3d_Spell("harm", "Reverse Magic"),
				  icub3d_Spell("harm", "Illidan's Grasp"),
				  icub3d_Spell("harm", "Demonic Trample"),
			   },
			},
			actionbar = { -- These should be in the order you want them on the action bar.
			   -- Top Row
			   icub3d_Spell("harm", "Shear", 1),
			   icub3d_Spell("harm", "Shear", 2),
			   icub3d_Spell("harm", "Soul Cleave", 1),
			   icub3d_Spell("harm", "Soul Cleave", 2),
			   icub3d_Spell("help", "Spirit Bomb", 1, "harm", "Fel Devastation", "mouse", "Infernal Strike"),
			   icub3d_Spell("help", "Spirit Bomb", 2, "harm", "Fel Devastation", "mouse", "Infernal Strike"),
			   icub3d_Spell("harm", "Immolation Aura", 1),
			   icub3d_Spell("harm", "Immolation Aura", 2),
			   icub3d_Spell("harm", "Throw Glaive", 1),
			   icub3d_Spell("harm", "Throw Glaive", 2),
			   icub3d_Spell("mouse", "Sigil of Flame", 1),
			   icub3d_Spell("mouse", "Sigil of Flame", 1),

			   -- Middle Left
			   icub3d_Spell("mouse", "Sigil of Chains", 1, "harm", "Immolation Aura"),
			   icub3d_Spell("mouse", "Sigil of Chains", 1, "harm", "Immolation Aura"),
			   icub3d_Spell("harm", "Imprison", 1),
			   icub3d_Spell("harm", "Imprison", 2),
			   icub3d_Spell("mouse", "Infernal Strike", 1),
			   icub3d_Spell("mouse", "Infernal Strike", 2),
			   icub3d_Spell("mouse", "Sigil of Misery", 1),
			   icub3d_Spell("mouse", "Sigil of Misery", 2),
			   icub3d_Spell("harm", "Torment", 1),
			   icub3d_Spell("harm", "Torment", 2),
			   icub3d_Skip(),
			   icub3d_Skip(),

			   -- Middle Right
			   icub3d_Spell("mouse", "Sigil of Silence", 1),
			   icub3d_Spell("mouse", "Sigil of Silence", 2),
			   icub3d_Spell("mouse", "Metamorphosis", 1),
			   icub3d_Spell("mouse", "Metamorphosis", 1),
			   icub3d_Spell("harm", "Felblade", 1, "mouse", "Metamorphosis"),
			   icub3d_Spell("harm", "Felblade", 2, "mouse", "Metamorphosis"),
			   icub3d_Spell("harm", "Disrupt", 1),
			   icub3d_Spell("harm", "Disrupt", 2),
			   icub3d_Spell("harm", "Fiery Brand", 1),
			   icub3d_Spell("harm", "Fiery Brand", 2),
			   icub3d_Spell("harm", "Consume Magic", 1),
			   icub3d_Spell("harm", "Consume Magic", 2),

			   -- Bottom Left
			   icub3d_PvPTalent(1, 1),
			   icub3d_PvPTalent(1, 2),
			   icub3d_PvPTalent(2, 1),
			   icub3d_PvPTalent(2, 2),
			   icub3d_PvPTalent(3, 1),
			   icub3d_PvPTalent(3, 2),
			   icub3d_Macro("im_racial"),
			   icub3d_Macro("im_medallion"),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),

			   -- Bottom Row (right)
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Spell("help", "Soul Barrier", nil, "help", "Demon Spikes"),
			   icub3d_Spell("help", "Demon Spikes"),
			   icub3d_Spell("use", "Soft Foam Sword"),
			   icub3d_Macro("im_trinket"),
			   icub3d_Macro("im_belt"),
			   icub3d_Macro("im_cloak"),
			   icub3d_Spell("help", "Spectral Sight"),
			},
		 },
	  },
   },
   
   ["PALADIN"] = {
	  specs = { -- The tags are useful for switching but these should be in in-game order.
		 {
			tags = {"h", "holy"},
			pvp = {
			   alternate = icub3d_Spell("help", "Gladiator's Medallion", 1, "help", "Adaptation", "help", "Relentless"),
			   spells = {
				  icub3d_Spell("help", "Divine Favor"),
			   },
			},
			actionbar = { -- These should be in the order you want them on the action bar.
			   -- Top Row
			   icub3d_Spell("harm", "Holy Shock", 1),
			   icub3d_Spell("harm", "Holy Shock", 2),
			   icub3d_Spell("help", "Holy Shock", 1),
			   icub3d_Spell("help", "Holy Shock", 2),
			   icub3d_Spell("help", "Flash of Light", 1),
			   icub3d_Spell("help", "Flash of Light", 2),
			   icub3d_Spell("help", "Holy Light", 1),
			   icub3d_Spell("help", "Holy Light", 2),
			   icub3d_Spell("help", "Beacon of Light", 1),
			   icub3d_Spell("help", "Beacon of Light", 2),
			   icub3d_Spell("harm", "Judgment", 2),
			   icub3d_Spell("harm", "Judgment", 2),

			   -- Middle Left
			   icub3d_Spell("help", "Cleanse", 1),
			   icub3d_Spell("help", "Cleanse", 2),
			   icub3d_Spell("harm", "Repentance", 1, "help", "Blinding Light", "harm", "Hammer of Justice"),
			   icub3d_Spell("harm", "Repentance", 2, "help", "Blinding Light", "harm", "Hammer of Justice"),
			   icub3d_Spell("help", "Light of the Martyr", 1),
			   icub3d_Spell("help", "Light of the Martyr", 2),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Spell("harm", "Hand of Reckoning", 1),
			   icub3d_Spell("harm", "Hand of Reckoning", 2),
			   icub3d_Spell("help", "Lay on Hands", 1),
			   icub3d_Spell("help", "Lay on Hands", 2),

			   -- Middle Right
			   icub3d_Spell("help", "Blessing of Freedom", 1),
			   icub3d_Spell("help", "Blessing of Freedom", 2),
			   icub3d_Spell("help", "Blessing of Protection", 1),
			   icub3d_Spell("help", "Blessing of Protection", 2),
			   icub3d_Spell("help", "Blessing of Sacrifice", 1),
			   icub3d_Spell("help", "Blessing of Sacrifice", 2),
			   icub3d_Spell("harm", "Crusader Strike", 1),
			   icub3d_Spell("harm", "Crusader Strike", 2),
			   icub3d_Spell("help", "Bestow Faith", 1, "mouse", "Light's Hammer", "help", "Holy Light"),
			   icub3d_Spell("help", "Bestow Faith", 2, "mouse", "Light's Hammer", "help", "Holy Light"),
			   icub3d_Spell("harm", "Hammer of Justice", 1),
			   icub3d_Spell("harm", "Hammer of Justice", 2),
			   
			   -- Bottom Row (left)
			   icub3d_Spell("use", "F.R.I.E.D."),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Macro("im_racial"),
			   icub3d_Macro("im_medallion"),
			   icub3d_PvPTalent(1, 1),
			   icub3d_Spell("help", "Avenging Wrath", 1),
			   icub3d_Spell("help", "Divine Shield", 2),
			   icub3d_Spell("help", "Divine Protection", 1),
			   
			   -- Bottom Row (right)
			   icub3d_Spell("help", "Avenging Crusader", 1, "help", "Divine Shield"),
			   icub3d_Spell("help", "Aura Mastery"),
			   icub3d_Spell("mouse", "Consecration"),
			   icub3d_Spell("mouse", "Light of Dawn"),
			   icub3d_Spell("mouse", "Divine Steed"),
			   icub3d_Spell("help", "Rule of Law", 1, "help", "Light of Dawn"),
			   icub3d_Spell("help", "Holy Avenger", 1, "mouse", "Holy Prism", "help", "Light of Dawn"),
			   icub3d_Macro("im_trinket"),
			   icub3d_Macro("im_belt"),
			   icub3d_Macro("im_cloak"),
			   icub3d_Skip(),
			   icub3d_Skip(),
			},
		 },
		 {
			tags = {"p", "prot", "protection"},
			pvp = {
			   alternate = icub3d_Spell("help", "Divine Shield"),
			   spells = {
				  icub3d_Spell("help", "Shield of Virtue"),
			   },
			},
			actionbar = { -- These should be in the order you want them on the action bar.
			   -- Top Row
			   icub3d_Spell("harm", "Hammer of the Righteous", 1),
			   icub3d_Spell("harm", "Hammer of the Righteous", 2),
			   icub3d_Spell("help", "Flash of Light", 1),
			   icub3d_Spell("help", "Flash of Light", 2),
			   icub3d_Spell("help", "Light of the Protector", 1),
			   icub3d_Spell("help", "Light of the Protector", 2),
			   icub3d_Spell("harm", "Shield of the Righteous", 1),
			   icub3d_Spell("harm", "Shield of the Righteous", 2),
			   icub3d_Spell("harm", "Avenger's Shield", 1),
			   icub3d_Spell("harm", "Avenger's Shield", 2),
			   icub3d_Spell("harm", "Judgment", 1),
			   icub3d_Spell("harm", "Judgment", 2),

			   -- Middle Left
			   icub3d_Spell("help", "Cleanse Toxins", 1),
			   icub3d_Spell("help", "Cleanse Toxins", 2),
			   icub3d_Spell("harm", "Repentance", 1, "help", "Blinding Light", "harm", "Hammer of Justice"),
			   icub3d_Spell("harm", "Repentance", 2, "help", "Blinding Light", "harm", "Hammer of Justice"),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Spell("harm", "Rebuke", 1),
			   icub3d_Spell("harm", "Rebuke", 2),
			   icub3d_Spell("harm", "Hand of Reckoning", 1),
			   icub3d_Spell("harm", "Hand of Reckoning", 2),
			   icub3d_Spell("help", "Lay on Hands", 1),
			   icub3d_Spell("help", "Lay on Hands", 2),

			   -- Middle Right
			   icub3d_Spell("help", "Blessing of Freedom", 1),
			   icub3d_Spell("help", "Blessing of Freedom", 2),
			   icub3d_Spell("help", "Blessing of Protection", 1),
			   icub3d_Spell("help", "Blessing of Protection", 2),
			   icub3d_Spell("help", "Blessing of Sacrifice", 1),
			   icub3d_Spell("help", "Blessing of Sacrifice", 2),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Spell("harm", "Hammer of Justice", 1),
			   icub3d_Spell("harm", "Hammer of Justice", 2),
			   
			   -- Bottom Row (left)
			   icub3d_Spell("use", "F.R.I.E.D."),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Macro("im_racial"),
			   icub3d_Macro("im_medallion"),
			   icub3d_PvPTalent(1, 1),
			   icub3d_Spell("help", "Avenging Wrath", 1),
			   icub3d_Spell("help", "Divine Shield", 2),
			   icub3d_Spell("help", "Bastion of Light", 1, "help", "Divine Shield"),
			   
			   -- Bottom Row (right)
			   icub3d_Spell("help", "Aegis of Light", 1, "help", "Divine Shield"),
			   icub3d_Spell("help", "Ardent Defender", 1),
			   icub3d_Spell("mouse", "Consecration"),
			   icub3d_Skip(),
			   icub3d_Spell("mouse", "Divine Steed"),
			   icub3d_Spell("mouse", "Guardian of Ancient Kings", 1, "mouse", "Guardian of the Forgotten Queen"),
			   icub3d_Spell("mouse", "Seraphim", 1, "mouse", "Guardian of Ancient Kings"),
			   icub3d_Macro("im_trinket"),
			   icub3d_Macro("im_belt"),
			   icub3d_Macro("im_cloak"),
			   icub3d_Skip(),
			   icub3d_Skip(),
			},
		 },
		 {
			tags = {"r", "ret", "retribution"},
			pvp = {
			   alternate = icub3d_Spell("help", "Blessing of Protection"),
			   spells = {
				  icub3d_Spell("help", "Blessing of Sanctuary"),
				  icub3d_Spell("help", "Hammer of Reckoning"),
			   },
			},
			actionbar = { -- These should be in the order you want them on the action bar.
			   -- Top Row
			   icub3d_Spell("harm", "Crusader Strike", 1),
			   icub3d_Spell("harm", "Crusader Strike", 2),
			   icub3d_Spell("harm", "Blade of Justice", 1),
			   icub3d_Spell("harm", "Blade of Justice", 2),
			   icub3d_Spell("harm", "Templar's Verdict", 1),
			   icub3d_Spell("harm", "Templar's Verdict", 2),
			   icub3d_Spell("harm", "Hand of Hindrance", 1),
			   icub3d_Spell("harm", "Hand of Hindrance", 2),
			   icub3d_Spell("harm", "Divine Storm", 1),
			   icub3d_Spell("harm", "Divine Storm", 2),
			   icub3d_Spell("harm", "Judgment", 1),
			   icub3d_Spell("harm", "Judgment", 2),

			   -- Middle Left
			   icub3d_Spell("help", "Cleanse Toxins", 1),
			   icub3d_Spell("help", "Cleanse Toxins", 2),
			   icub3d_Spell("harm", "Repentance", 1, "help", "Blinding Light", "harm", "Hammer of Justice"),
			   icub3d_Spell("harm", "Repentance", 2, "help", "Blinding Light", "harm", "Hammer of Justice"),
			   icub3d_Spell("harm", "Execution Sentence", 1, "harm", "Hammer of Justice"),
			   icub3d_Spell("harm", "Execution Sentence", 2, "harm", "Hammer of Justice"),
			   icub3d_Spell("harm", "Rebuke", 1),
			   icub3d_Spell("harm", "Rebuke", 2),
			   icub3d_Spell("harm", "Hand of Reckoning", 1),
			   icub3d_Spell("harm", "Hand of Reckoning", 2),
			   icub3d_Spell("help", "Lay on Hands", 1),
			   icub3d_Spell("help", "Lay on Hands", 2),

			   -- Middle Right
			   icub3d_Spell("help", "Blessing of Freedom", 1),
			   icub3d_Spell("help", "Blessing of Freedom", 2),
			   icub3d_Spell("help", "Blessing of Protection", 1),
			   icub3d_Spell("help", "Blessing of Protection", 2),
			   icub3d_PvPTalent(1, 1),
			   icub3d_PvPTalent(1, 2),
			   icub3d_Spell("help", "Flash of Light", 1),
			   icub3d_Spell("help", "Flash of Light", 2),
			   icub3d_Spell("help", "Word of Glory", 1, "harm", "Justicar's Vengeance", "help", "Flash of Light"),
			   icub3d_Spell("help", "Word of Glory", 2, "harm", "Justicar's Vengeance", "help", "Flash of Light"),
			   icub3d_Spell("harm", "Hammer of Justice", 1),
			   icub3d_Spell("harm", "Hammer of Justice", 2),
			   
			   -- Bottom Row (left)
			   icub3d_Spell("use", "F.R.I.E.D."),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Spell("harm", "Hammer of Wrath", 1),
			   icub3d_Spell("harm", "Hammer of Wrath", 2),
			   icub3d_Macro("im_racial"),
			   icub3d_Macro("im_medallion"),
			   icub3d_PvPTalent(2, 1),
			   icub3d_Spell("help", "Avenging Wrath", 1),
			   icub3d_Spell("help", "Divine Shield", 2),
			   icub3d_Spell("help", "Eye for an Eye", 1, "help", "Divine Shield"),
			   
			   -- Bottom Row (right)
			   icub3d_Spell("help", "Inquisition", 1, "help", "Crusade", "help", "Divine Shield"),
			   icub3d_Spell("help", "Shield of Vengeance"),
			   icub3d_Spell("mouse", "Wake of Ashes", 1, "mouse", "Consecration"),
			   icub3d_Skip(),
			   icub3d_Spell("mouse", "Divine Steed"),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Macro("im_trinket"),
			   icub3d_Macro("im_belt"),
			   icub3d_Macro("im_cloak"),
			   icub3d_Spell("help", "Greater Blessing of Kings", 1),
			   icub3d_Spell("help", "Greater Blessing of Wisdom", 1),
			},
		 },
	  },
   },

   ["PRIEST"] = {
	  specs = { -- The tags are useful for switching but these should be in in-game order.
		 {
			tags = {"d", "disc", "discipline"},
			pvp = {
			   alternate = icub3d_Spell("help", "Penance"),
			   spells = {
				  icub3d_Spell("help", "Archangel"),
				  icub3d_Spell("help", "Dark Archangel"),
				  icub3d_Spell("help", "Premonition"),
			   },
			},
			actionbar = { -- These should be in the order you want them on the action bar.
			   -- Top Row
			   icub3d_Spell("harm", "Penance", 1),
			   icub3d_Spell("harm", "Penance", 2),
			   icub3d_Spell("help", "Penance", 1),
			   icub3d_Spell("help", "Penance", 2),
			   icub3d_Spell("help", "Power Word: Shield", 1),
			   icub3d_Spell("help", "Power Word: Shield", 2),
			   icub3d_Spell("help", "Shadow Mend", 1),
			   icub3d_Spell("help", "Shadow Mend", 2),
			   icub3d_Spell("harm", "Shadow Word: Pain", 1),
			   icub3d_Spell("harm", "Shadow Word: Pain", 2),
			   icub3d_Spell("harm", "Smite", 1),
			   icub3d_Spell("harm", "Smite", 2),

			   -- Middle Row (left)
			   icub3d_Spell("harm", "Dispel Magic", 1),
			   icub3d_Spell("harm", "Dispel Magic", 2),
			   icub3d_Spell("help", "Purify", 1),
			   icub3d_Spell("help", "Purify", 2),
			   icub3d_Spell("help", "Power Word: Radiance", 1),
			   icub3d_Spell("help", "Power Word: Radiance", 2),
			   icub3d_Spell("help", "Pain Suppression", 1),
			   icub3d_Spell("help", "Pain Suppression", 2),
			   icub3d_Spell("harm", "Schism", 1, "harm", "Shadow Word: Pain"),
			   icub3d_Spell("harm", "Schism", 2, "harm", "Shadow Word: Pain"),
			   icub3d_Spell("harm", "Power Word: Solace", 1, "harm", "Shadow Word: Pain"),
			   icub3d_Spell("harm", "Power Word: Solace", 2, "harm", "Shadow Word: Pain"),

			   -- Middle Row (right)
			   icub3d_Spell("help", "Leap of Faith", 1),
			   icub3d_Spell("help", "Leap of Faith", 2),
			   icub3d_Spell("help", "Shadow Covenant", 1, "help","Power Word: Shield"),
			   icub3d_Spell("help", "Shadow Covenant", 2, "help","Power Word: Shield"),
			   icub3d_Spell("harm", "Shadowfiend", 1),
			   icub3d_Spell("harm", "Shadowfiend", 2),
			   icub3d_Spell("help", "Shining Force", 1, "help", "Leap of Faith"),
			   icub3d_Spell("help", "Shining Force", 2, "help", "Leap of Faith"),
			   icub3d_Spell("help", "Levitate", 1),
			   icub3d_Spell("mouse", "Angelic Feather", 1, "help", "Levitate"),
			   icub3d_Spell("help", "Holy Nova", 1),
			   icub3d_Spell("help", "Halo", 1, "help", "Divine Star", "help", "Rapture"),

			   -- Bottom Row (left)
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_PvPTalent(1, 1),
			   icub3d_PvPTalent(2, 1),
			   icub3d_PvPTalent(3, 1),
			   icub3d_Spell("harm", "Mind Control", 1),
			   icub3d_Spell("harm", "Mind Control", 2),
			   icub3d_Spell("harm", "Shackle Undead", 1),
			   icub3d_Spell("harm", "Shackle Undead", 2),
			   icub3d_Spell("help", "Evangelism", nil, "mouse", "Mass Dispel"),
			   icub3d_Skip(),

			   -- Bottom Row (right)
			   icub3d_Macro("im_racial"),
			   icub3d_Spell("help", "Gladiator's Medallion"),
			   icub3d_Spell("help", "Fade"),
			   icub3d_Spell("mouse", "Power Word: Barrier"),
			   icub3d_Spell("mouse", "Rapture"),
			   icub3d_Spell("mouse", "Mass Dispel"),
			   icub3d_Spell("harm", "Psychic Scream"),
			   icub3d_Spell("help", "Desperate Prayer"),
			   icub3d_Macro("im_trinket"),
			   icub3d_Macro("im_belt"),
			   icub3d_Macro("im_cloak"),
			   icub3d_Skip(),
			},
		 },
		 {
			tags = {"h", "holy"},
			pvp = {
			   alternate = icub3d_Spell("help", "Penance"),
			   spells = {
				  icub3d_Spell("help", "Holy Ward"),
				  icub3d_Spell("mouse", "Holy Word: Concentration"),
				  icub3d_Spell("help", "Greater Heal"),
				  icub3d_Spell("help", "Ray of Hope"),
				  icub3d_Spell("help", "Spirit of Redemption"),
			   },
			},
			actionbar = { -- These should be in the order you want them on the action bar.
			   -- Top Row
			   icub3d_Spell("help", "Heal", 1),
			   icub3d_Spell("help", "Heal", 2),
			   icub3d_Spell("help", "Prayer of Mending", 1),
			   icub3d_Spell("help", "Prayer of Mending", 2),
			   icub3d_Spell("help", "Holy Word: Serenity", 1),
			   icub3d_Spell("help", "Holy Word: Serentiy", 2),
			   icub3d_Spell("help", "Flash Heal", 1),
			   icub3d_Spell("help", "Flash Heal", 2),
			   icub3d_Spell("harm", "Holy Fire", 1),
			   icub3d_Spell("harm", "Holy Fire", 2),
			   icub3d_Spell("harm", "Smite", 1),
			   icub3d_Spell("harm", "Smite", 2),

			   -- Middle Row (left)
			   icub3d_Spell("harm", "Dispel Magic", 1),
			   icub3d_Spell("harm", "Dispel Magic", 2),
			   icub3d_Spell("help", "Purify", 1),
			   icub3d_Spell("help", "Purify", 2),
			   icub3d_Spell("help", "Prayer of Healing", 1),
			   icub3d_Spell("help", "Prayer of Healing", 2),
			   icub3d_Spell("help", "Renew", 1),
			   icub3d_Spell("help", "Renew", 2),
			   icub3d_Spell("help", "Binding Heal", 1, "help", "Circle of Healing", "help", "Prayer of Mending"),
			   icub3d_Spell("help", "Binding Heal", 2, "help", "Circle of Healing", "help", "Prayer of Mending"),
			   icub3d_Spell("help", "Guardian Spirit", 1),
			   icub3d_Spell("help", "Guardian Spirit", 2),

			   -- Middle Row (right)
			   icub3d_Spell("help", "Leap of Faith", 1),
			   icub3d_Spell("help", "Leap of Faith", 2),
			   icub3d_PvPTalent(1, 1),
			   icub3d_PvPTalent(1, 2),
			   icub3d_Spell("harm", "Holy Word: Chastise", 1),
			   icub3d_Spell("harm", "Holy Word: Chastise", 2),
			   icub3d_Spell("help", "Shining Force", 1, "help", "Leap of Faith"),
			   icub3d_Spell("help", "Shining Force", 2, "help", "Leap of Faith"),
			   icub3d_Spell("help", "Levitate", 1),
			   icub3d_Spell("mouse", "Angelic Feather", 1, "help", "Levitate"),
			   icub3d_Spell("help", "Holy Nova", 1),
			   icub3d_Skip(),

			   -- Bottom Row (left)
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_PvPTalent(2, 1),
			   icub3d_PvPTalent(2, 1),
			   icub3d_PvPTalent(3, 1),
			   icub3d_PvPTalent(3, 1),
			   icub3d_Spell("harm", "Mind Control", 1),
			   icub3d_Spell("harm", "Mind Control", 2),
			   icub3d_Spell("harm", "Shackle Undead", 1),
			   icub3d_Spell("harm", "Shackle Undead", 2),
			   icub3d_Spell("help", "Symbol of Hope", 1),
			   icub3d_Spell("help", "Apotheosis"),

			   -- Bottom Row (right)
			   icub3d_Macro("im_racial"),
			   icub3d_Spell("help", "Gladiator's Medallion"),
			   icub3d_Spell("help", "Fade"),
			   icub3d_Spell("mouse", "Holy Word: Sanctify"),
			   icub3d_Spell("help", "Divine Hymn"),
			   icub3d_Spell("mouse", "Mass Dispel"),
			   icub3d_Spell("harm", "Psychic Scream"),
			   icub3d_Spell("help", "Desperate Prayer"),
			   icub3d_Macro("im_trinket"),
			   icub3d_Macro("im_belt"),
			   icub3d_Macro("im_cloak"),
			   icub3d_Skip(),
			},
		 },
		 {
			tags = {"s", "shadow", "shadow"},
			pvp = {
			   alternate = icub3d_Spell("harm", "Mind Blast"),
			   spells = {
				  icub3d_Spell("help", "Void Shift"),
				  icub3d_Spell("help", "Psyfiend"),
				  icub3d_Spell("help", "Premonition"),
			   },
			},
			actionbar = { -- These should be in the order you want them on the action bar.
			   -- Top Row
			   icub3d_Spell("harm", "Mind Blast", 1),
			   icub3d_Spell("harm", "Mind Blast", 2),
			   icub3d_Spell("harm", "Mind Flay", 1),
			   icub3d_Spell("harm", "Mind flay", 2),
			   icub3d_Spell("help", "Power Word: Shield", 1),
			   icub3d_Spell("help", "Power Word: Shield", 2),
			   icub3d_Spell("help", "Shadow Mend", 1),
			   icub3d_Spell("help", "Shadow Mend", 2),
			   icub3d_Spell("harm", "Shadow Word: Pain", 1),
			   icub3d_Spell("harm", "Shadow Word: Pain", 2),
			   icub3d_Spell("harm", "Mind Sear", 1),
			   icub3d_Spell("harm", "Mind Sear", 2),

			   -- Middle Row (left)
			   icub3d_Spell("harm", "Dispel Magic", 1),
			   icub3d_Spell("harm", "Dispel Magic", 2),
			   icub3d_Spell("help", "Purify Disease", 1),
			   icub3d_Spell("help", "Purify Disease", 2),
			   icub3d_Spell("harm", "Mind Bomb", 1),
			   icub3d_Spell("harm", "Mind Bomb", 2),
			   icub3d_Spell("harm", "Vampiric Touch", 1),
			   icub3d_Spell("harm", "Vampiric Touch", 2),
			   icub3d_Spell("harm", "Void Eruption", 1),
			   icub3d_Spell("harm", "Void Eruption", 2),
			   icub3d_Spell("harm", "Shadow Word: Death", 1, "harm", "Shadow Crush", "harm", "Mind Flay"),
			   icub3d_Spell("harm", "Shadow Word: Death", 2, "harm", "Shadow Crush", "harm", "Mind Flay"),

			   -- Middle Row (right)
			   icub3d_Spell("help", "Leap of Faith", 1),
			   icub3d_Spell("help", "Leap of Faith", 2),
			   icub3d_Spell("harm", "Void Torrent", 1, "harm", "Mind Flay"),
			   icub3d_Spell("harm", "Void Torrent", 2, "harm", "Mind Flay"),
			   icub3d_Spell("harm", "Shadowfiend", 1),
			   icub3d_Spell("harm", "Shadowfiend", 2),
			   icub3d_Spell("harm", "Silence", 1),
			   icub3d_Spell("harm", "Silence", 2),
			   icub3d_Spell("help", "Levitate", 1),
			   icub3d_Skip(),
			   icub3d_Skip(),
			   icub3d_Skip(),

			   -- Bottom Row (left)
			   icub3d_PvPTalent(1, 1),
			   icub3d_PvPTalent(1, 2),
			   icub3d_PvPTalent(2, 1),
			   icub3d_PvPTalent(2, 2),
			   icub3d_PvPTalent(3, 1),
			   icub3d_PvPTalent(3, 2),
			   icub3d_Spell("harm", "Mind Control", 1),
			   icub3d_Spell("harm", "Mind Control", 2),
			   icub3d_Spell("harm", "Shackle Undead", 1),
			   icub3d_Spell("harm", "Shackle Undead", 2),
			   icub3d_Spell("help", "Dispersion", nil),
			   icub3d_Skip(),

			   -- Bottom Row (right)
			   icub3d_Macro("im_racial"),
			   icub3d_Spell("help", "Gladiator's Medallion"),
			   icub3d_Spell("help", "Fade"),
			   icub3d_Spell("help", "Surrender to Madness", 1, "harm", "Dark Ascension"),
			   icub3d_Spell("help", "Surrender to Madness", 2, "harm", "Dark Ascension"),
			   icub3d_Spell("mouse", "Mass Dispel"),
			   icub3d_Skip(),
			   icub3d_Spell("help", "Vampiric Embrace"),
			   icub3d_Macro("im_trinket"),
			   icub3d_Macro("im_belt"),
			   icub3d_Macro("im_cloak"),
			   icub3d_Skip(),
			},
		 },
	  },
   },
};
