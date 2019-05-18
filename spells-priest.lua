icub3d_Spells['PRIEST'] = {
    specs = {
        -- The tags are useful for switching but these should be in in-game order.
        {
            tags = {'d', 'disc', 'discipline'},
            talents = {
                ['raid'] = {3, 3, 3 , 3, 3, 3, 3},
                ['dungeon'] = {3, 3, 3, 1, 1, 1, 1},
                ['dungeon-safe'] = {2, 3, 2, 1, 3, 1, 1},
                ['pvp'] = {2, 3, 3, 1, 1, 1, 1}
            },
            pvp = {
                alternate = icub3d_Spell('help', 'Penance'),
                spells = {
                    icub3d_Spell('help', 'Archangel'),
                    icub3d_Spell('help', 'Dark Archangel'),
                    icub3d_Spell('help', 'Premonition')
                }
            },
            actionbar = {
                -- Top Row
                icub3d_Spell('harm', 'Penance', 1),
                icub3d_Spell('help', 'Penance', 1),
                icub3d_Spell('help', 'Power Word: Shield', 1),
                icub3d_Spell('help', 'Shadow Mend', 1, "help", "Flash Heal"),
                icub3d_Spell('harm', 'Shadow Word: Pain', 1),
                icub3d_Spell('harm', 'Smite', 1),
                icub3d_Spell('harm', 'Penance', 2),
                icub3d_Spell('help', 'Penance', 2),
                icub3d_Spell('help', 'Power Word: Shield', 2),
                icub3d_Spell('help', 'Shadow Mend', 2, "help", "Flash Heal"),
                icub3d_Spell('harm', 'Shadow Word: Pain', 2),
                icub3d_Spell('harm', 'Smite', 2),

                -- Middle Row (left)
                icub3d_Spell('help', 'Purify', 1),
                icub3d_Spell('help', 'Purify', 2),
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 2),
                icub3d_PvPTalent(3, 1),
                icub3d_PvPTalent(3, 2),
                icub3d_Spell('harm', 'Schism', 1, 'harm', 'Shadow Word: Pain'),
                icub3d_Spell('harm', 'Schism', 2, 'harm', 'Shadow Word: Pain'),
                icub3d_Spell('harm', 'Power Word: Solace', 1, 'harm', 'Shadow Word: Pain'),
                icub3d_Spell('harm', 'Power Word: Solace', 2, 'harm', 'Shadow Word: Pain'),

                -- Middle Row (right)
                icub3d_Spell('help', 'Leap of Faith', 1),
                icub3d_Spell('help', 'Leap of Faith', 2),
                icub3d_Spell('help', 'Pain Suppression', 1),
                icub3d_Spell('help', 'Pain Suppression', 2),
                icub3d_Spell('harm', 'Shadowfiend', 1),
                icub3d_Spell('harm', 'Shadowfiend', 2),
                icub3d_Spell('help', 'Power Word: Radiance', 1),
                icub3d_Spell('help', 'Power Word: Radiance', 2),
                icub3d_Spell('help', 'Shadow Covenant', 1, 'help', 'Power Word: Shield'),
                icub3d_Spell('help', 'Shadow Covenant', 2, 'help', 'Power Word: Shield'),
                icub3d_Spell('harm', 'Dispel Magic', 1),
                icub3d_Spell('harm', 'Dispel Magic', 2),

                -- Bottom Row (left)
                icub3d_Spell('help', 'Shining Force', 1, 'help', 'Leap of Faith'),
                icub3d_Spell('help', 'Shining Force', 2, 'help', 'Leap of Faith'),
                icub3d_Skip(),
                icub3d_Spell("use", "Healthstone"),
                icub3d_Spell("use", "Battle Potion of Intellect"),
                icub3d_Spell("use", "Goblin Glider Kit"),
                icub3d_Macro('im_racial'),
                icub3d_Spell('help', "Gladiator's Medallion"),
                icub3d_Spell('harm', 'Mind Control', 1),
                icub3d_Spell('harm', 'Mind Control', 2),
                icub3d_Spell('harm', 'Shackle Undead', 1),
                icub3d_Spell('harm', 'Shackle Undead', 2),

                -- Bottom Row (right)
                icub3d_Spell('help', 'Evangelism', nil, 'mouse', 'Mass Dispel'),
                icub3d_Spell('mouse', 'Mass Dispel'),
                icub3d_Spell('help', 'Holy Nova', 1),
                icub3d_Spell('help', 'Halo', 1, 'help', 'Divine Star', 'help', 'Holy Nova'),
                icub3d_Spell('mouse', 'Angelic Feather', 1, 'help', 'Levitate'),
                icub3d_Spell('help', 'Levitate', 1),
                icub3d_Spell('harm', 'Psychic Scream'),
                icub3d_Spell('help', 'Fade'),
                icub3d_Spell('mouse', 'Power Word: Barrier'),
                icub3d_Spell('mouse', 'Rapture'),
                icub3d_Spell('help', 'Desperate Prayer'),
                icub3d_Macro('im_trinket'),
            },
        },
        {
            tags = {'h', 'holy'},
            talents = {
                ['raid'] = {1, 3, 1, 3, 3, 3, 3},
                ['dungeon'] = {2, 3, 2, 3, 1, 2, 2},
                ['pvp'] = {3, 3, 2, 2, 1, 2, 2}
            },
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
                -- Top Row
                icub3d_Spell('help', 'Heal', 1),
                icub3d_Spell('help', 'Flash Heal', 1),
                icub3d_Spell('help', 'Holy Word: Serenity', 1),
                icub3d_Spell('help', 'Prayer of Healing', 1),
                icub3d_Spell('mouse', 'Holy Word: Sanctify'),
                icub3d_Spell('help', 'Prayer of Mending', 1),
                icub3d_Spell('help', 'Heal', 2),
                icub3d_Spell('help', 'Flash Heal', 2),
                icub3d_Spell('help', 'Holy Word: Serenity', 2),
                icub3d_Spell('help', 'Prayer of Healing', 2),
                icub3d_Spell('mouse', 'Holy Word: Sanctify'),
                icub3d_Spell('help', 'Prayer of Mending', 2),

                -- Middle Row (left)
                icub3d_Spell('help', 'Purify', 1),
                icub3d_Spell('help', 'Purify', 2),
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 2),
                icub3d_PvPTalent(3, 1),
                icub3d_PvPTalent(3, 2),
                icub3d_Spell('harm', 'Holy Fire', 1),
                icub3d_Spell('harm', 'Holy Fire', 2),
                icub3d_Spell('harm', 'Smite', 1),
                icub3d_Spell('harm', 'Smite', 2),

                -- Middle Row (right)
                icub3d_Spell('help', 'Leap of Faith', 1),
                icub3d_Spell('help', 'Leap of Faith', 2),
                icub3d_Spell('help', 'Binding Heal', 1, 'help', 'Circle of Healing', 'help', 'Prayer of Mending'),
                icub3d_Spell('help', 'Binding Heal', 2, 'help', 'Circle of Healing', 'help', 'Prayer of Mending'),
                icub3d_Spell('help', 'Guardian Spirit', 1),
                icub3d_Spell('help', 'Guardian Spirit', 2),
                icub3d_Spell('harm', 'Holy Word: Chastise', 1),
                icub3d_Spell('harm', 'Holy Word: Chastise', 2),                
                icub3d_Spell('help', 'Renew', 1),
                icub3d_Spell('help', 'Renew', 2),
                icub3d_Spell('harm', 'Dispel Magic', 1),
                icub3d_Spell('harm', 'Dispel Magic', 2),

                -- Bottom Row (left)
                icub3d_Spell('help', 'Shining Force', 1, 'help', 'Leap of Faith'),
                icub3d_Spell('help', 'Shining Force', 2, 'help', 'Leap of Faith'),
                icub3d_Skip(),
                icub3d_Spell("use", "Healthstone"),
                icub3d_Spell("use", "Battle Potion of Intellect"),
                icub3d_Spell("use", "Goblin Glider Kit"),
                icub3d_Macro('im_racial'),
                icub3d_Spell('help', "Gladiator's Medallion"),
                icub3d_Spell('harm', 'Mind Control', 1),
                icub3d_Spell('harm', 'Mind Control', 2),
                icub3d_Spell('harm', 'Shackle Undead', 1),
                icub3d_Spell('harm', 'Shackle Undead', 2),

                -- Bottom Row (right)
                icub3d_Spell('help', 'Divine Hymn'),
                icub3d_Spell('mouse', 'Mass Dispel'),
                icub3d_Spell('help', 'Holy Nova', 1),
                icub3d_Spell('help', 'Halo', 1, 'help', 'Divine Star', 'help', 'Holy Nova'),
                icub3d_Spell('mouse', 'Angelic Feather', 1, 'help', 'Levitate'),
                icub3d_Spell('help', 'Levitate', 1),
                icub3d_Spell('harm', 'Psychic Scream'),
                icub3d_Spell('help', 'Fade'),
                icub3d_Spell('help', 'Symbol of Hope', 1),
                icub3d_Spell('help', 'Apotheosis', 1, "help", "Holy Word: Salvation", "help", "Symbol of Hoppe"),
                icub3d_Spell('help', 'Desperate Prayer'),
                icub3d_Macro('im_trinket'),
            }
        },
        {
            tags = {'s', 'shadow', 'shadow'},
            talents = {
                ['quest'] = {3, 3, 2, 1, 3, 2 ,2},
                ['raid'] = {3, 1, 1, 1, 1, 1, 1,},
                ['dungeon'] = {3, 1, 3, 2, 3, 1, 2},
                ['pvp'] = {2, 3, 2, 3, 1, 1, 1}
            },
            pvp = {
                alternate = icub3d_Spell('harm', 'Mind Blast'),
                spells = {
                    icub3d_Spell('help', 'Void Shift'),
                    icub3d_Spell('help', 'Psyfiend')
                }
            },
            actionbar = {
                -- Top Row
                icub3d_Spell('harm', 'Mind Blast', 1),
                icub3d_Spell('harm', 'Mind Flay', 1),
                icub3d_Spell('help', 'Power Word: Shield', 1),
                icub3d_Spell('help', 'Shadow Mend', 1, "help", "Flash Heal"),
                icub3d_Spell('harm', 'Shadow Word: Pain', 1),
                icub3d_Spell('harm', 'Vampiric Touch', 1),
                icub3d_Spell('harm', 'Mind Blast', 2),
                icub3d_Spell('harm', 'Mind flay', 2),
                icub3d_Spell('help', 'Power Word: Shield', 2),
                icub3d_Spell('help', 'Shadow Mend', 2, "help", "Flash Heal"),
                icub3d_Spell('harm', 'Shadow Word: Pain', 2),
                icub3d_Spell('harm', 'Vampiric Touch', 2),

                -- Middle Row (left)
                icub3d_Spell('help', 'Purify Disease', 1),
                icub3d_Spell('help', 'Purify Disease', 2),
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 2),
                icub3d_Spell('harm', "Dark Void", 1, 'harm', 'Mind Sear'),
                icub3d_Spell('harm', "Dark Void", 2, 'harm', 'Mind Sear'),
                icub3d_Spell('harm', 'Mind Sear', 1),
                icub3d_Spell('harm', 'Mind Sear', 2),
                icub3d_Spell('harm', 'Psychic Horror', 1,'harm', 'Mind Bomb', "harm", "Mind Sear"),
                icub3d_Spell('harm', 'Psychic Horror', 2,'harm', 'Mind Bomb', "harm", "Mind Sear"),

                -- Middle Row (right)
                icub3d_Spell('help', 'Leap of Faith', 1),
                icub3d_Spell('help', 'Leap of Faith', 2),
                icub3d_Spell('harm', 'Void Torrent', 1, 'harm', 'Mind Flay'),
                icub3d_Spell('harm', 'Void Torrent', 2, 'harm', 'Mind Flay'),
                icub3d_Spell('harm', 'Shadowfiend', 1),
                icub3d_Spell('harm', 'Shadowfiend', 2),
                icub3d_Spell('harm', 'Silence', 1),
                icub3d_Spell('harm', 'Silence', 2),
                icub3d_Spell('harm', 'Shadow Word: Death', 1, 'harm', 'Shadow Crash', 'harm', 'Mind Flay'),
                icub3d_Spell('harm', 'Shadow Word: Death', 2, 'harm', 'Shadow Crash', 'harm', 'Mind Flay'),
                icub3d_Spell('harm', 'Dispel Magic', 1),
                icub3d_Spell('harm', 'Dispel Magic', 2),

                -- Bottom Row (left)
                icub3d_Spell('harm', 'Void Eruption', 1),
                icub3d_Spell('harm', 'Void Eruption', 2),
                icub3d_Skip(),
                icub3d_Spell("use", "Healthstone"),
                icub3d_Spell("use", "Battle Potion of Intellect"),
                icub3d_Spell("use", "Goblin Glider Kit"),
                icub3d_Macro('im_racial'),
                icub3d_Spell('help', "Gladiator's Medallion"),
                icub3d_Spell('harm', 'Mind Control', 1),
                icub3d_Spell('harm', 'Mind Control', 2),
                icub3d_Spell('harm', 'Shackle Undead', 1),
                icub3d_Spell('harm', 'Shackle Undead', 2),

                -- Bottom Row (right)
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Mass Dispel'),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Angelic Feather', 1, 'help', 'Levitate'),
                icub3d_Spell('help', 'Levitate', 1),
                icub3d_Spell('harm', 'Psychic Scream'),
                icub3d_Spell('help', 'Fade'),
                icub3d_Spell('help', 'Surrender to Madness', 2, 'harm', 'Dark Ascension', "help", "Vampiric Embrace"),
                icub3d_Spell('help', 'Vampiric Embrace'),
                icub3d_Spell('help', 'Dispersion'),
                icub3d_Macro('im_trinket'),
            }
        }
    }
}
