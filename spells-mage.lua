icub3d_Mage_Spells = {
   -- Top Left --
   icub3d_Spell('Pyroblast', 'Freeze', 'Arcane Barrage'),
   icub3d_Spell('Fire Blast', 'Ice Lance'),
   icub3d_Spell('Fireball', 'Frost Bolt', 'Arcane Blast'),
   icub3d_Spell('Scorch', 'Flurry', 'Arcane Missiles'),
   icub3d_Spell('Dragon\'s Breath', 'Displacement', 'Cone of Cold'),
   icub3d_Spell('Flamestrike', 'Blizzard', 'Arcane Explosion'),
   icub3d_Spell('Frozen Orb'),
   icub3d_Skip(),
   icub3d_Spell('Frost Nova'),
   icub3d_Spell('Counterspell'),
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
   icub3d_Spell('Spellsteal'),
   icub3d_Spell('Ice Block'),
   icub3d_Spell('Combustion', 'Arcane Power', 'Icy Veins'),
   icub3d_Spell('Blazing Barrier', 'Ice Barrier', 'Prismatic Barrier'),

   -- Bottom Left --
   icub3d_Spell('Blink'),
   icub3d_Spell('Polymorph'),
   icub3d_Spell('Remove Curse'),
   icub3d_Spell('Slow'),
   icub3d_Macro('im_racial'),
   icub3d_Macro('im_medallion'),
   icub3d_Spell('Slow Fall'),
   icub3d_Spell('Time Warp'),
   icub3d_Spell('Cold Snap', 'Presence of Mind'),
   icub3d_Spell('Summon Water Elemental', 'Evocation'),
   icub3d_Spell('Invisibility', 'Greater Invisibility'),
   icub3d_Spell('Heart Essence'),

   -- Bottom Right --
   icub3d_Spell('Goblin Glider Kit'),
   icub3d_Macro('im_cloak'),
   icub3d_Macro('im_trinket'),
   icub3d_Macro('im_belt'),
   icub3d_Spell('Soft Foam Sword'),
   icub3d_Spell('Conjured Mana Bun'),
   icub3d_Macro('im_healthstone'),
   icub3d_Spell('potion', 'potion'),
   icub3d_Spell('Conjure Refreshment'),
   icub3d_Spell('Arcane Intellect'),
   icub3d_Spell('Teleport'),
   icub3d_Spell('Portal'),
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
			icub3d_Spell('Greater Pyroblast'),
			icub3d_Spell('Blast Wave'),
			icub3d_Spell('Mirror Image'),
			icub3d_Spell('Rune of Power'),
			icub3d_Spell('Phoenix Flames'),
			icub3d_Spell('Ring of Frost'),
			icub3d_Spell('Living Bomb'),
			icub3d_Spell('Meteor'),
			icub3d_Spell('Temporal Shield'),
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
