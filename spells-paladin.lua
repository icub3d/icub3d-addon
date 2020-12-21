icub3d_Paladin_Spells = {
   -- Top Left --
   icub3d_Spell('harm', 'Judgment'),
   icub3d_Spell('help', 'Holy Shock', 'help', 'Light of the Protector', 'harm', 'Blade of Justice'),
   icub3d_Spell('harm', 'Crusader Strike', 'harm', 'Hammer of the Righteous'),
   icub3d_Spell('help', 'Light of Dawn', 'harm', 'Avenger\'s Shield', 'harm', 'Divine Storm'),
   icub3d_Spell('harm', 'Holy Shock', 'harm', 'Shield of the Righteous', 'harm', 'Templar\'s Verdict'),
   icub3d_Spell('help', 'Flash of Light'),
   icub3d_Spell('help', 'Holy Light', 'harm', 'Hand of Hindrance', 'skip', 'skip'),
   icub3d_Spell('help', 'Light of the Martyr', 'skip', 'skip'),
   icub3d_Spell('help', 'Avenging Wrath'),
   icub3d_Spell('harm', 'Rebuke', 'skip', 'skip'),
   icub3d_Talent(1),
   icub3d_Talent(2),

   -- Top Right -- 
   icub3d_Talent(3),
   icub3d_Talent(4),
   icub3d_Talent(5),
   icub3d_Talent(6),
   icub3d_Talent(7),
   icub3d_Talent(8),
   icub3d_Talent(9),
   icub3d_Talent(10),
   icub3d_Spell('harm', 'Hammer of Justice'),
   icub3d_Spell('harm', 'Hand of Reckoning'),
   icub3d_Spell('harm', 'Consecration', 'skip', 'skip'),
   icub3d_Spell('help', 'Divine Protection', 'help', 'Ardent Defender', 'help', 'Shield of Vengeance'),

   -- Bottom Left --
   icub3d_Spell('help', 'Divine Steed'),
   icub3d_Spell('help', 'Divine Shield'),
   icub3d_Spell('help', 'Cleanse', 'help', 'Cleanse Toxins', 'skip', 'skip'),
   icub3d_Spell('help', 'Lay on Hands'),
   icub3d_Macro('im_racial'),
   icub3d_Skip(),
   icub3d_Spell('help', 'Guardian of Ancient Kings', 'help', 'Greater Blessing of Kings', 'help', 'Aura Mastery', 'skip', 'skip'),
   icub3d_Spell('help', 'Greater Blessing of Wisdom', 'help', 'Beacon of Light', 'skip', 'skip'),
   icub3d_Spell('help', 'Blessing of Freedom', 'skip', 'skip'),
   icub3d_Spell('help', 'Blessing of Protection', 'skip', 'skip'),
   icub3d_Spell('help', 'Blessing of Sacrifice', 'skip', 'skip'),
   icub3d_Spell('use', 'Heart Essence'),

   -- Bottom Right --
   icub3d_Spell('use', 'Goblin Glider Kit'),
   icub3d_Macro('im_cloak'),
   icub3d_Macro('im_trinket'),
   icub3d_Macro('im_belt'),
   icub3d_Spell('use', 'Soft Foam Sword'),
   icub3d_Spell('use', 'Loot-A-Rang'),
   icub3d_Macro('im_healthstone'),
   icub3d_Spell('potion', 'potion'),
   icub3d_Skip(),
   icub3d_Spell('help', 'Contemplation'),
   icub3d_Spell('help', 'Absolution', 'skip', 'skip'),
   icub3d_Spell('help', 'Redemption'),
}

