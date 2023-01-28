icub3d_Hunter_Spells = {
   -- Top Left --
   icub3d_Spell('Cobra Shot', 'Aimed Shot', 'Raptor Strike'),
   icub3d_Spell('Multi-Shot', 'Carve'),
   icub3d_Spell('Barbed Shot', 'Steady Shot', 'Wildfire Bomb'),
   icub3d_Spell('Rapid Fire', 'Wing Clip'),
   icub3d_Spell('Kill Command', 'Arcane Shot'),
   icub3d_Spell('Command Pet'),
   icub3d_Spell('Concussive Shot', 'Harpoon'),
   icub3d_Spell('Aspect of the Wild', 'Bursting Shot', 'Aspect of the Eagle'),
   icub3d_Spell('Bestial Wrath', 'Trueshot', 'Coordinated Assault'),
   icub3d_Spell('Counter Shot', 'Muzzle'),
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
   icub3d_Spell('Intimidation'),
   icub3d_Skip(),
   icub3d_Spell('Exhilaration'),
   icub3d_Spell('Aspect of the Turtle'),

   -- Bottom Left --
   icub3d_Spell('Aspect of the Cheetah'),
   icub3d_Spell('Disengage'),
   icub3d_Spell('Mend Pet'),
   icub3d_Spell('Flare'),
   icub3d_Macro('im_racial'),
   icub3d_Skip(),
   icub3d_Spell('Feign Death'),
   icub3d_Spell('Play Dead'),
   icub3d_Spell('Freezing Trap'),
   icub3d_Spell('Tar Trap'),
   icub3d_Spell('Misdirection'),
   icub3d_Spell('Heart Essence'),

   -- Bottom Right --
   icub3d_Spell('Goblin Glider Kit'),
   icub3d_Macro('im_cloak_belt'),
   icub3d_Macro('im_trinket'),
   icub3d_Skip(),
   icub3d_Spell('Soft Foam Sword'),
   icub3d_Spell('Fetch'),
   icub3d_Macro('im_healthstone'),
   icub3d_Spell('potion', 'potion'),
   icub3d_Skip(),
   icub3d_Spell('Aspect of the Chameleon'),
   icub3d_Spell('Eagle Eye'),
   icub3d_Spell('Fireworks'),
}

icub3d_Hunter_Talents = {
   -- BM
   icub3d_Spell('Binding Shot'),
   icub3d_Spell('Chimaera Shot'),
   icub3d_Spell('Dire Beast'),
   icub3d_Spell('Stampede'),
   icub3d_Spell('Spitting Cobra'),

   -- Marks
   icub3d_Spell('Serpent Sting'),
   icub3d_Spell('Explosive Shot'),
   icub3d_Spell('Hunter\'s Mark'),
   icub3d_Spell('Double Tap'),
   icub3d_Spell('Piercing Shot'),

   -- Survival
   icub3d_Spell('Butchery'),
   icub3d_Spell('Steel Trap'),
   icub3d_Spell('Mongoose Bite'),
   icub3d_Spell('Flanking Strike'),
   icub3d_Spell('Chakrams'),

   -- Shared
   icub3d_Spell('Camouflage'),
   icub3d_Spell('A Murder of Crows'),
   icub3d_Spell('Binding Shot'),
   icub3d_Spell('Barrage'),

   -- PvP
   icub3d_Spell('Tracker\'s Net'),
   icub3d_Spell('Sniper Shot'),
   icub3d_Spell('Dire Beast: Hawk'),
   icub3d_Spell('Dire Beast: Basilisk'),
   icub3d_Spell('Viper Sting'),
   icub3d_Spell('Spider Sting'),
   icub3d_Spell('Scorpid Sting'),
   icub3d_Spell('Scatter Shot'),
   icub3d_Spell('Hi-Explosive Trap'),
   icub3d_Spell('Roar of Sacrifice'),

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
         tags = { 'b', 'beast', 'beastmastery' },
         talent = icub3d_Hunter_Talents,
         actionbar = icub3d_Hunter_Spells,
      },
      {
         tags = { 'm', 'marks', 'marksmanship' },
         talent = icub3d_Hunter_Talents,
         actionbar = icub3d_Hunter_Spells,
      },
      {
         tags = { 's', 'surv', 'survival' },
         talent = icub3d_Hunter_Talents,
         actionbar = icub3d_Hunter_Spells,
      },
   }
}
