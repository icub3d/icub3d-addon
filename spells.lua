-- A helper function creates a table that the system will understand
-- as a spell. The variadic arguments are the alternates to use if not
-- available, for example, a talent. They should be given in pairs wit
-- hthe type and name.
function icub3d_Spell(typ, name, target, ...)
   arg = {...}
   local alternates = {}
   for x = 1, select("#",...)-1, 2 do
	  alternates[math.floor((x+1)/2)] = {typ = arg[x], name = arg[x+1], target = target}
   end
   spell = {
	  typ = typ,
	  name = name,
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
-- The action bars aren't in a normal order.
--
--   - 1 - the main bar
--   - 2 - the second main bar. The algo skips this one.
--   - 3 - the far right bar.
--   - 4 - the left of the right bars
--   - 5 - the bottom right bar (that's 2 stacks of 6.
--   - 6 - the top-left bar on the bottom.
--
-- These are stored by class by the standardized string name. See:
-- https://wow.gamepedia.com/ClassId
icub3d_Spells = {
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
			   icub3d_Spell("help", "Penance", 1),
			   icub3d_Spell("help", "Penance", 2),
			   icub3d_Spell("harm", "Penance", 1),
			   icub3d_Spell("harm", "Penance", 2),
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
			   icub3d_Spell("mouse", "Angelic Feather", 1),
			   icub3d_Spell("help", "Holy Nova", 1),
			   icub3d_Spell("help", "Halo Force", 1, "help", "Divine Star", "help", "Rapture"),

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
			   icub3d_Spell("help", "Power Word: Fortitude"),

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
			   icub3d_Skip(),
			},
		 },
	  },
   },
};
