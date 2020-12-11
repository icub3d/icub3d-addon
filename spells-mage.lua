icub3d_Mage_Spells = {
   -- Top Left --
   icub3d_Spell('harm', 'Pyroblast', 'harm', 'Freeze', 'harm', 'Arcane Barrage'),
   icub3d_Spell('harm', 'Fire Blast', 'harm', 'Ice Lance', 'skip', 'skip'),
   icub3d_Spell('harm', 'Fireball', 'harm', 'Frost Bolt', 'harm', 'Arcane Blast'),
   icub3d_Spell('harm', 'Scorch', 'harm', 'Flurry', 'harm', 'Arcane Missiles'),
   icub3d_Spell('harm', 'Dragon\'s Breath', 'help', 'Displacement', 'harm', 'Cone of Cold'),
   icub3d_Spell('mouse', 'Flamestrike', 'mouse', 'Blizzard', 'harm', 'Arcane Explosion'),
   icub3d_Spell('harm', 'Frozen Orb', 'skip', 'skip'),
   icub3d_Skip(),
   icub3d_Spell('harm', 'Frost Nova', 'skip', 'skip'),
   icub3d_Spell('harm', 'Counterspell', 'skip', 'skip'),
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
   icub3d_Spell('harm', 'Spellsteal', 'skip', 'skip'),
   icub3d_Spell('help', 'Ice Block'),
   icub3d_Spell('help', 'Combustion', 'help', 'Arcane Power', 'help', 'Icy Veins'),
   icub3d_Spell('help', 'Blazing Barrier', 'help', 'Ice Barrier', 'help', 'Prismatic Barrier'),

   -- Bottom Left --
   icub3d_Spell('help', 'Blink'),
   icub3d_Spell('harm', 'Polymorph'),
   icub3d_Spell('help', 'Remove Curse', 'skip', 'skip'),
   icub3d_Spell('harm', 'Slow', 'skip', 'skip'),
   icub3d_Macro('im_racial'),
   icub3d_Macro('im_medallion'),
   icub3d_Spell('help', 'Slow Fall'),
   icub3d_Spell('help', 'Time Warp'),
   icub3d_Spell('help', 'Cold Snap', 'help', 'Presence of Mind', 'skip', 'skip'),
   icub3d_Spell('help', 'Summon Water Elemental', 'help', 'Evocation', 'skip', 'skip'),
   icub3d_Spell('help', 'Invisibility', 'help', 'Greater Invisibility', 'skip', 'skip'),
   icub3d_Spell('use', 'Heart Essence'),

   -- Bottom Right --
   icub3d_Spell('use', 'Goblin Glider Kit'),
   icub3d_Macro('im_cloak'),
   icub3d_Macro('im_trinket'),
   icub3d_Macro('im_belt'),
   icub3d_Spell('use', 'Soft Foam Sword'),
   icub3d_Spell('use', 'Conjured Mana Bun'),
   icub3d_Macro('im_healthstone'),
   icub3d_Spell('potion', 'potion'),
   icub3d_Spell('help', 'Conjure Refreshment'),
   icub3d_Spell('help', 'Arcane Intellect'),
   icub3d_Spell('use', 'Teleport', 'skip', 'skip'),
   icub3d_Spell('use', 'Portal', 'skip', 'skip'),
}

icub3d_Spells['MAGE'] = {
   specs = {
	  -- The tags are useful for switching but these should be in in-game order.
	  {
		 tags = {'a', 'arcane'},
		 talent = {
		 },
		 talents = {
			['quest'] = {2, 1, 2, 1, 3, 1, 3},
			['aoe'] = {2, 2, 1, 1, 1, 1, 3},
			['st'] = {2, 2, 3, 2, 1, 3, 1}
		 },
		 actionbar = icub3d_Mage_Spells,
	  },
	  {
		 tags = {'fi', 'fire'},
		 talent = {
			icub3d_Spell('help', 'Greater Pyroblast'),
			icub3d_Spell('harm', 'Blast Wave'),
			icub3d_Spell('help', 'Mirror Image'),
			icub3d_Spell('help', 'Rune of Power'),
			icub3d_Spell('harm', 'Phoenix Flames'),
			icub3d_Spell('mouse', 'Ring of Frost'),
			icub3d_Spell('harm', 'Living Bomb'),
			icub3d_Spell('mouse', 'Meteor'),
			icub3d_Spell('help', 'Temporal Shield'),
		 },
		 talents = {
			['quest'] = {1, 2, 1, 1, 2, 2, 3},
			['aoe'] = {3, 2, 3, 3, 1, 1, 3},
			['st'] = {3, 2, 3, 1, 1, 2 ,3},
		 },
		 actionbar = icub3d_Mage_Spells,
	  },
	  {
		 tags = {'fr', 'frost'},
		 talent = {
		 },
		 talents = {
			['quest'] = {3, 2, 1, 3, 2 , 2, 3},
			['aoe'] = {1, 2, 1, 3, 1, 2, 3},
			['st'] = {1, 2, 1, 3, 1, 3, 3}
		 },
		 actionbar = icub3d_Mage_Spells,
	  }
   }
}
