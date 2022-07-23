icub3d_DemonHunter_Spells = {
   -- Top --
   icub3d_Spell('harm', 'Shear', 'harm', 'Demon\'s Bite', 'skip', 'skip'),
   icub3d_Spell('harm', 'Soul Cleave', 'harm', 'Chaos Strike', 'skip', 'skip'),
   icub3d_Spell('harm', 'Throw Glaive', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Infernal Strike', 'help', 'Fel Rush', 'skip', 'skip'),
   icub3d_Spell('help', 'Demon Spikes', 'harm',' Eye Beam', 'skip', 'skip'),
   icub3d_Spell('harm', 'Fiery Brand', 'harm', 'Chaos Nova'),
   icub3d_Spell('harm', 'Fel Devastation', 'harm', 'Eye Beam', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Sigil of Flame', 'harm', 'Blade Dance', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Sigil of Silence', 'help', 'Vengeful Retreat', 'skip', 'skip'),
   icub3d_Spell('harm', 'Disrupt', 'skip', 'skip'),
   icub3d_Spell('harm', 'The Hunt'),
   icub3d_Spell('help', 'Soulshape'),
   icub3d_Macro('im_racial'),
   icub3d_Spell('use', 'Phial of Serenity'),
   icub3d_Macro('im_healthstone'),
   icub3d_Spell('potion', 'potion'),
   icub3d_Talent(1),
   icub3d_Talent(2),
   icub3d_Talent(3),
   icub3d_Talent(4),
   icub3d_Spell('harm', 'Imprison', 'skip', 'skip'),
   icub3d_Spell('harm', 'Torment', 'skip', 'skip'),
   icub3d_Spell('harm', 'Immolation Aura', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Sigil of Misery', 'help', 'Blur'),

   -- Bottom --
   icub3d_Spell('help', 'Darkness', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Metamorphosis'),
   icub3d_Spell('harm', 'Consume Magic', 'skip', 'skip'),
   icub3d_Spell('help', 'Spectral Sight'),
   icub3d_Talent(5),
   icub3d_Talent(6),
   icub3d_Talent(7),
   icub3d_Talent(8),
   icub3d_Talent(9),
   icub3d_Macro('im_trinket'),
   icub3d_Talent(10),
   icub3d_Spell('use', 'Goblin Glider Kit'),
   icub3d_Spell('help', 'Glide'),
   icub3d_Macro('im_cloak'),
   icub3d_Macro('im_belt'),
   icub3d_Spell('use', 'Soft Foam Sword'),
   icub3d_Spell('use', 'Loot-A-Rang'),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
}

icub3d_DemonHunter_Talents = {
   -- Both --
   icub3d_Spell('harm', 'Felblade'),

   -- Havoc --
   icub3d_Spell('harm', 'Fel Barrage'),
   icub3d_Spell('harm', 'Fel Eruption'),
   icub3d_Spell('harm', 'Netherwalk'),
   icub3d_Spell('harm', 'Essence Break'),
   icub3d_Spell('harm', 'Glaive Tempest'),

   -- Vengeance --
   icub3d_Spell('harm', 'Spirit Bomb'),
   icub3d_Spell('mouse', 'Sigil of Chains'),
   icub3d_Spell('harm', 'Soul Barrier'),
   icub3d_Spell('harm', 'Bulk Extraction'),


   -- Havoc PvP --
   icub3d_Spell('harm', 'Reverse Magic'),
   icub3d_Spell('harm', 'Rain from Above'),
   icub3d_Spell('harm', 'Eye of Leotheras'),
   icub3d_Spell('harm', 'Mana Break'),
   icub3d_Spell('harm', 'Mana Rift'),

   -- Vengeance PvP --
   icub3d_Spell('harm', 'Reverse Magic'),
   icub3d_Spell('harm', 'Illidan\'s Grasp'),
   icub3d_Spell('harm', 'Demonic Trample'),
}

icub3d_Spells['DEMONHUNTER'] = {
   specs = {
	  -- The tags are useful for switching but these should be in in-game order.
	  {
		 tags = {'h', 'havoc'},
		 talents = {
			['dungeon'] = {1, 1, 3, 3, 1, 3, 1},
			['felblade'] = {3, 3, 3, 3, 2, 3, 2},
			['demonic'] = {3, 3, 2, 1, 2, 3, 1},
			['momentum'] = {3, 3, 2, 3, 2, 3, 2},
		 },
		 talent = icub3d_DemonHunter_Talents,
		 actionbar = icub3d_DemonHunter_Spells,
	  },
	  {
		 tags = {'v', 'veng', 'vengeance'},
		 talents = {
			['quest'] = {1, 2, 1, 3, 2, 1, 1},
			['bomb'] = {1, 2, 3, 3, 3, 2, 1},
			['brand'] = {2, 3, 2, 3, 2, 2, 1},
			['control'] = {1, 3, 1, 3, 3, 2, 1},
		 },
		 talent = icub3d_DemonHunter_Talents,
		 actionbar = icub3d_DemonHunter_Spells,
	  }
   }
}