icub3d_Spells['PALADIN'] = {
   specs = {
	  -- The tags are useful for switching but these should be in in-game order.
	  {
		 tags = {'h', 'holy'},
		 talent = {
			icub3d_Spell('help', 'Holy Avenger'),
			icub3d_Spell('help', 'Divine Favor'),
			icub3d_Spell('help', 'Bestow Faith'),
			icub3d_Spell('help', 'Rule of Law'),
			icub3d_Spell('help', 'Beacon of Faith'),
			icub3d_Spell('help', 'Beacon of Virtue'),
			icub3d_Spell('harm', 'Repentance'),
			icub3d_Spell('help', 'Blinding Light'),
			icub3d_Spell('mouse', 'Light\'s hammer'),
			icub3d_Spell('both', 'Holy Prism'),
			icub3d_Spell('pot', '"Third Wind" Potion'),
			icub3d_Spell('pot', 'Potion of Defiance'),
			icub3d_Spell('pot', 'Saltwater Potion'),
			icub3d_Spell('pot', 'Potion of Trivial Invisibility'),
			icub3d_Spell('pot', 'Swiftness Potion'),
			icub3d_Spell('pot', 'Drums of Fury'),
		 },
		 talents = {
			['raid'] = {2, 3, 3, 1, 1, 2, 2},
			['dungeon'] = {1, 3, 3, 1, 3, 1, 3},
			['pvp'] = {1, 3, 1, 1, 3, 2, 1}
		 },
		 actionbar = icub3d_Paladin_Spells,
	  },
	  {
		 tags = {'p', 'prot', 'protection'},
		 talent = {
			icub3d_Spell('help', 'Bastion of Light'),
			icub3d_Spell('help', 'Aegis of Light'),
			icub3d_Spell('help', 'Seraphim'),
			icub3d_Spell('harm', 'Repentance'),
			icub3d_Spell('help', 'Blinding Light'),
			icub3d_Spell('help', 'Shield of Virtue'),
			icub3d_Spell('help', 'Word of Glory'),
			icub3d_Spell('pot', '"Third Wind" Potion'),
			icub3d_Spell('pot', 'Potion of Defiance'),
			icub3d_Spell('pot', 'Saltwater Potion'),
			icub3d_Spell('pot', 'Potion of Trivial Invisibility'),
			icub3d_Spell('pot', 'Swiftness Potion'),
			icub3d_Spell('pot', 'Drums of Fury'),
		 },
		 talents = {
			['quest'] = {1, 2, 1, 2, 3, 1, 1},
			['raid'] = {1, 2, 1, 2, 3, 1, 2},
			['dungeon'] = {1, 2, 1, 2, 3, 1, 2},
			['pvp'] = {1, 2, 1, 3, 3, 2, 2},
			['solo'] = {1, 2, 1, 1, 3, 1, 1}
		 },
		 actionbar = icub3d_Paladin_Spells,
	  },
	  {
		 tags = {'r', 'ret', 'retribution'},
		 talent = {
			icub3d_Spell('harm', 'Wake of Ashes'),
			icub3d_Spell('help', 'Execution Sentence'),
			icub3d_Spell('help', 'Hammer of Wrath'),
			icub3d_Spell('help', 'Inquisition'),
			icub3d_Spell('harm', 'Repentance'),
			icub3d_Spell('help', 'Blinding Light'),
			icub3d_Spell('help', 'Eye for an Eye'),
			icub3d_Spell('help', 'Blessing of Sanctuary'),
			icub3d_Spell('harm', 'Justicar\'s Vengeance'),
			icub3d_Spell('help', 'Word of Glory'),
			icub3d_Spell('pot', '"Third Wind" Potion'),
			icub3d_Spell('pot', 'Potion of Defiance'),
			icub3d_Spell('pot', 'Saltwater Potion'),
			icub3d_Spell('pot', 'Potion of Trivial Invisibility'),
			icub3d_Spell('pot', 'Swiftness Potion'),
			icub3d_Spell('pot', 'Drums of Fury'),
		 },
		 talents = {
			['quest'] = {1, 2, 1, 3, 2, 1, 1},
			['raid'] = {2, 3, 3, 3, 2, 1, 2},
			['dungeon'] = {1, 3, 3, 3, 2, 1, 2},
			['pvp'] = {3, 3, 1, 3, 1, 1, 3}
		 },
		 actionbar = icub3d_Paladin_Spells,
	  }
   }
}
