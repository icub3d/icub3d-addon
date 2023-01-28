icub3d_Priest_Spells = {
   icub3d_Spell('Shadow Mend', 'Flash Heal'),
   icub3d_Spell('Power Word: Shield'), 
   icub3d_Spell('Penance', 'Heal', 'Mind Blast'), 
   icub3d_Spell('Penance', 'Prayer of Mending', 'Shadow Word: Pain'), 
   icub3d_Spell('Renew', 'Vampiric Touch', 'Schism'), 
   icub3d_Spell('Holy Word: Sanctify', 'Mind Blast'),
   icub3d_Spell('Shadow Word: Pain'),
   icub3d_Spell('Power Word: Radiance', 'Prayer of Healing', 'Void Eruption'),
   icub3d_Spell('Smite', 'Holy Fire', 'Mind Flay'), 
   icub3d_Spell('Silence', 'Angelic Feather'),
   icub3d_Spell('Mindgames'),
   icub3d_Spell('Door of Shadows'),

   icub3d_Macro('im_racial'),
   icub3d_Spell('Desperate Prayer'),
   icub3d_Macro('im_health_rev'),
   icub3d_Spell('Rapture', 'Symbol of Hope', 'Vampiric Embrace'),
   icub3d_Spell('Pain Suppression', 'Dispersion', 'Guardian Spirit'),
   icub3d_Spell('Power Word: Barrier', 'Divine Hymn'),
   icub3d_Spell('Mass Dispel'),
   icub3d_Spell('Holy Nova', 'Devouring Plague'),
   icub3d_Spell('Shadow Word: Death'),
   icub3d_Spell('Holy Word: Serenity'),
   icub3d_Spell('Shadowfiend', 'Lightspawn'),
   icub3d_Spell('Power Infusion'),

   icub3d_Spell('Holy Word: Chastise'),
   icub3d_Spell('Leap of Faith'),
   icub3d_Spell('Psychic Scream'),
   icub3d_Spell('Circle of Healing', 'Mind Sear'),
   icub3d_Spell('Mind Blast'),
   icub3d_Spell('Purify', 'Purify Disease'),
   icub3d_Spell('Dispel Magic'),
   icub3d_Macro('im_levitate'),
   icub3d_Spell('Fade'),
   icub3d_Macro('im_trinket'),
   icub3d_Talent(1),
   icub3d_Talent(2),

   icub3d_Talent(3),
   icub3d_Talent(4),
   icub3d_Talent(5),
   icub3d_Talent(6),
   icub3d_Spell('Shackle Undead'),
   icub3d_Spell('Mind Soothe'),
   icub3d_Spell('Mind Control'),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
}

icub3d_Priest_Talents = {
   -- shared --
   icub3d_Spell('Angelic Feather'),
   icub3d_Spell('Shining Force'),
   icub3d_Spell('Divine Star'),
   icub3d_Spell('Halo'),

   -- discipline --
   -- icub3d_Spell('Schism'),
   icub3d_Spell('Power Word: Solace'),
   icub3d_Spell('Shadow Covenant'),
   icub3d_Spell('Evangelism'),

   -- holy --
   icub3d_Spell('Binding Heal'),
   icub3d_Spell('Apotheosis'),
   icub3d_Spell('Holy Word: Salvation'),

   -- shadow --
   icub3d_Spell('Searing Nightmare'),
   icub3d_Spell('Psychic Horror'),
   icub3d_Spell('Shadow Crash'),
   icub3d_Spell('Damnation'),
   icub3d_Spell('Void Torrent'),
   icub3d_Spell('Surrender to Madness'),

   -- pvp --
   icub3d_Spell('Thoughtsteal'),
   icub3d_Spell('Archangel'),
   icub3d_Spell('Dark Archangel'),
   
   icub3d_Spell('Holy Ward'),   icub3d_Talent(1),
   icub3d_Talent(2),

   icub3d_Talent(3),
   icub3d_Talent(4),
   icub3d_Talent(5),
   icub3d_Talent(6),
   icub3d_Spell('Holy Word: Concentration'),
   icub3d_Spell('Divine Ascension'),
   icub3d_Spell('Greater Heal'),
   icub3d_Spell('Ray of Hope'),

   icub3d_Spell('Void Shift'),
   icub3d_Spell('Psyfiend'),
}

icub3d_Spells['PRIEST'] = {
   specs = {
	  {
		 tags = {'d', 'disc', 'discipline'},
		 talent = icub3d_Priest_Talents,
		 actionbar = icub3d_Priest_Spells,
		 talents = {
			['quest'] = {3, 3, 2, 3, 1, 2, 1},
			['dungeon'] = {2, 3, 3, 3, 1, 1, 1},
			['shell'] = {3, 3, 2, 3, 1, 1, 2},
			['arena'] = {2, 1, 3, 1, 1, 1, 1},
			['tor'] = {3, 3, 3, 1, 1, 1, 1},
		 }
	  },
	  {
		 tags = {'h', 'holy'},
		 talent = icub3d_Priest_Talents,
		 actionbar = icub3d_Priest_Spells,
		 talents = {
			['raid'] = {1, 3, 1, 3, 3, 3},
			['dungeon'] = {3, 3, 2, 2, 3, 3, 2},
			['pvp'] = {1, 3, 2, 1, 1, 1, 1},
		 }
	  },
	  {
		 tags = {'s', 'shadow', 'shadow'},
		 talent = icub3d_Priest_Talents,
		 actionbar = icub3d_Priest_Spells,
		 talents = {
			['quest'] = {3, 1, 2, 3, 2, 1, 3},
			['raid'] = {1, 1, 1, 3, 1, 3, 2},
			['dungeon'] = {2, 1, 3, 2, 3, 2, 3},
			['arena'] = {3, 3, 2, 3, 3, 1, 2},
			['bg'] = {3, 2, 2, 3, 1, 1, 1},
		 }
	  }
   }
}
