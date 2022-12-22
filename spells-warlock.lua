icub3d_Warlock_Spells = {
   -- Top Left --
   icub3d_Spell('harm', 'Haunt', 'harm', 'Shadow Bolt', 'harm', 'Immolate', 'skip', 'skip'),
   icub3d_Spell('harm', 'Agony', 'harm', 'Demonbolt', 'harm', 'Incinerate', 'skip', 'skip'),
   icub3d_Spell('harm', 'Unstable Affliction', 'harm', 'Call Dreadstalkers', 'harm', 'Conflagrate', 'skip', 'skip'),
   icub3d_Spell('harm', 'Malefic Rapture', 'harm', "Hand of Gul'dan", 'harm', 'Chaos Bolt', 'skip', 'skip'),
   icub3d_Spell('harm', 'Soul Tap', 'harm', 'Implosion', 'harm', 'Dimensional Rift', 'skip', 'skip'),
   icub3d_Spell('harm', 'Soul Rot', 'harm', 'Power Siphon', 'mouse', 'Rain of Fire', 'skip', 'skip'),
   icub3d_Spell('harm', 'Phantom Singularity', 'harm', 'Vile Taint', 'harm', 'Bilescourge Bombers', 'harm', 'Demonic Strength', 'harm', 'Shadowburn', 'skip', 'skip'),
   icub3d_Spell('harm', 'Seed of Corruption', 'harm', 'Summon Vilefiend', 'harm', 'Soul Strike', 'harm', 'Soul Fire', 'skip', 'skip'),
   icub3d_Spell('harm', 'Summon Darkglare', 'harm', 'Summon Demonic Tyrant', 'harm', 'Channel Demonfire', 'skip', 'skip'),
   icub3d_Spell('harm', 'Siphon Life', 'harm', 'Grimiore: Felguard', 'mouse', 'Cataclysm', 'skip', 'skip'),
   icub3d_Spell('harm', 'Drain Soul', 'harm', 'Nether Portal', 'Harm', 'Summon Infernal', 'skip', 'skip'),
   icub3d_Spell('harm', 'Command Demon'),

   -- Top Right --
   icub3d_Spell('harm', 'Fear', 'skip', 'skip'),
   icub3d_Spell('harm', 'Corruption', 'skip', 'skip'),
   icub3d_Spell('harm', 'Drain Life', 'skip', 'skip'),
   icub3d_Spell('harm', 'Health Funnel', 'skip', 'skip'),
   icub3d_Macro('im_health_rev'),
   icub3d_Spell('harm', 'Banish', 'skip', 'skip'),
   icub3d_Spell('harm', 'Amplify Curse', 'skip', 'skip'),
   icub3d_Spell('harm', 'Curse of Weakness', 'skip', 'skip'),
   icub3d_Spell('harm', 'Curse of Tongues', 'skip', 'skip'),
   icub3d_Spell('harm', 'Curse of Exhaustion', 'skip', 'skip'),
   icub3d_Spell('help', 'Fel Domination', 'skip', 'skip'),
   icub3d_Spell('help', 'Unending Resolve', 'skip', 'skip'),

   -- Bottom Left -- 
   icub3d_Macro('im_demonic_circle'),
   icub3d_Spell('help', 'Burning Rush', 'skip', 'skip'),
   icub3d_Spell('help', 'Mortal Coil', 'harm', 'Howl of Terror', 'skip', 'skip'),
   icub3d_Spell('help', 'Guillotine', 'harm', 'Grimoire of Sacrifice', 'skip', 'skip'),
   icub3d_Spell('help', 'Soul Swap', 'harm', 'Doom', 'harm', 'Havoc', 'skip', 'skip'),
   icub3d_Macro('im_racial'),
   icub3d_Macro('im_trinket'),
   icub3d_Skip(),
   icub3d_Talent(1),
   icub3d_Talent(2),
   icub3d_Talent(3),
   icub3d_Spell('harm', 'Soulburn', 'skip', 'skip'),

   -- Bottom Right --


   icub3d_Spell('harm', 'Summon Soulkeeper' 'harm' ,'Inquisitor\'s Gaze', 'skip', 'skip'),
   icub3d_Spell('harm', 'Shadowfury', 'skip', 'skip'),
   icub3d_Spell('harm', 'Shadowflame', 'skip', 'skip'),
   icub3d_Spell('harm', 'Dark Pact', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Demonic Gateway', 'skip', 'skip'),
   icub3d_Spell('help', 'Create Healthstone'),
   icub3d_Spell('harm', 'Subjugate Demon', 'skip', 'skip'),
   icub3d_Skip(), 
   icub3d_Skip(), 
   icub3d_Skip(), 
   icub3d_Skip(), 
   icub3d_Skip(), 
}

icub3d_Warlock_Talents = {
   icub3d_Spell('harm', 'Bane of Fragility'),
   icub3d_Spell('harm', 'Bane of Shadows'),
   icub3d_Spell('harm', 'Bonds of Fel'),
   icub3d_Spell('harm', 'Deathbolt'),
   icub3d_Spell('harm', 'Call Fel Lord'),
   icub3d_Spell('harm', 'Call Fel Hunter'),
   icub3d_Spell('harm', 'Call Observer'),
   icub3d_Spell('mouse', 'Casting Circle'),
   icub3d_Spell('harm', 'Fel Obelisk'),
   icub3d_Spell('harm', 'Nether Ward'),
   icub3d_Spell('harm', 'Shadow Rift'),
   icub3d_Spell('harm', 'Rapid Contagion'),
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
