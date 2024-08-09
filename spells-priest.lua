local normal = {
   ICUB3D_Spell('Shadow Mend', 'Flash Heal'),
   ICUB3D_Spell('Power Word: Shield'),
   ICUB3D_Spell('Penance', 'Heal', 'Mind Blast'),
   ICUB3D_Spell('Penance', 'Prayer of Mending', 'Shadow Word: Pain'),
   ICUB3D_Spell('Renew', 'Vampiric Touch', 'Schism'),
   ICUB3D_Spell('Holy Word: Sanctify', 'Mind Blast'),
   ICUB3D_Spell('Shadow Word: Pain'),
   ICUB3D_Spell('Power Word: Radiance', 'Prayer of Healing', 'Void Eruption'),
   ICUB3D_Spell('Smite', 'Holy Fire', 'Mind Flay'),
   ICUB3D_Spell('Silence', 'Angelic Feather'),
   ICUB3D_Spell('Mindgames'),
   ICUB3D_Spell('Door of Shadows'),
}

local topRight = {
   ICUB3D_Macro('im_racial'),
   ICUB3D_Spell('Desperate Prayer'),
   ICUB3D_Macro('im_health_rev'),
   ICUB3D_Spell('Rapture', 'Symbol of Hope', 'Vampiric Embrace'),
   ICUB3D_Spell('Pain Suppression', 'Dispersion', 'Guardian Spirit'),
   ICUB3D_Spell('Power Word: Barrier', 'Divine Hymn'),
   ICUB3D_Spell('Mass Dispel'),
   ICUB3D_Spell('Holy Nova', 'Devouring Plague'),
   ICUB3D_Spell('Shadow Word: Death'),
   ICUB3D_Spell('Holy Word: Serenity'),
   ICUB3D_Spell('Shadowfiend', 'Lightspawn'),
   ICUB3D_Spell('Power Infusion'),
}

local bottomLeft = {
   ICUB3D_Spell('Holy Word: Chastise'),
   ICUB3D_Spell('Leap of Faith'),
   ICUB3D_Spell('Psychic Scream'),
   ICUB3D_Spell('Circle of Healing', 'Mind Sear'),
   ICUB3D_Spell('Mind Blast'),
   ICUB3D_Spell('Purify', 'Purify Disease'),
   ICUB3D_Spell('Dispel Magic'),
   ICUB3D_Macro('im_levitate'),
   ICUB3D_Spell('Fade'),
   ICUB3D_Macro('im_trinket'),
   ICUB3D_Talent(1),
   ICUB3D_Talent(2),
}

local bottomRight = {
   ICUB3D_Talent(3),
   ICUB3D_Talent(4),
   ICUB3D_Talent(5),
   ICUB3D_Talent(6),
   ICUB3D_Spell('Shackle Undead'),
   ICUB3D_Spell('Mind Soothe'),
   ICUB3D_Spell('Mind Control'),
   ICUB3D_Spell('Power Word: Fortitude'),
   ICUB3D_Spell('Resurrection'),
   ICUB3D_Spell('Shadowform'),
   ICUB3D_Spell('Levitate'),
}

local talents = {
   -- shared --
   ICUB3D_Spell('Angelic Feather'),
   ICUB3D_Spell('Shining Force'),
   ICUB3D_Spell('Divine Star'),
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
      ICUB3D_Dragon
   }
)

ICUB3D_Spells['PRIEST'] = {
   specs = {
      {
         tags = { 'd', 'disc', 'discipline' },
         talent = talents,
         actionbar = spells,
         talents = {
            ['quest'] = { 3, 3, 2, 3, 1, 2, 1 },
            ['dungeon'] = { 2, 3, 3, 3, 1, 1, 1 },
            ['shell'] = { 3, 3, 2, 3, 1, 1, 2 },
            ['arena'] = { 2, 1, 3, 1, 1, 1, 1 },
            ['tor'] = { 3, 3, 3, 1, 1, 1, 1 },
         }
      },
      {
         tags = { 'h', 'holy' },
         talent = talents,
         actionbar = spells,
         talents = {
            ['raid'] = { 1, 3, 1, 3, 3, 3 },
            ['dungeon'] = { 3, 3, 2, 2, 3, 3, 2 },
            ['pvp'] = { 1, 3, 2, 1, 1, 1, 1 },
         }
      },
      {
         tags = { 's', 'shadow', 'shadow' },
         talent = talents,
         actionbar = spells,
         talents = {
            ['quest'] = { 3, 1, 2, 3, 2, 1, 3 },
            ['raid'] = { 1, 1, 1, 3, 1, 3, 2 },
            ['dungeon'] = { 2, 1, 3, 2, 3, 2, 3 },
            ['arena'] = { 3, 3, 2, 3, 3, 1, 2 },
            ['bg'] = { 3, 2, 2, 3, 1, 1, 1 },
         }
      }
   }
}
