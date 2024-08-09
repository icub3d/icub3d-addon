local normal = {
   ICUB3D_Spell('Shield Slam'),
   ICUB3D_Spell('Slam'),
   ICUB3D_Spell('Thunder Clap'),
   ICUB3D_Spell('Revenge'),
   ICUB3D_Spell('Shield Block'),
   ICUB3D_Spell('Taunt'),
   ICUB3D_Spell('Victory Rush'),
   ICUB3D_Spell('Demoralizing Shout'),
   ICUB3D_Spell('Devastate'),
   ICUB3D_Spell('Pummel'),
   ICUB3D_Spell('Ignore Pain'),
   ICUB3D_Spell('Avatar'),
}

local topRight = {
   ICUB3D_Spell('Last Stand'),
   ICUB3D_Spell('Execute'),
   ICUB3D_Spell('Whirlwind'),
   ICUB3D_Spell('Heroic Leap'),
   ICUB3D_Spell('Heroic Throw'),
   ICUB3D_Spell('Shockwave'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Spell('Bitter Immunity'),
   ICUB3D_Macro('im_healthstone'),
   ICUB3D_Spell('Rallying Cry'),
   ICUB3D_Spell('Shield Wall'),
}

local bottomLeft = {
   ICUB3D_Spell('Challenging Shout'),
   ICUB3D_Spell('Spell Reflection'),
   ICUB3D_Spell('Rend'),
   ICUB3D_Spell('Charge'),
   ICUB3D_Talent(1),
   ICUB3D_Talent(2),
   ICUB3D_Talent(3),
   ICUB3D_Talent(4),
   ICUB3D_Talent(5),
   ICUB3D_Talent(6),
   ICUB3D_Talent(7),
   ICUB3D_Macro('im_warrior_stances'),
}

local bottomRight = {
   ICUB3D_Talent(8),
   ICUB3D_Talent(9),
   ICUB3D_Macro('im_racial'),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Spell('Hamstring'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Macro('im_glider_foam'),
   ICUB3D_Spell('Battle Shout'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
}

local talents = {
   ICUB3D_Spell('Berserker Rage'),
   ICUB3D_Spell('Storm Bolt'),
   ICUB3D_Spell('Intervene'),
   ICUB3D_Spell('Intimidating Shout'),
   ICUB3D_Spell('Wrecking Throw'),
   ICUB3D_Spell('Shattering Throw'),
   ICUB3D_Spell('Berserker Shout'),
   ICUB3D_Spell('Piercing Howl'),
   ICUB3D_Spell('Champion\'s Spear'),
   ICUB3D_Spell('Thunderous Roar'),
   ICUB3D_Spell('Spell Block'),
   ICUB3D_Spell('Shield Charge'),
   ICUB3D_Spell('Ravager'),
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


ICUB3D_Spells['WARRIOR'] = {
   specs = {
      {
         tags = { 'a', 'arms' },
         talent = talents,
         actionbar = spells,
      },
      {
         tags = { 'f', 'fury' },
         talent = talents,
         actionbar = spells,
      },
      {
         tags = { 'p', 'prot', 'protection' },
         talent = talents,
         actionbar = spells,
      },
   }
}
