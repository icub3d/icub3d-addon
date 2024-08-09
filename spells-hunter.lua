icub3d_Hunter_Spells = {
   -- Top Left --
   ICUB3D_Spell('Cobra Shot', 'Aimed Shot', 'Raptor Strike'),
   ICUB3D_Spell('Multi-Shot', 'Carve'),
   ICUB3D_Spell('Barbed Shot', 'Steady Shot', 'Wildfire Bomb'),
   ICUB3D_Spell('Rapid Fire', 'Wing Clip'),
   ICUB3D_Spell('Kill Command', 'Arcane Shot'),
   ICUB3D_Spell('Command Pet'),
   ICUB3D_Spell('Concussive Shot', 'Harpoon'),
   ICUB3D_Spell('Aspect of the Wild', 'Bursting Shot', 'Aspect of the Eagle'),
   ICUB3D_Spell('Bestial Wrath', 'Trueshot', 'Coordinated Assault'),
   ICUB3D_Spell('Counter Shot', 'Muzzle'),
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
   ICUB3D_Spell('Intimidation'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Exhilaration'),
   ICUB3D_Spell('Aspect of the Turtle'),

   -- Bottom Left --
   ICUB3D_Spell('Aspect of the Cheetah'),
   ICUB3D_Spell('Disengage'),
   ICUB3D_Spell('Mend Pet'),
   ICUB3D_Spell('Flare'),
   ICUB3D_Macro('im_racial'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Feign Death'),
   ICUB3D_Spell('Play Dead'),
   ICUB3D_Spell('Freezing Trap'),
   ICUB3D_Spell('Tar Trap'),
   ICUB3D_Spell('Misdirection'),
   ICUB3D_Spell('Heart Essence'),

   -- Bottom Right --
   ICUB3D_Spell('Goblin Glider Kit'),
   ICUB3D_Macro('im_cloak_belt'),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Soft Foam Sword'),
   ICUB3D_Spell('Fetch'),
   ICUB3D_Macro('im_healthstone'),
   ICUB3D_Spell('potion', 'potion'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Aspect of the Chameleon'),
   ICUB3D_Spell('Eagle Eye'),
   ICUB3D_Spell('Fireworks'),
}

icub3d_Hunter_Talents = {
   -- BM
   ICUB3D_Spell('Binding Shot'),
   ICUB3D_Spell('Chimaera Shot'),
   ICUB3D_Spell('Dire Beast'),
   ICUB3D_Spell('Stampede'),
   ICUB3D_Spell('Spitting Cobra'),

   -- Marks
   ICUB3D_Spell('Serpent Sting'),
   ICUB3D_Spell('Explosive Shot'),
   ICUB3D_Spell('Hunter\'s Mark'),
   ICUB3D_Spell('Double Tap'),
   ICUB3D_Spell('Piercing Shot'),

   -- Survival
   ICUB3D_Spell('Butchery'),
   ICUB3D_Spell('Steel Trap'),
   ICUB3D_Spell('Mongoose Bite'),
   ICUB3D_Spell('Flanking Strike'),
   ICUB3D_Spell('Chakrams'),

   -- Shared
   ICUB3D_Spell('Camouflage'),
   ICUB3D_Spell('A Murder of Crows'),
   ICUB3D_Spell('Binding Shot'),
   ICUB3D_Spell('Barrage'),

   -- PvP
   ICUB3D_Spell('Tracker\'s Net'),
   ICUB3D_Spell('Sniper Shot'),
   ICUB3D_Spell('Dire Beast: Hawk'),
   ICUB3D_Spell('Dire Beast: Basilisk'),
   ICUB3D_Spell('Viper Sting'),
   ICUB3D_Spell('Spider Sting'),
   ICUB3D_Spell('Scorpid Sting'),
   ICUB3D_Spell('Scatter Shot'),
   ICUB3D_Spell('Hi-Explosive Trap'),
   ICUB3D_Spell('Roar of Sacrifice'),

   -- Pots
   ICUB3D_Spell('pot', '"Third Wind" Potion'),
   ICUB3D_Spell('pot', 'Potion of Defiance'),
   ICUB3D_Spell('pot', 'Saltwater Potion'),
   ICUB3D_Spell('pot', 'Potion of Trivial Invisibility'),
   ICUB3D_Spell('pot', 'Swiftness Potion'),
   ICUB3D_Spell('pot', 'Drums of Fury'),
}

ICUB3D_Spells['HUNTER'] = {
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
