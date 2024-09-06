local normal = {
   ICUB3D_Spell('Flash Heal'),
   ICUB3D_Spell('Renew'),
   ICUB3D_Spell('Prayer of Mending'),
   ICUB3D_Spell('Holy Word: Serenity'),
   ICUB3D_Spell('Prayer of Healing'),
   ICUB3D_Spell('Power Word: Shield'),
   ICUB3D_Spell('Heal'),
   ICUB3D_Spell('Heal'),
   ICUB3D_Spell('Holy Word: Sanctify'),
   ICUB3D_Spell('Shred'),
   ICUB3D_Spell('Heal'),
   ICUB3D_Spell('Incarnation: Tree of Life', 'Convoke the Spirits'),
}

local topRight = {
   ICUB3D_SpellSpec('Celestial Alignment', 'Berserk', 'Berserk', 'Grove Guardians'),
   ICUB3D_SpellSpec('Regrowth', 'Brutal Slash', 'Demoralizing Roar', 'Flourish'),
   ICUB3D_SpellSpec('Rejuvenation', 'Feral Frenzy', 'Grove Protection', 'Overgrowth'),
   ICUB3D_SpellSpec('Swiftmend', 'Primal Wrath', 'Emerald Slumber', 'Invigorate'),
   ICUB3D_Spell('Shadow Word: Pain'), 
   ICUB3D_Spell('Smite'),
   ICUB3D_Spell('Mind Blast'),
   ICUB3D_SpellSpec('Regrowth', 'Regrowth', 'Regrowth', 'Starfire'),
   ICUB3D_Spell('Thorns', 'Overrun', 'Starsurge'),
   ICUB3D_Macro('im_health_rev'),
   ICUB3D_Spell('Desperate Prayer'),
   ICUB3D_Spell('Guardian Spirit'),
}

local bottomLeft = {
   ICUB3D_Spell('Angelic Feather'),
   ICUB3D_Spell('Fade'),
   ICUB3D_Spell('Levitate'),
   ICUB3D_Spell('Wild Charge'),
   ICUB3D_Talent(1),
   ICUB3D_Talent(2),
   ICUB3D_Talent(3),
   ICUB3D_Talent(4),
   ICUB3D_Talent(5),
   ICUB3D_Talent(6),
   ICUB3D_Talent(7),
   ICUB3D_Spell('Bear Form'),
}

local bottomRight = {
   ICUB3D_Spell('Psychic Scream'),
   ICUB3D_Macro('im_travel'),
   ICUB3D_Macro('im_racial'),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Macro('im_soothe'),
   ICUB3D_Spell('Mangle'),
   ICUB3D_Spell('Regrowth'),
   ICUB3D_Macro('im_flap'),
   ICUB3D_Spell('Power Word: Fortitude'),
   ICUB3D_Spell('Resurrection'),
   ICUB3D_Spell('Revitalize', 'Switch Flight Style'),
   ICUB3D_Spell('Mind Vision'),
}

local talents = {
   -- shared --
   ICUB3D_Spell('Purify'),
   ICUB3D_Spell('Dispel Magic'),
   ICUB3D_Spell('Leap of Faith'),
   ICUB3D_Spell('Halo'),

   -- discipline --
   -- icub3d_Spell('Schism'),
   ICUB3D_Spell('Power Word: Solace'),
   ICUB3D_Spell('Shadow Covenant'),
   ICUB3D_Spell('Evangelism'),

   -- holy --
   ICUB3D_Spell('Binding Heal'),
   ICUB3D_Spell('Apotheosis'),
   ICUB3D_Spell('Holy Word: Salvation'),

   -- shadow --
   ICUB3D_Spell('Searing Nightmare'),
   ICUB3D_Spell('Psychic Horror'),
   ICUB3D_Spell('Shadow Crash'),
   ICUB3D_Spell('Damnation'),
   ICUB3D_Spell('Void Torrent'),
   ICUB3D_Spell('Surrender to Madness'),
   ICUB3D_Spell('Dark Ascension'),

   -- pvp --
   ICUB3D_Spell('Thoughtsteal'),
   ICUB3D_Spell('Archangel'),
   ICUB3D_Spell('Dark Archangel'),
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
      ICUB3D_Dragon,
      ICUB3D_SkipAll,
      ICUB3D_SkipAll,
   }
)

ICUB3D_Spells['PRIEST'] = {
   specs = {
      {
         tags = { 'd', 'disc', 'discipline' },
         talent = talents,
         actionbar = spells,
      },
      {
         tags = { 'h', 'holy' },
         talent = talents,
         actionbar = spells,
      },
      {
         tags = { 's', 'shadow', 'shadow' },
         talent = talents,
         actionbar = spells,
      }
   }
}
