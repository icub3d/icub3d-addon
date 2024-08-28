local normal = {
   ICUB3D_Spell('Living Flame'),
   ICUB3D_SpellSpec('Azure Strike', 'Reversion', 'Azure Strike'),
   ICUB3D_SpellSpec('Pyre', 'Temporal Anomaly', 'Ebon Might'),
   ICUB3D_Spell('Disintegrate'),
   ICUB3D_SpellSpec('Fire Breath', 'Dream Breath', 'Fire Breath'),
   ICUB3D_SpellSpec('Eternity Surge', 'Spiritbloom', 'Upheaval'),
   ICUB3D_SpellSpec('Firestorm', 'Emerald Blossom', 'Prescience'),
   ICUB3D_Talent(1),
   ICUB3D_SpellSpec('Shattering Star', 'Echo', 'Blistering Scales'),
   ICUB3D_Spell('Quell'),
   ICUB3D_Spell('Verdant Embrace'),
   ICUB3D_SpellSpec('Emerald Blossom', 'Fire Breath', 'Emerald Blossom'),
}

local topRight = {
   ICUB3D_SpellSpec('Dragonrage', 'Rewind', 'im_attunement'),
   ICUB3D_Spell('Rescue'),
   ICUB3D_Spell('Deep Breath'),
   ICUB3D_Spell('Landslide'),
   ICUB3D_Spell('Sleep Walk'),
   ICUB3D_Spell('Emerald Communion'),
   ICUB3D_Spell('Time Dilation'),
   ICUB3D_Spell('Oppressing Roar'),
   ICUB3D_Spell('Zephyr'),
   ICUB3D_Spell('Glide'),
   ICUB3D_Spell('Time Spiral'),
   ICUB3D_Spell('Obsidian Scales'),
}

local bottomLeft = {
   ICUB3D_Spell('Hover'),
   ICUB3D_Spell('Soar'),
   ICUB3D_Spell('Wing Buffet'),
   ICUB3D_Spell('Tail Swipe'),
   ICUB3D_Spell('Expunge'),
   ICUB3D_Spell('Cauterizing Flame'),
   ICUB3D_Spell('Unravel'),
   ICUB3D_Spell('Source of Magic'),
   ICUB3D_Spell('Tip the Scales'),
   ICUB3D_Spell('Renewing Blaze'),
   ICUB3D_Spell('Fury of the Aspects'),
   ICUB3D_Spell('Stasis'),
}

local bottomRight = {
   ICUB3D_SpellSpec('Temporal Anomaly', 'Azure Strike', 'Sense Power'),
   ICUB3D_Talent(2),
   ICUB3D_Talent(3),
   ICUB3D_Talent(4),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Macro('im_healthstone'),
   ICUB3D_Talent(5),
   ICUB3D_Spell('Blessing of the Bronze'),
   ICUB3D_Spell('Visage'),
   ICUB3D_Spell('Chosen Identity'),
   ICUB3D_Spell('Return'),
   ICUB3D_Spell('Mass Return')
}

local talents = {
   -- Preservation -- 
   ICUB3D_Spell('Dream Flight'),

   -- Augmentation --
   ICUB3D_Spell('Timelessness'),
   ICUB3D_Spell('Bestow Weyrnstone'),

   -- Devastation --
   ICUB3D_Spell('Firestorm'),

   -- Evoker --
   ICUB3D_Spell('Sleep Walk'),
   ICUB3D_Spell('Unravel'),

   -- PvP --
   ICUB3D_Spell('Chrono Loop'),
   ICUB3D_Spell('Nullifying Shroud'),
   ICUB3D_Spell('Time Stop'),
   ICUB3D_Spell('Swoop Up'),
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
ICUB3D_Spells['EVOKER'] = {
   specs = {
      {
         tags = { 'd', 'devastation' },
         talent = talents,
         actionbar = spells,
      },
      {
         tags = { 'p', 'preservation' },
         talent = talents,
         actionbar = spells,
      },
      {
         tags = { 'a', 'augmentation' },
         talent = talents,
         actionbar = spells,
      }
   }
}
