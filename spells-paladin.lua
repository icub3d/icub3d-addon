local normal = {
   -- Top Left --
   ICUB3D_SpellSpec('Flash of Light', 'Judgment', 'Divine Storm'),
   ICUB3D_Spell("Avenger's Shield", 'Wake of Ashes', 'Holy Light'),
   ICUB3D_Spell('Holy Shock', "Templar's Verdict", 'Shield of the Righteous'),
   ICUB3D_Spell('Crusader Strike'),
   ICUB3D_Spell('Hand of Hindrance', 'Light of Dawn'),
   ICUB3D_Spell('Divine Toll'),
   ICUB3D_Spell('Word of Glory'),
   ICUB3D_Spell('Blade of Justice', 'Bestow Faith', 'Consecration'),
   ICUB3D_Spell('Repentance', 'Blinding Light'),
   ICUB3D_Spell('Rebuke'),
   ICUB3D_Spell('Hammer of Justice'),
   ICUB3D_Spell('Hammer of Wrath')
}

local topRight = {
   -- Top Right -- 
   ICUB3D_Macro('im_racial'),
   ICUB3D_Spell('Eye of Tyr', 'Judgment'),
   ICUB3D_Spell('Guardian of the Ancient Kings', 'Shield of the Righteous'),
   ICUB3D_Macro('im_health_rev'),
   ICUB3D_Spell('Blessing of Sacrifice'),
   ICUB3D_Spell('Blessing of Freedom'),
   ICUB3D_Spell('Blessing of Protection'),
   ICUB3D_Spell('Consecration'),
   ICUB3D_Spell('Divine Shield'),
   ICUB3D_Spell('Lay on Hands'),
   ICUB3D_Spell('Avenging Wrath'),
   ICUB3D_Spell('Ardent Defender', 'Divine Protection', 'Shield of Vengeance')
}
   
local bottomLeft = {
   -- Bottom Left --
   ICUB3D_Spell('Divine Steed'),
   ICUB3D_Spell('Light\'s Hammer', 'Holy Prism'),
   ICUB3D_Spell('Intercession'),
   ICUB3D_Spell('Hand of Reckoning'),
   ICUB3D_Spell('Cleanse', 'Cleanse Toxins'),
   ICUB3D_Spell('Light of the Martyr'),
   ICUB3D_Spell('Guardian of Ancient Kings', 'Aura Mastery'),
   ICUB3D_Spell('Bastion of Light', 'Beacon of Light', 'Final, Verdict'),
   ICUB3D_Spell('Holy Avenger', 'Final Reckoning'),
   ICUB3D_Spell('Santified Wrath', 'Seraphim'),
   ICUB3D_Spell('Beacon of Light', 'Shield of Virtue'),
   ICUB3D_Spell('Execution Sentence', 'Aura Mastery', 'Flash of Light')
}

local bottomRight = {
   -- Bottom Right --
   ICUB3D_Spell('Exorcism', 'Blessing of Spellwarding'),
   ICUB3D_Spell('Moment of Glory', 'Barrier of Faith'),
   ICUB3D_Spell("Justicar's Vengeance", 'Eye for an Eye', "Tyr's Deliverance"),
   ICUB3D_Spell('Beacon of Faith'),
   ICUB3D_Spell('Blessing of Summer'),
   ICUB3D_Spell('Divine Favor'),
   ICUB3D_Spell('Rule of Law'),
   ICUB3D_Spell('Turn Evil'),
   ICUB3D_Spell('Sense Undead'),
   ICUB3D_Spell('Redemption'),
   ICUB3D_Spell('Contemplation'),
   ICUB3D_Skip()
}

local icub3d_Paladin_Spells = ICUB3D_joinSpells(
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

ICUB3D_Spells['PALADIN'] = {
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
