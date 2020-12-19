icub3d_Priest_Spells = {
   icub3d_Spell('help', 'Shadow Mend', 'help', 'Flash Heal'), -- D, H, S
   icub3d_Spell('help', 'Power Word: Shield'), -- D, H, S
   icub3d_Spell('harm', 'Smite', 'harm', 'Holy Fire', 'harm', 'Mind Flay'), -- D, H, S
   icub3d_Spell('harm', 'Penance', 'help', 'Heal', 'skip', 'skip'), -- D, H
   icub3d_Spell('help', 'Penance', 'help', 'Prayer of Mending', 'skip', 'skip'), -- D, H
   icub3d_Spell('help', 'Renew', 'harm', 'Devouring Plague', 'skip', 'skip'), -- H, S
   icub3d_Spell('help', 'Holy Word: Sanctify', 'skip', 'skip'), -- H
   icub3d_Spell('help', 'Power Word: Radiance', 'help', 'Prayer of Healing', 'skip', 'skip'), -- D, H
   icub3d_Spell('help', 'Holy Nova', 'harm', 'Vampiric Touch'), -- D, H, S
   icub3d_Spell('harm', 'Silence', 'harm', 'Holy Word: Chastise', 'skip', 'skip'), -- H, S
   icub3d_Spell('help', 'Purify', 'harm', 'Void Eruption', 'skip', 'skip'),
   icub3d_Spell('harm', 'Dispel Magic'),
   icub3d_Spell('help', 'Circle of Healing', 'harm', 'Mind Sear'),
   icub3d_Spell('help', 'Holy Word: Serenity', 'skip', 'skip'), -- H
   icub3d_Spell('harm', 'Mind Blast'),
   icub3d_Spell('harm', 'Shadow Word: Pain'),
   icub3d_Spell('harm', 'Shadow Word: Death'),
   icub3d_Talent(1),
   icub3d_Talent(2),
   icub3d_Talent(3),
   icub3d_Talent(4),
   icub3d_Talent(5),
   icub3d_Talent(6),
   icub3d_Talent(7),


   icub3d_Spell('help', 'Leap of Faith'),
   icub3d_Spell('mouse', 'Mass Dispel'),
   icub3d_Spell('help', 'Rapture', 'help', 'Symbol of Hope', 'help', 'Vampiric Embrace'),
   icub3d_Spell('help', 'Pain Suppression', 'help', 'Dispersion', 'help', 'Guardian Spirit'),
   icub3d_Spell('harm', 'Shadowfiend', 'harm', 'Lightspawn', 'skip', 'skip'),
   icub3d_Spell('mouse', 'Power Word: Barrier', 'harm', 'Divine Hymn', 'harm', 'Void Eruption'),
   icub3d_Spell('help', 'Desperate Prayer'),
   icub3d_Spell('help', 'Levitate'),
   icub3d_Spell('help', 'Fade'),
   icub3d_Spell('harm', 'Mind Soothe'),
   icub3d_Spell('harm', 'Psychic Scream'),
   icub3d_Spell('harm', 'Shackle Undead'),
   icub3d_Spell('harm', 'Mind Control'),
   icub3d_Spell('help', 'Power Infusion'),
   icub3d_Macro('im_racial'),
   icub3d_Spell('help', 'Levitate'),
   icub3d_Skip(), -- TODO special 1
   icub3d_Skip(), -- TODO special 2
   icub3d_Skip(),
   icub3d_Macro('im_trinket'),
   icub3d_Spell('help', 'Resurrection'),
   icub3d_Spell('harm', 'Power Word: Fortitude'),
   icub3d_Spell('harm', 'Mind Vision'),
   icub3d_Spell('harm', 'Shadowform', 'help', 'Mass Resurrection'),
}

icub3d_Priest_Talents = {
   -- shared --
   icub3d_Spell('mouse', 'Angelic Feather'),
   icub3d_Spell('help', 'Shining Force'),
   icub3d_Spell('harm', 'Divine Star'),
   icub3d_Spell('help', 'Halo'),

   -- discipline --
   icub3d_Spell('harm', 'Schism'),
   icub3d_Spell('harm', 'Power Word: Solace'),
   icub3d_Spell('help', 'Shadow Covenant'),
   icub3d_Spell('help', 'Evangelism'),

   -- holy --
   icub3d_Spell('help', 'Binding Heal'),
   icub3d_Spell('harm', 'Apotheosis'),
   icub3d_Spell('harm', 'Holy Word: Salvation'),

   -- shadow --
   icub3d_Spell('harm', 'Searing Nightmare'),
   icub3d_Spell('harm', 'Psychic Horror'),
   icub3d_Spell('mouse', 'Shadow Crash'),
   icub3d_Spell('harm', 'Damnation'),
   icub3d_Spell('harm', 'Void Torrent'),
   icub3d_Spell('harm', 'Surrender to Madness'),

   -- pvp --
   icub3d_Spell('harm', 'Thoughtsteal'),
   icub3d_Spell('help', 'Archangel'),
   icub3d_Spell('help', 'Dark Archangel'),
   
   icub3d_Spell('help', 'Holy Ward'),
   icub3d_Spell('mouse', 'Holy Word: Concentration'),
   icub3d_Spell('help', 'Divine Ascension'),
   icub3d_Spell('help', 'Greater Heal'),
   icub3d_Spell('help', 'Ray of Hope'),

   icub3d_Spell('help', 'Void Shift'),
   icub3d_Spell('harm', 'Psyfiend'),
}

icub3d_Spells['PRIEST'] = {
   specs = {
	  {
		 tags = {'d', 'disc', 'discipline'},
		 talent = icub3d_Priest_Talents,
		 actionbar = icub3d_Priest_Spells,
		 talents = {
			['raid'] = {3, 3, 3, 3, 1, 3, 3},
			['dungeon'] = {2, 3, 3, 3, 1, 1, 1},
			['shell'] = {3, 3, 2, 3, 1, 3, 2},
			['pvp'] = {3, 1, 3, 1, 1, 1, 1},
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
