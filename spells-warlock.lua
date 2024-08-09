local normal = {
   -- Top Left --
   ICUB3D_Spell('Haunt', 'Shadow Bolt', 'Immolate'),
   ICUB3D_Spell('Agony', 'Demonbolt', 'Incinerate'),
   ICUB3D_Spell('Unstable Affliction', 'Call Dreadstalkers', 'Conflagrate'),
   ICUB3D_Spell('Malefic Rapture', "Hand of Gul'dan", 'Chaos Bolt'),
   ICUB3D_Spell('Soul Tap', 'Implosion', 'Dimensional Rift'),
   ICUB3D_Spell('Soul Rot', 'Power Siphon', 'Rain of Fire'),
   ICUB3D_Spell('Phantom Singularity', 'Vile Taint', 'Bilescourge Bombers', 'Demonic Strength', 'Shadowburn'),
   ICUB3D_Spell('Seed of Corruption', 'Summon Vilefiend', 'Soul Strike', 'Soul Fire'),
   ICUB3D_Spell('Summon Darkglare', 'Summon Demonic Tyrant', 'Channel Demonfire'),
   ICUB3D_Spell('Siphon Life', 'Grimiore: Felguard', 'Cataclysm'),
   ICUB3D_Spell('Power Syphon', 'Drain Soul', 'Nether Portal', 'Harm', 'Summon Infernal'),
   ICUB3D_Spell('Command Demon'),
}

local topRight = {
   -- Top Right --
   ICUB3D_Spell('Fear'),
   ICUB3D_Spell('Corruption'),
   ICUB3D_Spell('Drain Life'),
   ICUB3D_Spell('Health Funnel'),
   ICUB3D_Macro('im_health_rev'),
   ICUB3D_Spell('Banish'),
   ICUB3D_Spell('Amplify Curse'),
   ICUB3D_Spell('Curse of Weakness'),
   ICUB3D_Spell('Curse of Tongues'),
   ICUB3D_Spell('Curse of Exhaustion'),
   ICUB3D_Spell('Fel Domination'),
   ICUB3D_Spell('Unending Resolve'),
}

local bottomLeft = {
   -- Bottom Left --
   ICUB3D_Macro('im_demonic_circle'),
   ICUB3D_Spell('Burning Rush'),
   ICUB3D_Spell('Mortal Coil', 'Howl of Terror'),
   ICUB3D_Spell('Guillotine', 'Grimoire of Sacrifice'),
   ICUB3D_Spell('Soul Swap', 'Doom', 'Havoc'),
   ICUB3D_Macro('im_racial'),
   ICUB3D_Spell('Summon Demon'),
   ICUB3D_Talent(1),
   ICUB3D_Talent(2),
   ICUB3D_Talent(3),
   ICUB3D_Talent(4),
   ICUB3D_Talent(5),
}

local bottomRight = {
   -- Bottom Right --
   ICUB3D_Spell('Summon Soulkeeper', 'harm', 'Inquisitor\'s Gaze'),
   ICUB3D_Spell('Shadowfury'),
   ICUB3D_Spell('Shadowflame'),
   ICUB3D_Spell('Dark Pact'),
   ICUB3D_Spell('Demonic Gateway'),
   ICUB3D_Spell('Create Healthstone'),
   ICUB3D_Spell('Subjugate Demon'),
   ICUB3D_Spell('Demonic Circle'),
   ICUB3D_Spell('Soulstone'),
   ICUB3D_Spell('Create Soulwell'),
   ICUB3D_Spell('Eye of Kilrogg'),
   ICUB3D_Spell('Ritual of Summoning'),
}

local talents = {
   ICUB3D_Spell('Power Syphon'),
   ICUB3D_Spell('Bane of Fragility'),
   ICUB3D_Spell('Bane of Shadows'),
   ICUB3D_Spell('Bonds of Fel'),
   ICUB3D_Spell('Deathbolt'),
   ICUB3D_Spell('Call Fel Lord'),
   ICUB3D_Spell('Call Fel Hunter'),
   ICUB3D_Spell('Call Observer'),
   ICUB3D_Spell('Casting Circle'),
   ICUB3D_Spell('Fel Obelisk'),
   ICUB3D_Spell('Nether Ward'),
   ICUB3D_Spell('Shadow Rift'),
   ICUB3D_Spell('Rapid Contagion'),
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

ICUB3D_Spells['WARLOCK'] = {
   specs = {
      -- The tags are useful for switching but these should be in in-game order.
      {
         tags = { 'a', 'aff', 'affliction' },
         talent = talents,
         talents = {
            ['raid'] = { 3, 3, 2, 2, 2, 2, 3 },
            ['dungeon'] = { 3, 2, 2, 3, 2, 1, 3 },
            ['quest'] = { 3, 3, 2, 3, 2, 2, 3 },
         },
         actionbar = spells,
      },
      {
         tags = { 'dm', 'demo', 'demonology' },
         talent = talents,
         talents = {
            ['raid'] = { 3, 1, 2, 3, 1, 3, 2 },
            ['quest'] = { 1, 1, 2, 3, 2, 3, 2 },
            ['dungeon'] = { 3, 1, 2, 3, 2, 3, 2 },
         },
         actionbar = spells,
      },
      {
         tags = { 'ds', 'destro', 'destruction' },
         talent = talents,
         talents = {
            ['aoe'] = { 1, 1, 2, 2, 2, 2, 1 },
            ['st'] = { 1, 1, 2, 3, 2, 1, 2 },
            ['pvp'] = { 1, 1, 1, 3, 2, 1, 3 },
         },
         actionbar = spells,
      }
   }
}
