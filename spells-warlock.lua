icub3d_Warlock_Spells = {
   -- Top --
   icub3d_Spell('harm', 'Corruption'),
   icub3d_Spell('harm', 'Agony', 'harm', 'Call Dreadstalkers', 'harm', 'Immolate'),
   icub3d_Spell('harm', 'Malefic Rapture', 'harm', 'Implosion', 'harm', 'Chaos Bolt'),
   icub3d_Spell('harm', 'Shadow Bolt', 'harm', 'Incinerate'),
   icub3d_Spell('harm', 'Unstable Affliction', 'harm', 'Demonbolt', 'harm', 'Conflagrate'),
   icub3d_Spell('harm', 'Seed of Corruption', 'harm', 'Rain of Fire', 'harm', 'Hand of Gul\'dan'),
   icub3d_Spell('harm', 'Command Demon', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Shadowfury', 'skip', 'skip'),
   icub3d_Spell('harm', 'Drain Life'),
   icub3d_Macro('im_pet_attack_follow'),
   icub3d_Macro('im_pet_move_stay'),
   icub3d_Macro('im_pet_special'),
   icub3d_Spell('harm', 'Havoc', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Summon Infernal', 'harm', 'Summon Darkglare', 'harm', 'Summon Demonic Tyrant'),
   icub3d_Talent(1),
   icub3d_Talent(2),
   icub3d_Talent(3),
   icub3d_Talent(4),
   icub3d_Talent(5),
   icub3d_Talent(6),
   icub3d_Talent(7),
   icub3d_Talent(8),
   icub3d_Talent(9),
   icub3d_Talent(10),

   -- Bottom --
   icub3d_Spell('harm', 'Fear'),
   icub3d_Macro('im_demonic_circle'),
   icub3d_Spell('mouse', 'Demonic Gateway'),
   icub3d_Spell('help', 'Unending Resolve'),
   icub3d_Spell('harm', 'Curse of Exhaustion'),
   icub3d_Spell('harm', 'Curse of Tongues'),
   icub3d_Spell('harm', 'Curse of Weakness'),
   icub3d_Macro('im_health_rev'),
   icub3d_Macro('im_ritual'),
   icub3d_Spell('help', 'Fel Domination'),
   icub3d_Spell('help', 'Health Funnel'),
   icub3d_Macro('im_banish_subjugate'),
   icub3d_Macro('im_racial'),
   icub3d_Spell('harm', 'Covenant Ability'),
   icub3d_Spell('harm', 'Signature Ability'),
   icub3d_Macro('im_trinket'),
   icub3d_Spell('help', 'Soulstone'),
   icub3d_Spell('use', 'Soft Foam Sword'),
   icub3d_Spell('use', 'Goblin Glider Kit'),
   icub3d_Spell('use', 'Create Healthstone'),
   icub3d_Skip(), 
   icub3d_Skip(), 
   icub3d_Skip(), 
   icub3d_Skip(), 
}

icub3d_Warlock_Talents = {
   -- All --
   icub3d_Spell('simple', 'Burning Rush'),
   icub3d_Spell('simple', 'Dark Pact'),
   icub3d_Spell('harm', 'Mortal Coil'),
   icub3d_Spell('harm', 'Howl of Terror'),

   -- Afflication --
   icub3d_Spell('harm', 'Siphon Life'),
   icub3d_Spell('harm', 'Phantom Singularity'),
   icub3d_Spell('mouse', 'Vile Taint'),
   icub3d_Spell('harm', 'Haunt'),
   icub3d_Spell('help', 'Grimoire of Sacrifice'),
   icub3d_Spell('help', 'Dark Soul: Misery'),

   -- Demonology --
   icub3d_Spell('harm', 'Bilescourge Bombers'),
   icub3d_Spell('harm', 'Demonic Strength'),
   icub3d_Spell('harm', 'Power Siphon'),
   icub3d_Spell('harm', 'Doom'),
   icub3d_Spell('harm', 'Soul Strike'),
   icub3d_Spell('harm', 'Summon Vilefiend'),
   icub3d_Spell('harm', 'Grimoire: Felguard'),
   icub3d_Spell('harm', 'Nether Portal'),

   -- Destruction --
   icub3d_Spell('harm', 'Soul Fire'),
   icub3d_Spell('harm', 'Shadowburn'),
   icub3d_Spell('mouse', 'Cataclysm'),
   icub3d_Spell('harm', 'Channel Demonfire'),
   icub3d_Spell('harm', 'Dark Soul: Instability'),

   -- PVP --
   icub3d_Spell('harm', 'Bane of Fragility'),
   icub3d_Spell('harm', 'Nether Ward'),
   icub3d_Spell('harm', 'Casting Circle'),
   icub3d_Spell('harm', 'Amplify Curse'),
   icub3d_Spell('harm', 'Demon Armor'),
   icub3d_Spell('harm', 'Deathbolt'),
   icub3d_Spell('harm', 'Soul Shatter'),
   icub3d_Spell('harm', 'Bane of Shadows'),
   icub3d_Spell('harm', 'Rapid Contagion'),
   icub3d_Spell('harm', 'Singe Magic'),
   icub3d_Spell('harm', 'Call Fellhunter'),
   icub3d_Spell('harm', 'Call Fel Lord'),
   icub3d_Spell('harm', 'Call Observer'),
}

icub3d_Spells['WARLOCK'] = {
   specs = {
	  -- The tags are useful for switching but these should be in in-game order.
	  {
		 tags = {'a', 'aff', 'affliction'},
		 talent = icub3d_Warlock_Talents,
		 talents = {
			['quest'] = {1, 2, 2, 2, 2, 2, 2, 1},
			['single-target'] = {3, 3, 2, 2, 2, 2, 2, 3},
			['multi-target'] = {3, 2, 2, 2, 2, 2, 2, 3},
			['dungeon'] = {3, 2, 2, 3, 2, 1, 3},
			['quest'] = {3, 3, 2, 3, 2, 2, 3},
		 },
		 actionbar = icub3d_Warlock_Spells,
	  },
	  {
		 tags = {'dm', 'demo', 'demonology'},
		 talent = icub3d_Warlock_Talents,
		 talents = {
			['raid'] = {3, 1, 2, 3, 1, 3, 2},
			['quest'] = {1, 1, 2, 3, 2, 3, 2},
			['dungeon'] = {3, 1, 2, 3, 2, 3, 2},
		 },
		 actionbar = icub3d_Warlock_Spells,
	  },
	  {
		 tags = {'ds', 'destro', 'destruction'},
		 talent = icub3d_Warlock_Talents,
		 talents = {
			['aoe'] = {1, 1, 2, 2, 2, 2, 1},
			['st'] = {1, 1, 2, 3, 2 ,1 ,2},
		 },
		 actionbar = icub3d_Warlock_Spells,
	  }
   }
}
