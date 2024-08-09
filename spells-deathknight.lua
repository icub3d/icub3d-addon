local normal = {
   ICUB3D_Spell('Heart Strike'),
   ICUB3D_Spell('Death Strike'),
   ICUB3D_Spell('Death and Decay'),
   ICUB3D_Spell('Blood Boil'),
   ICUB3D_Spell('Tombstone'),
   ICUB3D_Spell('Dark Command'),
   ICUB3D_Spell('Angi-Magic Shell'),
   ICUB3D_Spell('Death\'s Caress'),
   ICUB3D_Spell('Death Coil'),
   ICUB3D_Spell('Mind freeze'),
   ICUB3D_Spell('Raise Dead'),
   ICUB3D_Spell('Dancing Rune Weapon'),
}

local topRight = {
   ICUB3D_Spell('Vampiric Blood'),
   ICUB3D_Spell('Abomination Limb'),
   ICUB3D_Spell('Marrowrend'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Death Grip'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Macro('im_healthstone'),
   ICUB3D_Spell('Diffuse Magic'),
   ICUB3D_Spell('Zen Meditation'),
}

local bottomLeft = {
   ICUB3D_Spell('Death\'s Advance'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Raise Ally'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Anti-Magic Zone'),
   ICUB3D_Spell('Chains of Ice'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
}

local bottomRight = {
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Macro('im_racial'),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Macro('im_glider_foam'),
   ICUB3D_Spell('Death Gate'),
   ICUB3D_Spell('Path of Frost'),
   ICUB3D_Spell('Runeforging'),
   ICUB3D_Skip(),
}

local talents = {
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


ICUB3D_Spells['DEATHKNIGHT'] = {
   specs = {
      {
         tags = { 'b', 'blood' },
         talent = talents,
         actionbar = spells,
      },
   }
}
