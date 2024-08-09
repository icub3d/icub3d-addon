icub3d_Mage_Spells = {
   -- Top Left --
   ICUB3D_Spell('Pyroblast', 'Freeze', 'Arcane Barrage'),
   ICUB3D_Spell('Fire Blast', 'Ice Lance'),
   ICUB3D_Spell('Fireball', 'Frost Bolt', 'Arcane Blast'),
   ICUB3D_Spell('Scorch', 'Flurry', 'Arcane Missiles'),
   ICUB3D_Spell('Dragon\'s Breath', 'Displacement', 'Cone of Cold'),
   ICUB3D_Spell('Flamestrike', 'Blizzard', 'Arcane Explosion'),
   ICUB3D_Spell('Frozen Orb'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Frost Nova'),
   ICUB3D_Spell('Counterspell'),
   ICUB3D_Talent(1),
   ICUB3D_Talent(2),

   -- Top Right -- 
   ICUB3D_Talent(3),
   ICUB3D_Talent(4),
   ICUB3D_Talent(5),
   ICUB3D_Talent(6),
   ICUB3D_Talent(7),
   ICUB3D_Talent(8),
   ICUB3D_Talent(9),
   ICUB3D_Talent(10),
   ICUB3D_Spell('Spellsteal'),
   ICUB3D_Spell('Ice Block'),
   ICUB3D_Spell('Combustion', 'Arcane Power', 'Icy Veins'),
   ICUB3D_Spell('Blazing Barrier', 'Ice Barrier', 'Prismatic Barrier'),

   -- Bottom Left --
   ICUB3D_Spell('Blink'),
   ICUB3D_Spell('Polymorph'),
   ICUB3D_Spell('Remove Curse'),
   ICUB3D_Spell('Slow'),
   ICUB3D_Macro('im_racial'),
   ICUB3D_Macro('im_medallion'),
   ICUB3D_Spell('Slow Fall'),
   ICUB3D_Spell('Time Warp'),
   ICUB3D_Spell('Cold Snap', 'Presence of Mind'),
   ICUB3D_Spell('Summon Water Elemental', 'Evocation'),
   ICUB3D_Spell('Invisibility', 'Greater Invisibility'),
   ICUB3D_Spell('Heart Essence'),

   -- Bottom Right --
   ICUB3D_Spell('Goblin Glider Kit'),
   ICUB3D_Macro('im_cloak'),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Macro('im_belt'),
   ICUB3D_Spell('Soft Foam Sword'),
   ICUB3D_Spell('Conjured Mana Bun'),
   ICUB3D_Macro('im_healthstone'),
   ICUB3D_Spell('potion', 'potion'),
   ICUB3D_Spell('Conjure Refreshment'),
   ICUB3D_Spell('Arcane Intellect'),
   ICUB3D_Spell('Teleport'),
   ICUB3D_Spell('Portal'),
}

ICUB3D_Spells['MAGE'] = {
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
			ICUB3D_Spell('Greater Pyroblast'),
			ICUB3D_Spell('Blast Wave'),
			ICUB3D_Spell('Mirror Image'),
			ICUB3D_Spell('Rune of Power'),
			ICUB3D_Spell('Phoenix Flames'),
			ICUB3D_Spell('Ring of Frost'),
			ICUB3D_Spell('Living Bomb'),
			ICUB3D_Spell('Meteor'),
			ICUB3D_Spell('Temporal Shield'),
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
