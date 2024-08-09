local devNormal = {
   ICUB3D_Spell('Living Flame'),
   ICUB3D_Spell('Azure Strike'),
   ICUB3D_Spell('Pyre'),
   ICUB3D_Spell('Disintegrate'),
   ICUB3D_Spell('Fire Breath'),
   ICUB3D_Spell('Eternity Surge'),
   ICUB3D_Spell('Firestorm'),
   ICUB3D_Spell('Dream Flight'),
   ICUB3D_Spell('Shattering Star'),
   ICUB3D_Spell('Quell'),
   ICUB3D_Spell('Emerald Blossom'),
   ICUB3D_Spell('Verdant Embrace'),
}

local devTopRight = {
   ICUB3D_Spell('Dragonrage'),
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

local devBottomLeft = {
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

local devBottomRight = {
   ICUB3D_Spell('Temporal Anomaly'),
   ICUB3D_Talent(1),
   ICUB3D_Talent(2),
   ICUB3D_Talent(3),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Macro('im_healthstone'),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
   ICUB3D_Skip(),
}

local presNormal = {
   ICUB3D_Spell('Living Flame'),
   ICUB3D_Spell('Temporal Anomaly'),
   ICUB3D_Spell('Reversion'),
   ICUB3D_Spell('Disintegrate'),
   ICUB3D_Spell('Dream Breath'),
   ICUB3D_Spell('Spiritbloom'),
   ICUB3D_Spell('Emerald Blossom'),
   ICUB3D_Spell('Dream Flight'),
   ICUB3D_Spell('Echo'),
   ICUB3D_Spell('Quell'),
   ICUB3D_Spell('Verdant Embrace'),
   ICUB3D_Spell('Fire Breath'),
}

local presTopRight = {
   ICUB3D_Spell('Rewind'),
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

local presBottomLeft = {
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

local presBottomRight = {
   ICUB3D_Spell('Azure Strike'),
   ICUB3D_Talent(1),
   ICUB3D_Talent(2),
   ICUB3D_Talent(3),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Macro('im_healthstone'),
   ICUB3D_Skip(),
   ICUB3D_Spell('Blessing of the Bronze'),
   ICUB3D_Spell('Visage'),
   ICUB3D_Spell('Chosen Identity'),
   ICUB3D_Spell('Return'),
   ICUB3D_Spell('Mass Return'),
}


local talents = {
    -- PvP --
    ICUB3D_Spell('Chrono Loop'),
    ICUB3D_Spell('Nullifying Shroud'),
    ICUB3D_Spell('Time Stop'),
    ICUB3D_Spell('Swoop Up'),
 }

local devSpells = ICUB3D_joinSpells(
   {
      devNormal,
      devTopRight,
      devBottomLeft,
      devBottomRight,
      ICUB3D_SkipAll,
      ICUB3D_SkipAll,
      ICUB3D_SkipAll,
      ICUB3D_SkipAll,
      ICUB3D_SkipAll,
      ICUB3D_Dragon
   }
)

local presSpells = ICUB3D_joinSpells(
   {
      presNormal,
      presTopRight,
      presBottomLeft,
      presBottomRight,
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
          tags = {'d', 'devastation'},
          talent = talents,
          actionbar = devSpells,
       },
       {
          tags = {'p', 'preservation'},
          talent = talents,
          actionbar = presSpells,
       }
   }
 }