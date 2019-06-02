icub3d_Spells['PALADIN'] = {
    specs = {
        -- The tags are useful for switching but these should be in in-game order.
        {
            tags = {'h', 'holy'},
            talents = {
                ['raid'] = {2, 3, 3, 1, 1, 2, 2},
                ['dungeon'] = {1, 3, 3, 1, 3, 1, 3},
                ['pvp'] = {1, 3, 1, 1, 3, 2, 1}
            },
            pvp = {
                alternate = icub3d_Spell('help', "Gladiator's Medallion", 1, 'help', 'Adaptation', 'help', 'Relentless'),
                spells = {
                    icub3d_Spell('help', 'Divine Favor')
                }
            },
            actionbar = {
			   -- Top Left
                icub3d_Spell('harm', 'Holy Shock'),
                icub3d_Spell('help', 'Holy Shock'),
                icub3d_Spell('help', 'Flash of Light'),
                icub3d_Spell('help', 'Holy Light'),
                icub3d_Spell('help', 'Beacon of Virtue', 'help', 'Beacon of Light'),
                icub3d_Spell('harm', 'Crusader Strike'),
                icub3d_Spell('harm', 'Judgment'),
                icub3d_Spell('harm', 'Repentance', 'help', 'Blinding Light', 'harm', 'Hammer of Justice'),
                icub3d_Spell('help', 'Light of the Martyr'),
                icub3d_Spell('harm', 'Hand of Reckoning'),
                icub3d_Spell('help', 'Lay on Hands'),
                icub3d_Spell('help', 'Cleanse'),

                -- Top Right
                icub3d_Spell('help', 'Blessing of Freedom'),
                icub3d_Spell('help', 'Blessing of Protection'),
                icub3d_Spell('help', 'Blessing of Sacrifice'),
                icub3d_Spell('help', 'Bestow Faith', 'mouse', "Light's Hammer", 'help', 'Holy Light'),
                icub3d_Spell('harm', 'Hammer of Justice'),
                icub3d_Spell('help', 'Avenging Wrath'),
                icub3d_Spell('help', 'Divine Shield'),
                icub3d_Spell('help', 'Divine Protection'),

                icub3d_Spell('help', 'Avenging Crusader', 'help', 'Divine Shield'),
                icub3d_Spell('help', 'Aura Mastery'),
                icub3d_Spell('mouse', 'Consecration'),
                icub3d_Spell('mouse', 'Light of Dawn'),

                -- Bottom Left
                icub3d_Spell('mouse', 'Divine Steed'),
                icub3d_Spell("use", "Healthstone"),
                icub3d_Spell("use", "Battle Potion of Intellect"),
                icub3d_Macro('im_cloak'),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('help', 'Rule of Law', 'help', 'Light of Dawn'),
                icub3d_Spell('help', 'Holy Avenger', 'mouse', 'Holy Prism', 'help', 'Light of Dawn'),
                icub3d_PvPTalent(1),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),

                -- Bottom Row (right)
                icub3d_Skip(),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Spell('use', 'Soft Foam Sword'),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
            }
        },
        {
            tags = {'p', 'prot', 'protection'},
            pvp = {
                alternate = icub3d_Spell('help', 'Divine Shield'),
                spells = {
                    icub3d_Spell('help', 'Shield of Virtue')
                }
            },
            talents = {
                ['quest'] = {1, 2, 1, 2, 3, 1, 2},
                ['raid'] = {1, 2, 1, 2, 3, 1, 2},
                ['dungeon'] = {1, 2, 1, 2, 3, 1, 2},
                ['pvp'] = {1, 2, 1, 3, 3, 2, 2},
                ['solo'] = {1, 2, 1, 1, 3, 1, 2}
            },
            actionbar = {
			   -- Top Left
                icub3d_Spell('harm', 'Hammer of the Righteous'),
                icub3d_Spell('harm', 'Shield of the Righteous'),
                icub3d_Spell('help', 'Flash of Light'),
                icub3d_Spell('help', 'Light of the Protector'),
                icub3d_Spell('harm', "Avenger's Shield"),
				icub3d_Skip(),
                icub3d_Spell('harm', 'Judgment'),
                icub3d_Spell('harm', 'Repentance', 'help', 'Blinding Light', 'harm', 'Hammer of Justice'),
				icub3d_Skip(),
                icub3d_Spell('harm', 'Hand of Reckoning'),
                icub3d_Spell('help', 'Lay on Hands'),
				icub3d_Spell('help', 'Cleanse Toxins'),

                -- Top Right
                icub3d_Spell('help', 'Blessing of Freedom'),
                icub3d_Spell('help', 'Blessing of Protection'),
                icub3d_Spell('help', 'Blessing of Sacrifice'),
                icub3d_Spell('harm', 'Rebuke'),
                icub3d_Spell('harm', 'Hammer of Justice'),
                icub3d_Spell('help', 'Avenging Wrath'),
                icub3d_Spell('help', 'Divine Shield'),
                icub3d_Spell('help', 'Bastion of Light', 'help', 'Divine Shield'),
                icub3d_Spell('help', 'Aegis of Light', 'help', 'Divine Shield'),
                icub3d_Spell('help', 'Ardent Defender'),
                icub3d_Spell('mouse', 'Consecration'),
				icub3d_Skip(),
				
                -- Bottom Left
                icub3d_Spell('mouse', 'Divine Steed'),
                icub3d_Spell("use", "Healthstone"),
                icub3d_Spell("use", "Battle Potion of Strength"),
                icub3d_Macro('im_cloak'),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('mouse', 'Guardian of Ancient Kings', 'mouse', 'Guardian of the Forgotten Queen'),
                icub3d_Spell('mouse', 'Seraphim', 'mouse', 'Guardian of Ancient Kings'),
                icub3d_PvPTalent(1),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),

                -- Bottom Row (right)
                icub3d_Skip(),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Spell('use', 'Soft Foam Sword'),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
            }
        },
        {
            tags = {'r', 'ret', 'retribution'},
            pvp = {
                alternate = icub3d_Spell('help', 'Blessing of Protection'),
                spells = {
                    icub3d_Spell('help', 'Blessing of Sanctuary'),
                    icub3d_Spell('help', 'Hammer of Reckoning')
                }
            },
            talents = {
                ['quest'] = {1, 2, 1, 3, 2, 1, 1},
                ['raid'] = {2, 3, 3, 3, 2, 1, 2},
                ['dungeon'] = {1, 3, 3, 3, 2, 1, 2},
                ['pvp'] = {3, 3, 1, 3, 1, 1, 3}
            },
            actionbar = {
			   -- Top Left
                icub3d_Spell('harm', 'Divine Storm'),
                icub3d_Spell('harm', "Templar's Verdict"),
                icub3d_Spell('help', 'Flash of Light'),
                icub3d_Spell('harm', 'Hand of Hindrance'),
                icub3d_Spell('harm', 'Blade of Justice'),
                icub3d_Spell('harm', 'Crusader Strike'),
                icub3d_Spell('harm', 'Judgment'),
                icub3d_Spell('harm', 'Repentance', 'help', 'Blinding Light', 'harm', 'Hammer of Justice'),
                icub3d_Spell('mouse', 'Wake of Ashes', 'mouse', 'Consecration'),
                icub3d_Spell('harm', 'Hand of Reckoning'),
                icub3d_Spell('help', 'Lay on Hands'),
                icub3d_Spell('help', 'Cleanse Toxins'),

				-- Top Right
                icub3d_Spell('help', 'Blessing of Freedom'),
                icub3d_Spell('help', 'Blessing of Protection'),
				icub3d_PvPTalent(1),
                icub3d_Spell('harm', 'Rebuke'),
                icub3d_Spell('harm', 'Hammer of Justice'),
                icub3d_Spell('help', 'Avenging Wrath'),
                icub3d_Spell('help', 'Divine Shield'),
                icub3d_Spell('help', 'Eye for an Eye', 'help', 'Divine Shield'),
                icub3d_Spell('harm', 'Execution Sentence', 'harm', 'Hammer of Justice'),
                icub3d_Spell('help', 'Word of Glory', 'harm', "Justicar's Vengeance", 'help', 'Flash of Light'),
                icub3d_Spell('help', 'Inquisition', 'help', 'Crusade', 'help', 'Divine Shield'),
                icub3d_Spell('help', 'Shield of Vengeance'),


                -- Bottom Left
                icub3d_Spell('mouse', 'Divine Steed'),
                icub3d_Spell("use", "Healthstone"),
                icub3d_Spell("use", "Battle Potion of Strength"),
                icub3d_Macro('im_cloak'),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('harm', 'Hammer of Wrath', 'harm', "Templar's Verdict"),
                icub3d_PvPTalent(2),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),

                -- Bottom Row (right)
                icub3d_Skip(),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Spell('use', 'Soft Foam Sword'),
                icub3d_Spell('help', 'Greater Blessing of Kings'),
                icub3d_Spell('help', 'Greater Blessing of Wisdom'),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
            }
        }
    }
}
