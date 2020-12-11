icub3d_DemonHunter_Spells = {
   -- Top Left --
   icub3d_Spell('harm', 'Shear', 'harm', 'Demon\'s Bite', 'skip', 'skip'),
   icub3d_Spell('harm', 'Soul Cleave', 'harm', 'Chaos Strike', 'skip', 'skip'),
   icub3d_Spell('harm', 'Throw Glaive', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Infernal Strike', 'help', 'Fel Rush', 'skip', 'skip'),
   icub3d_Spell('help', 'Demon Spikes', 'harm',' Eye Beam', 'skip', 'skip'),
   icub3d_Spell('harm', 'Fiery Brand', 'harm', 'Chaos Nova'),
   icub3d_Spell('mouse', 'Sigil of Flame', 'harm', 'Eye Beam', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Sigil of Misery', 'harm', 'Blade Dance', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Sigil of Silence', 'help', 'Vengeful Retreat', 'skip', 'skip'),
   icub3d_Spell('harm', 'Disrupt', 'skip', 'skip'),
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
   icub3d_Spell('harm', 'Imprison', 'skip', 'skip'),
   icub3d_Spell('harm', 'Torment', 'skip', 'skip'),
   icub3d_Spell('harm', 'Immolation Aura', 'skip', 'skip'),
   icub3d_Skip(),

   -- Bottom Left --
   icub3d_Spell('mouse', 'Infernal Strike', 'help', 'Fel Rush', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Metamorphosis'),
   icub3d_Spell('harm', 'Consume Magic', 'skip', 'skip'),
   icub3d_Spell('help', 'Spectral Sight'),
   icub3d_Macro('im_racial'),
   icub3d_Macro('im_medallion'),
   icub3d_Spell('help', 'Blur', 'skip', 'skip'),
   icub3d_Spell('help', 'Darkness', 'skip', 'skip'),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Spell('use', 'Heart Essence'),

   -- Bottom Right --
   icub3d_Spell('help', 'Glide'),
   icub3d_Macro('im_cloak'),
   icub3d_Macro('im_trinket'),
   icub3d_Macro('im_belt'),
   icub3d_Spell('use', 'Soft Foam Sword'),
   icub3d_Spell('use', 'Loot-A-Rang'),
   icub3d_Macro('im_healthstone'),
   icub3d_Spell('potion', 'potion'),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Spell('help', 'Glide', 'skip', 'skip'),

}

icub3d_Spells['DEMONHUNTER'] = {
   specs = {
	  -- The tags are useful for switching but these should be in in-game order.
	  {
		 tags = {'h', 'havoc'},
		 talents = {
			['app'] = {2, 3, 1, 1, 2, 1, 1},
			['demonic'] = {1, 3, 1, 1, 2, 1, 1},
			['pvp'] = {2, 3, 1, 1, 2, 3, 1},
		 },
		 talent = {
			icub3d_Spell('harm', 'Felblade'),
			icub3d_Spell('harm', 'Fel Barrage'),
			icub3d_Spell('harm', 'Netherwalk'),
			icub3d_Spell('harm', 'Dark Slash'),
			icub3d_Spell('harm', 'Fel Eruption'),
			icub3d_Spell('harm', 'Nemesis'),
			icub3d_Spell('harm', 'Reverse Magic'),
			icub3d_Spell('harm', 'Eye of Leotheras'),
			icub3d_Spell('harm', 'Rain from Above'),
			icub3d_Spell('harm', 'Mana Break'),
			icub3d_Spell('harm', 'Mana Rift'),
			icub3d_Spell('pot', '"Third Wind" Potion'),
			icub3d_Spell('pot', 'Potion of Defiance'),
			icub3d_Spell('pot', 'Saltwater Potion'),
			icub3d_Spell('pot', 'Potion of Trivial Invisibility'),
			icub3d_Spell('pot', 'Swiftness Potion'),
			icub3d_Spell('pot', 'Drums of Fury'),
		 },
		 actionbar = icub3d_DemonHunter_Spells,
	  },
	  {
		 tags = {'v', 'veng', 'vengeance'},
		 talents = {
			['dps'] = {1, 2, 1, 3, 3, 2, 1},
			['dungeon'] = {1, 2, 1, 3, 3, 1, 1},
			['defensive'] = {1, 2, 1, 2, 3, 1, 1}
		 },
		 talent = {
			icub3d_Spell('harm', 'Felblade'),
			icub3d_Spell('mouse', 'Sigil of Chains'),
			icub3d_Spell('harm', 'Spirit Bomb'),
			icub3d_Spell('harm', 'Fel Devastation'),
			icub3d_Spell('harm', 'Soul Barrier'),
			icub3d_Spell('harm', 'Illidan\'s Grasp'),
			icub3d_Spell('harm', 'Reverse Magic'),
			icub3d_Spell('harm', 'Demonic Trample'),
			icub3d_Spell('pot', '"Third Wind" Potion'),
			icub3d_Spell('pot', 'Potion of Defiance'),
			icub3d_Spell('pot', 'Saltwater Potion'),
			icub3d_Spell('pot', 'Potion of Trivial Invisibility'),
			icub3d_Spell('pot', 'Swiftness Potion'),
			icub3d_Spell('pot', 'Drums of Fury'),
		 },
		 actionbar = icub3d_DemonHunter_Spells,
	  }
   }
}
