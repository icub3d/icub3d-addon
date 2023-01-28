icub3d_Warlock_Spells = {
   -- Top Left --
   icub3d_Spell('Haunt', 'Shadow Bolt', 'Immolate'),
   icub3d_Spell('Agony', 'Demonbolt', 'Incinerate'),
   icub3d_Spell('Unstable Affliction', 'Call Dreadstalkers', 'Conflagrate'),
   icub3d_Spell('Malefic Rapture', "Hand of Gul'dan", 'Chaos Bolt'),
   icub3d_Spell('Soul Tap', 'Implosion', 'Dimensional Rift'),
   icub3d_Spell('Soul Rot', 'Power Siphon', 'Rain of Fire'),
   icub3d_Spell('Phantom Singularity', 'Vile Taint', 'Bilescourge Bombers', 'Demonic Strength', 'Shadowburn'),
   icub3d_Spell('Seed of Corruption', 'Summon Vilefiend', 'Soul Strike', 'Soul Fire'),
   icub3d_Spell('Summon Darkglare', 'Summon Demonic Tyrant', 'Channel Demonfire'),
   icub3d_Spell('Siphon Life', 'Grimiore: Felguard', 'Cataclysm'),
   icub3d_Spell('Drain Soul', 'Nether Portal', 'Harm', 'Summon Infernal'),
   icub3d_Spell('Command Demon'),

   -- Top Right --
   icub3d_Spell('Fear'),
   icub3d_Spell('Corruption'),
   icub3d_Spell('Drain Life'),
   icub3d_Spell('Health Funnel'),
   icub3d_Macro('im_health_rev'),
   icub3d_Spell('Banish'),
   icub3d_Spell('Amplify Curse'),
   icub3d_Spell('Curse of Weakness'),
   icub3d_Spell('Curse of Tongues'),
   icub3d_Spell('Curse of Exhaustion'),
   icub3d_Spell('Fel Domination'),
   icub3d_Spell('Unending Resolve'),

   -- Bottom Left -- 
   icub3d_Macro('im_demonic_circle'),
   icub3d_Spell('Burning Rush'),
   icub3d_Spell('Mortal Coil', 'Howl of Terror'),
   icub3d_Spell('Guillotine', 'Grimoire of Sacrifice'),
   icub3d_Spell('Soul Swap', 'Doom', 'Havoc'),
   icub3d_Macro('im_racial'),
   icub3d_Macro('im_trinket'),
   icub3d_Skip(),
   icub3d_Talent(1),
   icub3d_Talent(2),
   icub3d_Talent(3),
   icub3d_Spell('Soulburn'),

   -- Bottom Right --
   icub3d_Spell('Summon Soulkeeper', 'harm' ,'Inquisitor\'s Gaze'),
   icub3d_Spell('Shadowfury'),
   icub3d_Spell('Shadowflame'),
   icub3d_Spell('Dark Pact'),
   icub3d_Spell('Demonic Gateway'),
   icub3d_Spell('Create Healthstone'),
   icub3d_Spell('Subjugate Demon'),
   icub3d_Skip(), 
   icub3d_Skip(), 
   icub3d_Skip(), 
   icub3d_Skip(), 
   icub3d_Skip(), 
}

icub3d_Warlock_Talents = {
   icub3d_Spell('Bane of Fragility'),
   icub3d_Spell('Bane of Shadows'),
   icub3d_Spell('Bonds of Fel'),
   icub3d_Spell('Deathbolt'),
   icub3d_Spell('Call Fel Lord'),
   icub3d_Spell('Call Fel Hunter'),
   icub3d_Spell('Call Observer'),
   icub3d_Spell('Casting Circle'),
   icub3d_Spell('Fel Obelisk'),
   icub3d_Spell('Nether Ward'),
   icub3d_Spell('Shadow Rift'),
   icub3d_Spell('Rapid Contagion'),
}

icub3d_Spells['WARLOCK'] = {
   specs = {
	  -- The tags are useful for switching but these should be in in-game order.
	  {
		 tags = {'a', 'aff', 'affliction'},
		 talent = icub3d_Warlock_Talents,
		 talents = {
			['raid'] = {3, 3, 2, 2, 2, 2, 3},
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
			['pvp'] = {1, 1, 1, 3, 2, 1, 3},
		 },
		 actionbar = icub3d_Warlock_Spells,
	  }
   }
}
