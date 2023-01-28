icub3d_Paladin_Spells= {
   -- Top Left --
   icub3d_Spell_Spec('help', 'Flash of Light', 'harm', 'Judgment', 'harm', 'Divine Storm'),
   icub3d_Spell('harm', "Avenger's Shield", 'harm', 'Wake of Ashes', 'help', 'Holy Light', 'skip', 'skip'),
   icub3d_Spell('both', 'Holy Shock', 'harm', "Templar's Verdict", 'help', 'Shield of the Righteous'),
   icub3d_Spell('harm', 'Crusader Strike', 'skip', 'skip'),
   icub3d_Spell('harm', 'Hand of Hindrance', 'help', 'Light of Dawn', 'skip', 'skip'),
   icub3d_Spell('both', 'Divine Toll', 'skip', 'skip'),
   icub3d_Spell('help', 'Word of Glory', 'skip', 'skip'),
   icub3d_Spell('harm', 'Blade of Justice', 'help', 'Bestow Faith', 'harm', 'Consecration', 'skip', 'skip'),
   icub3d_Spell('harm', 'Repentance', 'harm', 'Blinding Light', 'skip', 'skip'),
   icub3d_Spell('harm', 'Rebuke', 'skip', 'skip'),
   icub3d_Spell('harm', 'Hammer of Justice'),
   icub3d_Spell('harm', 'Hammer of Wrath', 'skip', 'skip'),

   -- Top Right -- 
   icub3d_Macro('im_racial'),
   icub3d_Spell('help', 'Eye of Tyr', 'harm', 'Judgment'),
   icub3d_Spell('help', 'Guardian of the Ancient Kings', 'help', 'Shield of the Righteous'),
   icub3d_Macro('im_health_rev'),
   icub3d_Spell('help', 'Blessing of Sacrifice', 'skip', 'skip'),
   icub3d_Spell('help', 'Blessing of Freedom', 'skip', 'skip'),
   icub3d_Spell('help', 'Blessing of Protection', 'skip', 'skip'),
   icub3d_Spell('harm', 'Consecration', 'skip', 'skip'),
   icub3d_Spell('help', 'Divine Shield', 'skip', 'skip'),
   icub3d_Spell('help', 'Lay on Hands', 'skip', 'skip'),
   icub3d_Spell('help', 'Avenging Wrath'),
   icub3d_Spell('help', 'Ardent Defender', 'help', 'Divine Protection', 'help', 'Shield of Vengeance', 'skip', 'skip'),
   
   -- Bottom Left --
   icub3d_Spell('help', 'Divine Steed'),
   icub3d_Spell('mouse', 'Light\'s Hammer', 'both', 'Holy Prism', 'skip', 'skip'),
   icub3d_Spell('help', 'Intercession'),
   icub3d_Spell('harm', 'Hand of Reckoning', 'skip', 'skip'),
   icub3d_Spell('help', 'Cleanse', 'help', 'Cleanse Toxins', 'skip', 'skip'),
   icub3d_Spell('help', 'Light of the Martyr', 'skip', 'skip'),
   icub3d_Spell('help', 'Guardian of Ancient Kings', 'help', 'Aura Mastery', 'skip', 'skip'),
   icub3d_Spell('help', 'Bastion of Light', 'help', 'Beacon of Light', 'harm', 'Final, Verdict', 'skip', 'skip'),
   icub3d_Spell('help', 'Holy Avenger', 'harm', 'Final Reckoning', 'skip', 'skip'),
   icub3d_Spell('help', 'Santified Wrath', 'help', 'Seraphim', 'skip', 'skip'),
   icub3d_Spell('help', 'Beacon of Light', 'help', 'Shield of Virtue', 'skip', 'skip'),
   icub3d_Spell('harm', 'Execution Sentence', 'help', 'Aura Mastery', 'help', 'Flash of Light', 'skip', 'skip'),

   -- Bottom Right --
   icub3d_Spell('harm', 'Exorcism', 'help', 'Blessing of Spellwarding', 'skip', 'skip'),
   icub3d_Spell('help', 'Moment of Glory', 'help', 'Barrier of Faith', 'skip', 'skip'),
   icub3d_Spell('harm', "Justicar's Vengeance", 'help', 'Eye for an Eye', 'help', "Tyr's Deliverance", 'skip', 'skip'),
   icub3d_Spell('help', 'Beacon of Faith', 'skip', 'skip'),
   icub3d_Spell('help', 'Blessing of Summer', 'skip', 'skip'),
   icub3d_Spell('help', 'Divine Favor', 'skip', 'skip'),
   icub3d_Spell('help', 'Rule of Law', 'skip', 'skip'),
   icub3d_Spell('harm', 'Turn Evil', 'skip', 'skip'),
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
