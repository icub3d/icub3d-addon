icub3d_Paladin_Spells= {
   -- Top Left --
   icub3d_Spell_Spec('Flash of Light', 'Judgment', 'Divine Storm'),
   icub3d_Spell("Avenger's Shield", 'Wake of Ashes', 'Holy Light'),
   icub3d_Spell('Holy Shock', "Templar's Verdict", 'Shield of the Righteous'),
   icub3d_Spell('Crusader Strike'),
   icub3d_Spell('Hand of Hindrance', 'Light of Dawn'),
   icub3d_Spell('Divine Toll'),
   icub3d_Spell('Word of Glory'),
   icub3d_Spell('Blade of Justice', 'Bestow Faith', 'Consecration'),
   icub3d_Spell('Repentance', 'Blinding Light'),
   icub3d_Spell('Rebuke'),
   icub3d_Spell('Hammer of Justice'),
   icub3d_Spell('Hammer of Wrath'),

   -- Top Right -- 
   icub3d_Macro('im_racial'),
   icub3d_Spell('Eye of Tyr', 'Judgment'),
   icub3d_Spell('Guardian of the Ancient Kings', 'Shield of the Righteous'),
   icub3d_Macro('im_health_rev'),
   icub3d_Spell('Blessing of Sacrifice'),
   icub3d_Spell('Blessing of Freedom'),
   icub3d_Spell('Blessing of Protection'),
   icub3d_Spell('Consecration'),
   icub3d_Spell('Divine Shield'),
   icub3d_Spell('Lay on Hands'),
   icub3d_Spell('Avenging Wrath'),
   icub3d_Spell('Ardent Defender', 'Divine Protection', 'Shield of Vengeance'),
   
   -- Bottom Left --
   icub3d_Spell('Divine Steed'),
   icub3d_Spell('Light\'s Hammer', 'Holy Prism'),
   icub3d_Spell('Intercession'),
   icub3d_Spell('Hand of Reckoning'),
   icub3d_Spell('Cleanse', 'Cleanse Toxins'),
   icub3d_Spell('Light of the Martyr'),
   icub3d_Spell('Guardian of Ancient Kings', 'Aura Mastery'),
   icub3d_Spell('Bastion of Light', 'Beacon of Light', 'Final, Verdict'),
   icub3d_Spell('Holy Avenger', 'Final Reckoning'),
   icub3d_Spell('Santified Wrath', 'Seraphim'),
   icub3d_Spell('Beacon of Light', 'Shield of Virtue'),
   icub3d_Spell('Execution Sentence', 'Aura Mastery', 'Flash of Light'),

   -- Bottom Right --
   icub3d_Spell('Exorcism', 'Blessing of Spellwarding'),
   icub3d_Spell('Moment of Glory', 'Barrier of Faith'),
   icub3d_Spell("Justicar's Vengeance", 'Eye for an Eye', "Tyr's Deliverance"),
   icub3d_Spell('Beacon of Faith'),
   icub3d_Spell('Blessing of Summer'),
   icub3d_Spell('Divine Favor'),
   icub3d_Spell('Rule of Law'),
   icub3d_Spell('Turn Evil'),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
}

icub3d_Spells['PALADIN'] = {
   specs = {
	  -- The tags are useful for switching but these should be in in-game order.
	  {
		 tags = {'h', 'holy'},
		 actionbar = icub3d_Paladin_Spells,
	  },
	  {
		 tags = {'p', 'prot', 'protection'},
		 actionbar = icub3d_Paladin_Spells,
	  },
	  {
		 tags = {'r', 'ret', 'retribution'},
		 actionbar = icub3d_Paladin_Spells,
	  }
   }
}
