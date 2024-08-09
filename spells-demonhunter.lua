local normal = {
   ICUB3D_Spell('Shear', 'Demon\'s Bite'),
   ICUB3D_Spell('Soul Cleave', 'Chaos Strike'),
   ICUB3D_Spell('Immolation Aura'),
   ICUB3D_Spell('Blade Dance', 'Spirit Bomb'),
   ICUB3D_Spell('Blur', 'Demon Spikes'),
   ICUB3D_Spell('Torment'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Chaos Nova'),
   ICUB3D_Spell('Eye Beam', 'Fel Devastation'),
   ICUB3D_Spell('Disrupt'),
   ICUB3D_Spell('Essence Break'),
   ICUB3D_Spell('Fel Eruption', 'Fiery Brand'),
}

local topRight = {
   ICUB3D_Spell('The Hunt'),
   ICUB3D_Spell('Vengeful Retreat'),
   ICUB3D_Spell('Imprison'),
   ICUB3D_Spell('Consume Magic'),
   ICUB3D_Spell('Throw Glaive'),
   ICUB3D_Spell('Sigil of Misery'),
   ICUB3D_Spell('Darkness'),
   ICUB3D_Spell('Goblin Glider Kit'),
   ICUB3D_Spell('Spectral Sight'),
   ICUB3D_Macro('im_healthstone'),
   ICUB3D_Spell('Felblade'),
   ICUB3D_Spell('Metamorphosis'),
}

local bottomLeft = {
   ICUB3D_Spell('Sigil of Flame'),
   ICUB3D_Spell('Sigil of Silence'),
   ICUB3D_Spell('Sigil of Chains'),
   ICUB3D_Spell('Infernal Strike', 'Fel Rush'),
   ICUB3D_Talent(1),
   ICUB3D_Talent(2),
   ICUB3D_Talent(3),
   ICUB3D_Talent(4),
   ICUB3D_Talent(5),
   ICUB3D_Spell('Netherwalk', 'Soul Carver'),
   ICUB3D_Macro('im_trinket'),
}
--    ICUB3D_Spell('Elysian Decree'),

local bottomRight = {
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Macro('im_racial'),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Spell('Glide'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
}

local talents = {
   ICUB3D_Spell('Rain from Above'),
   ICUB3D_Spell('Illidan\'s Grasp'),
   ICUB3D_Spell('Reverse Magic'),
   ICUB3D_Spell('Demonic Trample'),
   ICUB3D_Spell('Sigil of Spite'),
   ICUB3D_Spell('Soul Barrier'),
   ICUB3D_Spell('Bulk Extraction'),
}

local spells = ICUB3D_joinSpells(
   {
      normal,
      topRight,
      bottomLeft,
      bottomRight,
      ICUB3D_SkipAll,
      ICUB3D_SkipAll,
      ICUB3D_SkipAll,
      ICUB3D_SkipAll,
      ICUB3D_SkipAll,
      ICUB3D_Dragon
   }
)

ICUB3D_Spells['DEMONHUNTER'] = {
   specs = {
      -- The tags are useful for switching but these should be in in-game order.
      {
         tags = { 'h', 'havoc' },
         talents = {
            ['dungeon'] = { 1, 1, 3, 3, 1, 3, 1 },
            ['felblade'] = { 3, 3, 3, 3, 2, 3, 2 },
            ['demonic'] = { 3, 3, 2, 1, 2, 3, 1 },
            ['momentum'] = { 3, 3, 2, 3, 2, 3, 2 },
         },
         talent = talents,
         actionbar = spells,
      },
      {
         tags = { 'v', 'veng', 'vengeance' },
         talents = {
            ['quest'] = { 1, 2, 1, 3, 2, 1, 1 },
            ['bomb'] = { 1, 2, 3, 3, 3, 2, 1 },
            ['brand'] = { 2, 3, 2, 3, 2, 2, 1 },
            ['control'] = { 1, 3, 1, 3, 3, 2, 1 },
         },
         talent = talents,
         actionbar = spells,
      }
   }
}
