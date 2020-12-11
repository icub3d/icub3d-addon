icub3d_Hunter_Spells = {
   -- Top Left --
   icub3d_Spell('harm', 'Cobra Shot', 'harm', 'Aimed Shot', 'harm', 'Raptor Strike'),
   icub3d_Spell('harm', 'Multi-Shot', 'harm', 'Carve', 'skip', 'skip'),
   icub3d_Spell('harm', 'Barbed Shot', 'harm', 'Steady Shot', 'harm', 'Wildfire Bomb'),
   icub3d_Spell('harm', 'Rapid Fire', 'harm', 'Wing Clip', 'skip', 'skip'),
   icub3d_Spell('harm', 'Kill Command', 'harm', 'Arcane Shot'),
   icub3d_Spell('harm', 'Command Pet', 'skip', 'skip'),
   icub3d_Spell('harm', 'Concussive Shot', 'harm', 'Harpoon'),
   icub3d_Spell('help', 'Aspect of the Wild', 'harm', 'Bursting Shot', 'help', 'Aspect of the Eagle'),
   icub3d_Spell('help', 'Bestial Wrath', 'help', 'Trueshot', 'help', 'Coordinated Assault'),
   icub3d_Spell('harm', 'Counter Shot', 'harm', 'Muzzle', 'skip', 'skip'),
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
   icub3d_Spell('harm', 'Intimidation', 'skip', 'skip'),
   icub3d_Skip(),
   icub3d_Spell('mouse', 'Exhilaration'),
   icub3d_Spell('help', 'Aspect of the Turtle'),

   -- Bottom Left --
   icub3d_Spell('help', 'Aspect of the Cheetah'),
   icub3d_Spell('help', 'Disengage'),
   icub3d_Spell('help', 'Mend Pet', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Flare'),
   icub3d_Macro('im_racial'),
   icub3d_Macro('im_medallion'),
   icub3d_Spell('help', 'Feign Death', 'skip', 'skip'),
   icub3d_Spell('help', 'Play Dead', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Freezing Trap'),
   icub3d_Spell('mouse', 'Tar Trap'),
   icub3d_Spell('help', 'Misdirection'),
   icub3d_Spell('use', 'Heart Essence'),

   -- Bottom Right --
   icub3d_Spell('use', 'Goblin Glider Kit'),
   icub3d_Macro('im_cloak'),
   icub3d_Macro('im_trinket'),
   icub3d_Macro('im_belt'),
   icub3d_Spell('use', 'Soft Foam Sword'),
   icub3d_Spell('both', 'Fetch'),
   icub3d_Macro('im_healthstone'),
   icub3d_Spell('potion', 'potion'),
   icub3d_Skip(),
   icub3d_Spell('help', 'Aspect of the Chameleon'),
   icub3d_Spell('both', 'Eagle Eye'),
   icub3d_Spell('help', 'Fireworks', 'skip', 'skip'),
}

icub3d_Hunter_Talents = {
   -- BM
   icub3d_Spell('help', 'Binding Shot'),
   icub3d_Spell('harm', 'Chimaera Shot'),			
   icub3d_Spell('harm', 'Dire Beast'),
   icub3d_Spell('help', 'Stampede'),
   icub3d_Spell('help', 'Spitting Cobra'),

   -- Marks
   icub3d_Spell('help', 'Serpent Sting'),
   icub3d_Spell('harm', 'Explosive Shot'),
   icub3d_Spell('harm', 'Hunter\'s Mark'),
   icub3d_Spell('help', 'Double Tap'),
   icub3d_Spell('help', 'Piercing Shot'),

   -- Survival
   icub3d_Spell('harm', 'Butchery'),
   icub3d_Spell('mouse', 'Steel Trap'),
   icub3d_Spell('harm', 'Mongoose Bite'),
   icub3d_Spell('help', 'Flanking Strike'),
   icub3d_Spell('help', 'Chakrams'),
   
   -- Shared
   icub3d_Spell('help', 'Camouflage'),
   icub3d_Spell('help', 'A Murder of Crows'),
   icub3d_Spell('harm', 'Binding Shot'),
   icub3d_Spell('harm', 'Barrage'),

   -- PvP
   icub3d_Spell('help', 'Tracker\'s Net'),
   icub3d_Spell('help', 'Sniper Shot'),
   icub3d_Spell('mouse', 'Dire Beast: Hawk'),
   icub3d_Spell('harm', 'Dire Beast: Basilisk'),
   icub3d_Spell('help', 'Viper Sting'),
   icub3d_Spell('help', 'Spider Sting'),
   icub3d_Spell('help', 'Scorpid Sting'),
   icub3d_Spell('help', 'Scatter Shot'),
   icub3d_Spell('help', 'Hi-Explosive Trap'),
   icub3d_Spell('help', 'Roar of Sacrifice'),

   -- Pots
   icub3d_Spell('pot', '"Third Wind" Potion'),
   icub3d_Spell('pot', 'Potion of Defiance'),
   icub3d_Spell('pot', 'Saltwater Potion'),
   icub3d_Spell('pot', 'Potion of Trivial Invisibility'),
   icub3d_Spell('pot', 'Swiftness Potion'),
   icub3d_Spell('pot', 'Drums of Fury'),
}

icub3d_Spells['HUNTER'] = {
   specs = {
	  -- The tags are useful for switching but these should be in in-game order.
	  {
		 tags = {'b', 'beast', 'beastmastery'},
		 talent = icub3d_Hunter_Talents,
		 talents = {
			["st"] = {2, 2, 2, 2, 2, 1, 2},
			["aoe"] = {2, 2, 2, 2, 2, 1, 1},
			["quest"] = {2, 3, 3, 3, 2, 2, 1},
		 },
		 actionbar = icub3d_Hunter_Spells,
	  },
	  {
		 tags = {'m', 'marks', 'marksmanship'},
		 talent = icub3d_Hunter_Talents,
		 talents = {
			["st"] = {1, 1, 2, 3, 2, 3, 1},
			["aoe"] = {1, 1, 2, 3, 2, 3, 1},
			["quest"] = {1, 1, 1, 2, 1, 2, 1},
		 },
		 actionbar = icub3d_Hunter_Spells,
	  },
	  {
		 tags = {'s', 'surv', 'survival'},
		 talent = icub3d_Hunter_Talents,
		 talents = {
			["st"] = {1, 1, 2, 3, 2, 3, 1},
			["aoe"] = {1, 1, 2, 3, 2, 3, 1},
			["quest"] = {1, 1, 1, 2, 1, 2, 1},
		 },
		 actionbar = icub3d_Hunter_Spells,
	  },
   }
}
