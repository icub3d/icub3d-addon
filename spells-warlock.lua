icub3d_Warlock_Spells = {
   -- Top Left --
   icub3d_Spell('harm', 'Agony', 'harm', 'Immolate', 'harm', 'Demonbolt'),
   icub3d_Spell('harm', 'Corruption', 'harm', 'Conflagrate', 'harm', 'Implosion'),
   icub3d_Spell('harm', 'Unstable Affliction', 'harm', 'Chaos Bolt', 'harm', 'Call Dreadstalkers'),
   icub3d_Spell('harm', 'Shadow Bolt', 'harm', 'Incinerate', 'skip', 'skip'),
   icub3d_Spell('harm', 'Seed of Corruption', 'harm', 'Rain of Fire', 'harm', 'Hand of Gul\'dan'),
   icub3d_Spell('harm', 'Command Demon', 'skip', 'skip'),
   icub3d_Macro('im_pet_attack_follow'),
   icub3d_Macro('im_pet_move_stay'),
   icub3d_Macro('im_pet_special'),
   icub3d_Spell('harm', 'Fear', 'skip', 'skip'),
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
   icub3d_Spell('mouse', 'Shadowfury', 'skip', 'skip'),
   icub3d_Spell('harm', 'Drain Life'),
   icub3d_Spell('mouse', 'Summon Infernal', 'harm', 'Summon Darkglare', 'harm', 'Sumon Demonic Tyrant'),
   icub3d_Spell('help', 'Unending Resolve'),

   -- Bottom Left --
   icub3d_Spell('harm', 'Banish'),
   icub3d_Spell('harm', 'Enslave Demon'),
   icub3d_Spell('help', 'Health Funnel', 'skip', 'skip'),
   icub3d_Spell('help', 'Summon Felguard', 'skip', 'skip'),
   icub3d_Macro('im_racial'),
   icub3d_Macro('im_medallion'),
   icub3d_Macro('im_imp_void'),
   icub3d_Macro('im_fel_succ'),
   icub3d_Skip(),
   icub3d_Spell('harm', 'Havoc', 'skip', 'skip'),
   icub3d_Spell('help', 'Soulstone'),
   icub3d_Spell('use', 'Heart Essence'),

   -- Bottom Right --
   icub3d_Spell('use', 'Goblin Glider Kit'),
   icub3d_Macro('im_cloak'),
   icub3d_Macro('im_trinket'),
   icub3d_Macro('im_belt'),
   icub3d_Spell('use', 'Soft Foam Sword'),
   icub3d_Spell('mouse', 'Demonic Gateway'),
   icub3d_Macro('im_healthstone'),
   icub3d_Spell('potion', 'potion'),
   icub3d_Spell('help', 'Unending Breath'),
   icub3d_Spell('help', 'Ritual of Summoning'),
   icub3d_Spell('help', 'Eye of Kilrogg', 'skip', 'skip'),
   icub3d_Macro('im_lock_stone')
}

icub3d_Spells['WARLOCK'] = {
   specs = {
	  -- The tags are useful for switching but these should be in in-game order.
	  {
		 tags = {'a', 'aff', 'affliction'},
		 talent = {
		 },
		 talents = {
		 },
		 actionbar = icub3d_Warlock_Spells,
	  },
	  {
		 tags = {'dm', 'demo', 'demonology'},
		 talent = {
		 },
		 talents = {
		 },
		 actionbar = icub3d_Warlock_Spells,
	  },
	  {
		 tags = {'ds', 'destro', 'destruction'},
		 talent = {
			icub3d_Spell('help', 'Burning Rush'),
			icub3d_Spell('mouse', 'Cataclysm'),
			icub3d_Spell('harm', 'Mortal Coil'),
			icub3d_Spell('help', 'Demonic Circle'),
			icub3d_Spell('help', 'Dark Pact'),
			icub3d_Spell('harm', 'Soul Fire'),
			icub3d_Spell('harm', 'Shadowburn'),
			icub3d_Spell('help', 'Grimoire of Sacrifice'),
			icub3d_Spell('harm', 'Channel Demonfire'),
			icub3d_Spell('help', 'Dark Soul: Instability'),
			icub3d_Spell('harm', 'Curse of Fragility'),
			icub3d_Spell('harm', 'Curse of Tongues'),
			icub3d_Spell('harm', 'Curse of Weakness'),
			icub3d_Spell('mouse', 'Casting Circle'),
			icub3d_Spell('help', 'Demon Armor'),
			icub3d_Spell('help', 'Nether Ward'),
			icub3d_Spell('pot', '"Third Wind" Potion'),
			icub3d_Spell('pot', 'Potion of Defiance'),
			icub3d_Spell('pot', 'Saltwater Potion'),
			icub3d_Spell('pot', 'Potion of Trivial Invisibility'),
			icub3d_Spell('pot', 'Swiftness Potion'),
			icub3d_Spell('pot', 'Drums of Fury'),
		 },
		 talents = {
			['quest'] = {1, 1, 2, 1, 3, 2, 3},
			['aoe'] = {1, 1, 2, 3, 3, 2, 3},
			['st'] = {1, 1, 2, 3, 3, 2, 3},
		 },
		 actionbar = icub3d_Warlock_Spells,
	  }
   }
}
