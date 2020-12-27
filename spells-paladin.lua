icub3d_Paladin_Spells = {
   -- Top Left --
   icub3d_Spell('harm', 'Judgment'),
   icub3d_Spell('help', 'Holy Shock', 'harm', 'Blade of Justice', 'skip', 'skip'),
   icub3d_Spell('harm', 'Holy Shock', 'harm', 'Templar\'s Verdict', 'skip', 'skip'),
   icub3d_Spell('harm', 'Crusader Strike', 'harm', 'Hammer of the Righteous'),
   icub3d_Spell('help', 'Light of Dawn', 'harm', 'Avenger\'s Shield', 'harm', 'Divine Storm'),
   icub3d_Spell('harm', 'Shield of the Righteous'),
   icub3d_Spell('help', 'Flash of Light'),
   icub3d_Spell('help', 'Holy Light', 'harm', 'Hand of Hindrance', 'skip', 'skip'),
   icub3d_Spell('help', 'Light of the Martyr', 'skip', 'skip'),
   icub3d_Spell('help', 'Avenging Wrath'),
   icub3d_Spell('harm', 'Rebuke', 'skip', 'skip'),
   icub3d_Spell('help', 'Word of Glory'),

   -- Top Right --
   icub3d_Spell('help', 'Hammer of Wrath'),
   icub3d_Spell('harm', 'Wake of Ashes', 'skip', 'skip'),
   icub3d_Talent(1),
   icub3d_Talent(2),
   icub3d_Talent(3),
   icub3d_Talent(4),
   icub3d_Talent(5),
   icub3d_Talent(6),
   icub3d_Spell('harm', 'Hammer of Justice'),
   icub3d_Spell('harm', 'Hand of Reckoning'),
   icub3d_Spell('harm', 'Consecration', 'skip', 'skip'),
   icub3d_Spell('help', 'Divine Protection', 'help', 'Ardent Defender', 'help', 'Shield of Vengeance'),

   -- Bottom Left --
   icub3d_Spell('help', 'Divine Steed'),
   icub3d_Spell('help', 'Divine Shield'),
   icub3d_Spell('help', 'Cleanse', 'help', 'Cleanse Toxins', 'skip', 'skip'),
   icub3d_Spell('help', 'Lay on Hands'),
   icub3d_Spell('help', 'Guardian of Ancient Kings', 'help', 'Greater Blessing of Kings', 'help', 'Aura Mastery', 'skip', 'skip'),
   icub3d_Spell('help', 'Greater Blessing of Wisdom', 'help', 'Beacon of Light', 'skip', 'skip'),
   icub3d_Spell('help', 'Blessing of Freedom', 'skip', 'skip'),
   icub3d_Spell('help', 'Blessing of Protection', 'skip', 'skip'),
   icub3d_Spell('help', 'Blessing of Sacrifice', 'skip', 'skip'),
   icub3d_Spell('harm', 'Turn Evil', 'skip', 'skip'),
   icub3d_Macro('im_devo'),
   icub3d_Macro('im_crus'),

   -- Bottom Right --
   icub3d_Spell('mouse', 'Covenant Ability'),
   icub3d_Spell('mouse', 'Special  Ability'),
   icub3d_Spell('use', 'Goblin Glider Kit'),
   icub3d_Macro('im_racial'),
   icub3d_Macro('im_trinket'),
   icub3d_Macro('im_cloak_belt'),
   icub3d_Macro('im_healthstone'),
   icub3d_Spell('potion', 'potion'),
   icub3d_Spell('help', 'Sense Undead', 'skip', 'skip'),
   icub3d_Spell('help', 'Contemplation'),
   icub3d_Spell('help', 'Absolution', 'skip', 'skip'),
   icub3d_Spell('help', 'Redemption'),
}

icub3d_Paladin_Talents = {
   -- All --
   icub3d_Spell('harm', 'Repentance'),
   icub3d_Spell('harm', 'Blinding Light'),
   icub3d_Spell('help', 'Holy Avenger'),
   icub3d_Spell('help', 'Seraphim'),

   -- Holy --
   icub3d_Spell('help', 'Rule of Law'),
   icub3d_Spell('help', 'Bestow Faith'),
   icub3d_Spell('mouse', 'Light\'s Hammer'),
   icub3d_Spell('help', 'Beacon of Faith'),

   -- Protection --
   icub3d_Spell('help', 'Moment of Glory'),

   -- Retribution --
   icub3d_Spell('harm', 'Execution Sentence'),
   icub3d_Spell('help', 'Eye for an Eye'),
   icub3d_Spell('harm', 'Justicar\'s Vengeance'),
   icub3d_Spell('mouse', 'Final Reckoning'),

   -- PvP --
   icub3d_Spell('help', 'Divine Favor'),
   icub3d_Spell('help', 'Shield of Virtue'),
   icub3d_Spell('help', 'Blessing of Sanctuary'),
   
}

icub3d_Spells['PALADIN'] = {
   specs = {
	  -- The tags are useful for switching but these should be in in-game order.
	  {
		 tags = {'h', 'holy'},
		 talent = icub3d_Paladin_Talents,
		 talents = {
			['raid'] = {1, 2, 3, 3, 1, 3, 1},
			['dungeon'] = {1, 2, 3, 3, 1, 3, 1},
			['pvp'] = {2, 1, 1, 2, 1, 3, 2},
		 },
		 actionbar = icub3d_Paladin_Spells,
	  },
	  {
		 tags = {'p', 'prot', 'protection'},
		 talent = icub3d_Paladin_Talents,
		 talents = {
			['quest'] = {1, 2, 3, 2, 2, 1, 1},
			['raid'] = {1, 2, 3, 3, 1, 3, 1},
			['dungeon'] = {3, 1, 3, 1, 1, 2, 1},
			['pvp'] = {1, 2, 1, 3, 3, 1, 1},
		 },
		 actionbar = icub3d_Paladin_Spells,
	  },
	  {
		 tags = {'r', 'ret', 'retribution'},
		 talent = icub3d_Paladin_Talents,
		 talents = {
			['pvp'] = {1, 2, 1, 1, 3, 3, 1},
			['raid'] = {2, 2, 1, 2, 1, 1, 1},
			['dungeon'] = {1, 3, 1, 1, 1, 1, 1},
			['quest'] = {1, 2, 1, 2, 1, 1, 1},
		 },
		 actionbar = icub3d_Paladin_Spells,
	  }
   }
}
