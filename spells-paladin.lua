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
                -- These should be in the order you want them on the action bar.
                -- Top Row
                icub3d_Spell('harm', 'Holy Shock', 1),
                icub3d_Spell('harm', 'Holy Shock', 2),
                icub3d_Spell('help', 'Holy Shock', 1),
                icub3d_Spell('help', 'Holy Shock', 2),
                icub3d_Spell('help', 'Flash of Light', 1),
                icub3d_Spell('help', 'Flash of Light', 2),
                icub3d_Spell('help', 'Holy Light', 1),
                icub3d_Spell('help', 'Holy Light', 2),
                icub3d_Spell('help', 'Beacon of Virtue', 1, 'help', 'Beacon of Light'),
                icub3d_Spell('help', 'Beacon of Virtue', 2, 'help', 'Beacon of Faith', 'help', 'Beacon of Light'),
                icub3d_Spell('harm', 'Judgment', 2),
                icub3d_Spell('harm', 'Judgment', 2),
                -- Middle Left
                icub3d_Spell('help', 'Cleanse', 1),
                icub3d_Spell('help', 'Cleanse', 2),
                icub3d_Spell('harm', 'Repentance', 1, 'help', 'Blinding Light', 'harm', 'Hammer of Justice'),
                icub3d_Spell('harm', 'Repentance', 2, 'help', 'Blinding Light', 'harm', 'Hammer of Justice'),
                icub3d_Spell('help', 'Light of the Martyr', 1),
                icub3d_Spell('help', 'Light of the Martyr', 2),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('harm', 'Hand of Reckoning', 1),
                icub3d_Spell('harm', 'Hand of Reckoning', 2),
                icub3d_Spell('help', 'Lay on Hands', 1),
                icub3d_Spell('help', 'Lay on Hands', 2),
                -- Middle Right
                icub3d_Spell('help', 'Blessing of Freedom', 1),
                icub3d_Spell('help', 'Blessing of Freedom', 2),
                icub3d_Spell('help', 'Blessing of Protection', 1),
                icub3d_Spell('help', 'Blessing of Protection', 2),
                icub3d_Spell('help', 'Blessing of Sacrifice', 1),
                icub3d_Spell('help', 'Blessing of Sacrifice', 2),
                icub3d_Spell('harm', 'Crusader Strike', 1),
                icub3d_Spell('harm', 'Crusader Strike', 2),
                icub3d_Spell('help', 'Bestow Faith', 1, 'mouse', "Light's Hammer", 'help', 'Holy Light'),
                icub3d_Spell('help', 'Bestow Faith', 2, 'mouse', "Light's Hammer", 'help', 'Holy Light'),
                icub3d_Spell('harm', 'Hammer of Justice', 1),
                icub3d_Spell('harm', 'Hammer of Justice', 2),
                -- Bottom Row (left)
                icub3d_Spell('use', 'F.R.I.E.D.'),
                icub3d_Skip(),
                icub3d_Spell('macro', 'im_healthstone'),
                icub3d_Spell('use', 'Drums of Fury'),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_PvPTalent(1, 1),
                icub3d_Spell('help', 'Avenging Wrath', 1),
                icub3d_Spell('help', 'Divine Shield', 2),
                icub3d_Spell('help', 'Divine Protection', 1),
                -- Bottom Row (right)
                icub3d_Spell('help', 'Avenging Crusader', 1, 'help', 'Divine Shield'),
                icub3d_Spell('help', 'Aura Mastery'),
                icub3d_Spell('mouse', 'Consecration'),
                icub3d_Spell('mouse', 'Light of Dawn'),
                icub3d_Spell('mouse', 'Divine Steed'),
                icub3d_Spell('help', 'Rule of Law', 1, 'help', 'Light of Dawn'),
                icub3d_Spell('help', 'Holy Avenger', 1, 'mouse', 'Holy Prism', 'help', 'Light of Dawn'),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_cloak'),
                icub3d_Spell('use', 'Soft Foam Sword'),
                icub3d_Skip()
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
                ['pvp'] = {1, 2, 1, 3, 3, 2, 2}
            },
            actionbar = {
                -- These should be in the order you want them on the action bar.
                -- Top Row
                icub3d_Spell('harm', 'Hammer of the Righteous', 1),
                icub3d_Spell('harm', 'Hammer of the Righteous', 2),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('help', 'Light of the Protector', 1),
                icub3d_Spell('help', 'Light of the Protector', 2),
                icub3d_Spell('harm', 'Shield of the Righteous', 1),
                icub3d_Spell('harm', 'Shield of the Righteous', 2),
                icub3d_Spell('harm', "Avenger's Shield", 1),
                icub3d_Spell('harm', "Avenger's Shield", 2),
                icub3d_Spell('harm', 'Judgment', 1),
                icub3d_Spell('harm', 'Judgment', 2),
                -- Middle Left
                icub3d_Spell('help', 'Cleanse Toxins', 1),
                icub3d_Spell('help', 'Cleanse Toxins', 2),
                icub3d_Spell('harm', 'Repentance', 1, 'help', 'Blinding Light', 'harm', 'Hammer of Justice'),
                icub3d_Spell('harm', 'Repentance', 2, 'help', 'Blinding Light', 'harm', 'Hammer of Justice'),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('harm', 'Hand of Reckoning', 1),
                icub3d_Spell('harm', 'Hand of Reckoning', 2),
                icub3d_Spell('help', 'Lay on Hands', 1),
                icub3d_Spell('help', 'Lay on Hands', 2),
                -- Middle Right
                icub3d_Spell('help', 'Blessing of Freedom', 1),
                icub3d_Spell('help', 'Blessing of Freedom', 2),
                icub3d_Spell('help', 'Blessing of Protection', 1),
                icub3d_Spell('help', 'Blessing of Protection', 2),
                icub3d_Spell('help', 'Blessing of Sacrifice', 1),
                icub3d_Spell('help', 'Blessing of Sacrifice', 2),
                icub3d_Spell('harm', 'Rebuke', 1),
                icub3d_Spell('harm', 'Rebuke', 2),
                icub3d_Spell('help', 'Flash of Light', 1),
                icub3d_Spell('help', 'Flash of Light', 2),
                icub3d_Spell('harm', 'Hammer of Justice', 1),
                icub3d_Spell('harm', 'Hammer of Justice', 2),
                -- Bottom Row (left)
                icub3d_Spell('use', 'F.R.I.E.D.'),
                icub3d_Skip(),
                icub3d_Spell('macro', 'im_healthstone'),
                icub3d_Spell('use', 'Drums of Fury'),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_PvPTalent(1, 1),
                icub3d_Spell('help', 'Avenging Wrath', 1),
                icub3d_Spell('help', 'Divine Shield', 2),
                icub3d_Spell('help', 'Bastion of Light', 1, 'help', 'Divine Shield'),
                -- Bottom Row (right)
                icub3d_Spell('help', 'Aegis of Light', 1, 'help', 'Divine Shield'),
                icub3d_Spell('help', 'Ardent Defender', 1),
                icub3d_Spell('mouse', 'Consecration'),
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Divine Steed'),
                icub3d_Spell('mouse', 'Guardian of Ancient Kings', 1, 'mouse', 'Guardian of the Forgotten Queen'),
                icub3d_Spell('mouse', 'Seraphim', 1, 'mouse', 'Guardian of Ancient Kings'),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_cloak'),
                icub3d_Spell('use', 'Soft Foam Sword'),
                icub3d_Skip()
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
                -- These should be in the order you want them on the action bar.
                -- Top Row
                icub3d_Spell('harm', 'Crusader Strike', 1),
                icub3d_Spell('harm', 'Crusader Strike', 2),
                icub3d_Spell('harm', 'Blade of Justice', 1),
                icub3d_Spell('harm', 'Blade of Justice', 2),
                icub3d_Spell('harm', "Templar's Verdict", 1),
                icub3d_Spell('harm', "Templar's Verdict", 2),
                icub3d_Spell('harm', 'Hand of Hindrance', 1),
                icub3d_Spell('harm', 'Hand of Hindrance', 2),
                icub3d_Spell('harm', 'Divine Storm', 1),
                icub3d_Spell('harm', 'Divine Storm', 2),
                icub3d_Spell('harm', 'Judgment', 1),
                icub3d_Spell('harm', 'Judgment', 2),
                -- Middle Left
                icub3d_Spell('help', 'Cleanse Toxins', 1),
                icub3d_Spell('help', 'Cleanse Toxins', 2),
                icub3d_Spell('harm', 'Repentance', 1, 'help', 'Blinding Light', 'harm', 'Hammer of Justice'),
                icub3d_Spell('harm', 'Repentance', 2, 'help', 'Blinding Light', 'harm', 'Hammer of Justice'),
                icub3d_Spell('harm', 'Execution Sentence', 1, 'harm', 'Hammer of Justice'),
                icub3d_Spell('harm', 'Execution Sentence', 2, 'harm', 'Hammer of Justice'),
                icub3d_Spell('help', 'Word of Glory', 1, 'harm', "Justicar's Vengeance", 'help', 'Flash of Light'),
                icub3d_Spell('help', 'Word of Glory', 2, 'harm', "Justicar's Vengeance", 'help', 'Flash of Light'),
                icub3d_Spell('harm', 'Hand of Reckoning', 1),
                icub3d_Spell('harm', 'Hand of Reckoning', 2),
                icub3d_Spell('help', 'Lay on Hands', 1),
                icub3d_Spell('help', 'Lay on Hands', 2),
                -- Middle Right
                icub3d_Spell('help', 'Blessing of Freedom', 1),
                icub3d_Spell('help', 'Blessing of Freedom', 2),
                icub3d_Spell('help', 'Blessing of Protection', 1),
                icub3d_Spell('help', 'Blessing of Protection', 2),
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_Spell('harm', 'Rebuke', 1),
                icub3d_Spell('harm', 'Rebuke', 2),
                icub3d_Spell('help', 'Flash of Light', 1),
                icub3d_Spell('help', 'Flash of Light', 2),
                icub3d_Spell('harm', 'Hammer of Justice', 1),
                icub3d_Spell('harm', 'Hammer of Justice', 2),
                -- Bottom Row (left)
                icub3d_Spell('use', 'F.R.I.E.D.'),
                icub3d_Skip(),
                icub3d_Spell('macro', 'im_healthstone'),
                icub3d_Spell('use', 'Drums of Fury'),
                icub3d_Spell('harm', 'Hammer of Wrath', 1, 'harm', "Templar's Verdict"),
                icub3d_Spell('harm', 'Hammer of Wrath', 2, 'harm', "Templar's Verdict"),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_PvPTalent(2, 1),
                icub3d_Spell('help', 'Avenging Wrath', 1),
                icub3d_Spell('help', 'Divine Shield', 2),
                icub3d_Spell('help', 'Eye for an Eye', 1, 'help', 'Divine Shield'),
                -- Bottom Row (right)
                icub3d_Spell('help', 'Inquisition', 1, 'help', 'Crusade', 'help', 'Divine Shield'),
                icub3d_Spell('help', 'Shield of Vengeance'),
                icub3d_Spell('mouse', 'Wake of Ashes', 1, 'mouse', 'Consecration'),
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Divine Steed'),
                icub3d_Spell('help', 'Greater Blessing of Kings', 1),
                icub3d_Spell('help', 'Greater Blessing of Wisdom', 1),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_cloak'),
                icub3d_Spell('use', 'Soft Foam Sword'),
                icub3d_Skip()
            }
        }
    }
}
