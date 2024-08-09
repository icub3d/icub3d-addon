local normal = {
   ICUB3D_Spell('Blackout Kick'),
   ICUB3D_Spell('Tiger Palm'),
   ICUB3D_Spell('Keg Smash'),
   ICUB3D_Spell('Spinning Crane Kick'),
   ICUB3D_Spell('Expel harm'),
   ICUB3D_Spell('Provoke'),
   ICUB3D_Spell('Purifying Brew'),
   ICUB3D_Spell('Rushing Jade Wind'),
   ICUB3D_Spell('Exploding Keg'),
   ICUB3D_Spell('Spear Hand Strike'),
   ICUB3D_Spell('Rising Sun Kick'),
   ICUB3D_Spell('Celesital Brew'),
}

local topRight = {
   ICUB3D_Spell('Fortifying Brew'),
   ICUB3D_Spell('Breath of Fire'),
   ICUB3D_Spell('Chi Burst'),
   ICUB3D_Spell('Weapons of Order'),
   ICUB3D_Spell('Crackling jade Lightning'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Spell('Vivify'),
   ICUB3D_Spell('Transcendence: Transfer'),
   ICUB3D_Macro('im_healthstone'),
   ICUB3D_Spell('Diffuse Magic'),
   ICUB3D_Spell('Zen Meditation'),
}

local bottomLeft = {
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Spell('Roll'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Spell('Leg Sweep'),
   ICUB3D_Spell('Paralysis'),
   ICUB3D_Spell('Tiger\'s Lust'),
   ICUB3D_Spell('Touch of Death'),
}

local bottomRight = {
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Macro('im_racial'),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Spell('Ring of Peace'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Transcendence'),
   ICUB3D_Macro('im_glider_foam'),
   ICUB3D_Spell('Zen Pilgrimage'),
   ICUB3D_Spell('Resuscitate'),
   ICUB3D_Spell('Zen Flight'),
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


ICUB3D_Spells['MONK'] = {
   specs = {
      {
         tags = { 'b', 'brew', 'brewmaster' },
         talent = talents,
         actionbar = spells,
      },
   }
}
