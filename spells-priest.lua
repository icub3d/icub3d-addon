icub3d_Spells['PRIEST'] = {
    specs = {
        -- The tags are useful for switching but these should be in in-game order.
        {
            tags = {'d', 'disc', 'discipline'},
            pvp = {
                alternate = icub3d_Spell('help', 'Penance'),
                spells = {
                    icub3d_Spell('help', 'Archangel'),
                    icub3d_Spell('help', 'Dark Archangel'),
                    icub3d_Spell('help', 'Premonition')
                }
            },
            actionbar = {
                -- These should be in the order you want them on the action bar.
                -- Top Row
                icub3d_Spell('harm', 'Penance', 1),
                icub3d_Spell('harm', 'Penance', 2),
                icub3d_Spell('help', 'Penance', 1),
                icub3d_Spell('help', 'Penance', 2),
                icub3d_Spell('help', 'Power Word: Shield', 1),
                icub3d_Spell('help', 'Power Word: Shield', 2),
                icub3d_Spell('help', 'Shadow Mend', 1),
                icub3d_Spell('help', 'Shadow Mend', 2),
                icub3d_Spell('harm', 'Shadow Word: Pain', 1),
                icub3d_Spell('harm', 'Shadow Word: Pain', 2),
                icub3d_Spell('harm', 'Smite', 1),
                icub3d_Spell('harm', 'Smite', 2),
                -- Middle Row (left)
                icub3d_Spell('harm', 'Dispel Magic', 1),
                icub3d_Spell('harm', 'Dispel Magic', 2),
                icub3d_Spell('help', 'Purify', 1),
                icub3d_Spell('help', 'Purify', 2),
                icub3d_Spell('help', 'Power Word: Radiance', 1),
                icub3d_Spell('help', 'Power Word: Radiance', 2),
                icub3d_Spell('help', 'Pain Suppression', 1),
                icub3d_Spell('help', 'Pain Suppression', 2),
                icub3d_Spell('harm', 'Schism', 1, 'harm', 'Shadow Word: Pain'),
                icub3d_Spell('harm', 'Schism', 2, 'harm', 'Shadow Word: Pain'),
                icub3d_Spell('harm', 'Power Word: Solace', 1, 'harm', 'Shadow Word: Pain'),
                icub3d_Spell('harm', 'Power Word: Solace', 2, 'harm', 'Shadow Word: Pain'),
                -- Middle Row (right)
                icub3d_Spell('help', 'Leap of Faith', 1),
                icub3d_Spell('help', 'Leap of Faith', 2),
                icub3d_Spell('help', 'Shadow Covenant', 1, 'help', 'Power Word: Shield'),
                icub3d_Spell('help', 'Shadow Covenant', 2, 'help', 'Power Word: Shield'),
                icub3d_Spell('harm', 'Shadowfiend', 1),
                icub3d_Spell('harm', 'Shadowfiend', 2),
                icub3d_Spell('help', 'Shining Force', 1, 'help', 'Leap of Faith'),
                icub3d_Spell('help', 'Shining Force', 2, 'help', 'Leap of Faith'),
                icub3d_Spell('help', 'Levitate', 1),
                icub3d_Spell('mouse', 'Angelic Feather', 1, 'help', 'Levitate'),
                icub3d_Spell('help', 'Holy Nova', 1),
                icub3d_Spell('help', 'Halo', 1, 'help', 'Divine Star', 'help', 'Rapture'),
                -- Bottom Row (left)
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(3, 1),
                icub3d_Spell('harm', 'Mind Control', 1),
                icub3d_Spell('harm', 'Mind Control', 2),
                icub3d_Spell('harm', 'Shackle Undead', 1),
                icub3d_Spell('harm', 'Shackle Undead', 2),
                icub3d_Spell('help', 'Evangelism', nil, 'mouse', 'Mass Dispel'),
                icub3d_Skip(),
                -- Bottom Row (right)
                icub3d_Macro('im_racial'),
                icub3d_Spell('help', "Gladiator's Medallion"),
                icub3d_Spell('help', 'Fade'),
                icub3d_Spell('mouse', 'Power Word: Barrier'),
                icub3d_Spell('mouse', 'Rapture'),
                icub3d_Spell('mouse', 'Mass Dispel'),
                icub3d_Spell('harm', 'Psychic Scream'),
                icub3d_Spell('help', 'Desperate Prayer'),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_cloak'),
                icub3d_Skip()
            }
        },
        {
            tags = {'h', 'holy'},
            pvp = {
                alternate = icub3d_Spell('help', 'Penance'),
                spells = {
                    icub3d_Spell('help', 'Holy Ward'),
                    icub3d_Spell('mouse', 'Holy Word: Concentration'),
                    icub3d_Spell('help', 'Greater Heal'),
                    icub3d_Spell('help', 'Ray of Hope'),
                    icub3d_Spell('help', 'Spirit of Redemption')
                }
            },
            actionbar = {
                -- These should be in the order you want them on the action bar.
                -- Top Row
                icub3d_Spell('help', 'Heal', 1),
                icub3d_Spell('help', 'Heal', 2),
                icub3d_Spell('help', 'Prayer of Mending', 1),
                icub3d_Spell('help', 'Prayer of Mending', 2),
                icub3d_Spell('help', 'Holy Word: Serenity', 1),
                icub3d_Spell('help', 'Holy Word: Serentiy', 2),
                icub3d_Spell('help', 'Flash Heal', 1),
                icub3d_Spell('help', 'Flash Heal', 2),
                icub3d_Spell('harm', 'Holy Fire', 1),
                icub3d_Spell('harm', 'Holy Fire', 2),
                icub3d_Spell('harm', 'Smite', 1),
                icub3d_Spell('harm', 'Smite', 2),
                -- Middle Row (left)
                icub3d_Spell('harm', 'Dispel Magic', 1),
                icub3d_Spell('harm', 'Dispel Magic', 2),
                icub3d_Spell('help', 'Purify', 1),
                icub3d_Spell('help', 'Purify', 2),
                icub3d_Spell('help', 'Prayer of Healing', 1),
                icub3d_Spell('help', 'Prayer of Healing', 2),
                icub3d_Spell('help', 'Renew', 1),
                icub3d_Spell('help', 'Renew', 2),
                icub3d_Spell('help', 'Binding Heal', 1, 'help', 'Circle of Healing', 'help', 'Prayer of Mending'),
                icub3d_Spell('help', 'Binding Heal', 2, 'help', 'Circle of Healing', 'help', 'Prayer of Mending'),
                icub3d_Spell('help', 'Guardian Spirit', 1),
                icub3d_Spell('help', 'Guardian Spirit', 2),
                -- Middle Row (right)
                icub3d_Spell('help', 'Leap of Faith', 1),
                icub3d_Spell('help', 'Leap of Faith', 2),
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_Spell('harm', 'Holy Word: Chastise', 1),
                icub3d_Spell('harm', 'Holy Word: Chastise', 2),
                icub3d_Spell('help', 'Shining Force', 1, 'help', 'Leap of Faith'),
                icub3d_Spell('help', 'Shining Force', 2, 'help', 'Leap of Faith'),
                icub3d_Spell('help', 'Levitate', 1),
                icub3d_Spell('mouse', 'Angelic Feather', 1, 'help', 'Levitate'),
                icub3d_Spell('help', 'Holy Nova', 1),
                icub3d_Skip(),
                -- Bottom Row (left)
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(3, 1),
                icub3d_PvPTalent(3, 1),
                icub3d_Spell('harm', 'Mind Control', 1),
                icub3d_Spell('harm', 'Mind Control', 2),
                icub3d_Spell('harm', 'Shackle Undead', 1),
                icub3d_Spell('harm', 'Shackle Undead', 2),
                icub3d_Spell('help', 'Symbol of Hope', 1),
                icub3d_Spell('help', 'Apotheosis'),
                -- Bottom Row (right)
                icub3d_Macro('im_racial'),
                icub3d_Spell('help', "Gladiator's Medallion"),
                icub3d_Spell('help', 'Fade'),
                icub3d_Spell('mouse', 'Holy Word: Sanctify'),
                icub3d_Spell('help', 'Divine Hymn'),
                icub3d_Spell('mouse', 'Mass Dispel'),
                icub3d_Spell('harm', 'Psychic Scream'),
                icub3d_Spell('help', 'Desperate Prayer'),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_cloak'),
                icub3d_Skip()
            }
        },
        {
            tags = {'s', 'shadow', 'shadow'},
            pvp = {
                alternate = icub3d_Spell('harm', 'Mind Blast'),
                spells = {
                    icub3d_Spell('help', 'Void Shift'),
                    icub3d_Spell('help', 'Psyfiend'),
                    icub3d_Spell('help', 'Premonition')
                }
            },
            actionbar = {
                -- These should be in the order you want them on the action bar.
                -- Top Row
                icub3d_Spell('harm', 'Mind Blast', 1),
                icub3d_Spell('harm', 'Mind Blast', 2),
                icub3d_Spell('harm', 'Mind Flay', 1),
                icub3d_Spell('harm', 'Mind flay', 2),
                icub3d_Spell('help', 'Power Word: Shield', 1),
                icub3d_Spell('help', 'Power Word: Shield', 2),
                icub3d_Spell('help', 'Shadow Mend', 1),
                icub3d_Spell('help', 'Shadow Mend', 2),
                icub3d_Spell('harm', 'Shadow Word: Pain', 1),
                icub3d_Spell('harm', 'Shadow Word: Pain', 2),
                icub3d_Spell('harm', 'Mind Sear', 1),
                icub3d_Spell('harm', 'Mind Sear', 2),
                -- Middle Row (left)
                icub3d_Spell('harm', 'Dispel Magic', 1),
                icub3d_Spell('harm', 'Dispel Magic', 2),
                icub3d_Spell('help', 'Purify Disease', 1),
                icub3d_Spell('help', 'Purify Disease', 2),
                icub3d_Spell('harm', 'Mind Bomb', 1),
                icub3d_Spell('harm', 'Mind Bomb', 2),
                icub3d_Spell('harm', 'Vampiric Touch', 1),
                icub3d_Spell('harm', 'Vampiric Touch', 2),
                icub3d_Spell('harm', 'Void Eruption', 1),
                icub3d_Spell('harm', 'Void Eruption', 2),
                icub3d_Spell('harm', 'Shadow Word: Death', 1, 'harm', 'Shadow Crush', 'harm', 'Mind Flay'),
                icub3d_Spell('harm', 'Shadow Word: Death', 2, 'harm', 'Shadow Crush', 'harm', 'Mind Flay'),
                -- Middle Row (right)
                icub3d_Spell('help', 'Leap of Faith', 1),
                icub3d_Spell('help', 'Leap of Faith', 2),
                icub3d_Spell('harm', 'Void Torrent', 1, 'harm', 'Mind Flay'),
                icub3d_Spell('harm', 'Void Torrent', 2, 'harm', 'Mind Flay'),
                icub3d_Spell('harm', 'Shadowfiend', 1),
                icub3d_Spell('harm', 'Shadowfiend', 2),
                icub3d_Spell('harm', 'Silence', 1),
                icub3d_Spell('harm', 'Silence', 2),
                icub3d_Spell('help', 'Levitate', 1),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Skip(),
                -- Bottom Row (left)
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 2),
                icub3d_PvPTalent(3, 1),
                icub3d_PvPTalent(3, 2),
                icub3d_Spell('harm', 'Mind Control', 1),
                icub3d_Spell('harm', 'Mind Control', 2),
                icub3d_Spell('harm', 'Shackle Undead', 1),
                icub3d_Spell('harm', 'Shackle Undead', 2),
                icub3d_Spell('help', 'Dispersion', nil),
                icub3d_Skip(),
                -- Bottom Row (right)
                icub3d_Macro('im_racial'),
                icub3d_Spell('help', "Gladiator's Medallion"),
                icub3d_Spell('help', 'Fade'),
                icub3d_Spell('help', 'Surrender to Madness', 1, 'harm', 'Dark Ascension'),
                icub3d_Spell('help', 'Surrender to Madness', 2, 'harm', 'Dark Ascension'),
                icub3d_Spell('mouse', 'Mass Dispel'),
                icub3d_Skip(),
                icub3d_Spell('help', 'Vampiric Embrace'),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_cloak'),
                icub3d_Skip()
            }
        }
    }
}