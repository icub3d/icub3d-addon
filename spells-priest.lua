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
                -- Top Left
                icub3d_Spell('harm', 'Penance'),
                icub3d_Spell('help', 'Penance'),
                icub3d_Spell('help', 'Power Word: Shield'),
                icub3d_Spell('help', 'Shadow Mend', "help", "Flash Heal"),
                icub3d_Spell('harm', 'Shadow Word: Pain'),
                icub3d_Spell('harm', 'Power Word: Solace', 1, 'harm', 'Shadow Word: Pain'),
                icub3d_Spell('harm', 'Smite'),
                icub3d_Spell('harm', 'Schism', 'harm', 'Smite'),
                icub3d_Spell('help', 'Pain Suppression'),
                icub3d_Spell('help', 'Power Word: Radiance'),
				icub3d_Spell('help', 'Purify'),
                icub3d_Spell('harm', 'Dispel Magic'),
				
				-- Top Right
                icub3d_Spell('help', 'Leap of Faith'),
                icub3d_Spell('harm', 'Shadowfiend'),
                icub3d_Spell('help', 'Shadow Covenant', 'help', 'Shadowfiend'),
                icub3d_Spell('help', 'Holy Nova'),
                icub3d_Spell('help', 'Halo', 'help', 'Divine Star', 'help', 'Holy Nova'),
                icub3d_Spell('mouse', 'Angelic Feather', 'help', 'Levitate'),
                icub3d_Spell('help', 'Levitate'),
                icub3d_PvPTalent(1),
                icub3d_PvPTalent(2),
                icub3d_PvPTalent(3),
                icub3d_Spell('help', 'Evangelism', 'mouse', 'Mass Dispel'),
                icub3d_Spell('mouse', 'Mass Dispel'),
				
				-- Bottom Left
                icub3d_Spell('help', 'Shining Force', 'help', 'Leap of Faith'),
                icub3d_Spell("use", "Healthstone"),
                icub3d_Spell("use", "Battle Potion of Intellect"),
                icub3d_Spell("use", "Goblin Glider Kit"),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('harm', 'Mind Control'),
                icub3d_Spell('harm', 'Shackle Undead'),
                icub3d_Spell('harm', 'Psychic Scream'),
                icub3d_Spell('help', 'Fade'),
                icub3d_Spell('mouse', 'Power Word: Barrier'),
                icub3d_Spell('mouse', 'Rapture'),

                -- Bottom Row (right)
                icub3d_Spell('help', 'Desperate Prayer'),
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
                icub3d_Spell('use', 'Conjured Mana Bun'),
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
                alternate = icub3d_Spell('help', 'Flash Heal'),
                spells = {
                    icub3d_Spell('help', 'Holy Ward'),
                    icub3d_Spell('mouse', 'Holy Word: Concentration'),
                    icub3d_Spell('help', 'Greater Heal'),
                    icub3d_Spell('help', 'Ray of Hope'),
                    icub3d_Spell('help', 'Spirit of Redemption')
                }
            },
            actionbar = {
                -- Top Left
                icub3d_Spell('help', 'Heal'),
                icub3d_Spell('help', 'Flash Heal'),
                icub3d_Spell('help', 'Holy Word: Serenity'),
                icub3d_Spell('help', 'Prayer of Healing'),
                icub3d_Spell('mouse', 'Holy Word: Sanctify'),
                icub3d_Spell('help', 'Prayer of Mending'),
                icub3d_Spell('harm', 'Smite'),
                icub3d_Spell('harm', 'Holy Fire'),
                icub3d_Spell('help', 'Guardian Spirit'),
                icub3d_Spell('help', 'Binding Heal', 'help', 'Circle of Healing', 'help', 'Guardian Spirit'),
				icub3d_Spell('help', 'Purify'),
                icub3d_Spell('harm', 'Dispel Magic'),

				-- Top Right
                icub3d_Spell('help', 'Leap of Faith'),
                icub3d_Spell('harm', 'Holy Word: Chastise'),
                icub3d_Spell('help', 'Renew'),
                icub3d_Spell('help', 'Holy Nova'),
                icub3d_Spell('help', 'Halo', 'help', 'Divine Star', 'help', 'Holy Nova'),
                icub3d_Spell('mouse', 'Angelic Feather', 'help', 'Levitate'),
                icub3d_Spell('help', 'Levitate'),
                icub3d_PvPTalent(1),
                icub3d_PvPTalent(2),
                icub3d_PvPTalent(3),
                icub3d_Spell('help', 'Divin Hymn'),
                icub3d_Spell('mouse', 'Mass Dispel'),
				
                -- Bottom Left
                icub3d_Spell('help', 'Shining Force', 'help', 'Leap of Faith'),
                icub3d_Spell("use", "Healthstone"),
                icub3d_Spell("use", "Battle Potion of Intellect"),
                icub3d_Spell("use", "Goblin Glider Kit"),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('harm', 'Mind Control'),
                icub3d_Spell('harm', 'Shackle Undead'),
                icub3d_Spell('harm', 'Psychic Scream'),
                icub3d_Spell('help', 'Fade'),
                icub3d_Spell('help', 'Symbol of Hope'),
                icub3d_Spell('help', 'Apotheosis', "help", "Holy Word: Salvation", "help", "Symbol of Hope"),

				-- Bottom Right
                icub3d_Spell('help', 'Desperate Prayer'),
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
                icub3d_Spell('use', 'Conjured Mana Bun'),
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
                -- Top Left
                icub3d_Spell('harm', 'Mind Blast'),
                icub3d_Spell('harm', 'Mind Flay'),
                icub3d_Spell('help', 'Power Word: Shield'),
                icub3d_Spell('help', 'Shadow Mend', "help", "Flash Heal"),
                icub3d_Spell('harm', 'Shadow Word: Pain'),
                icub3d_Spell('harm', 'Vampiric Touch'),
                icub3d_Spell('harm', 'Void Eruption'),
                icub3d_Spell('harm', 'Mind Sear'),
                icub3d_Spell('harm', "Dark Void", 'harm', 'Mind Sear'),
                icub3d_Spell('harm', 'Void Torrent', 'harm', 'Mind Sear'),
                icub3d_Spell('help', 'Purify Disease'),
                icub3d_Spell('harm', 'Dispel Magic'),

				-- Top Right
                icub3d_Spell('help', 'Leap of Faith'),
                icub3d_Spell('harm', 'Shadowfiend'),
                icub3d_Spell('harm', 'Psychic Horror','harm', 'Mind Bomb', "harm", "Mind Sear"),
                icub3d_Spell('harm', 'Silence', 1),
                icub3d_Spell('harm', 'Shadow Word: Death', 'harm', 'Shadow Crash', 'harm', 'Mind Flay'),
                icub3d_Spell('mouse', 'Angelic Feather', 'help', 'Levitate'),
                icub3d_Spell('help', 'Levitate'),
				icub3d_PvPTalent(1),
                icub3d_PvPTalent(2),
                icub3d_Spell('help', 'Surrender to Madness', 'harm', 'Dark Ascension', "help", "Vampiric Embrace"),
                icub3d_Spell('help', 'Vampiric Embrace'),
                icub3d_Spell('mouse', 'Mass Dispel'),

                -- Bottom Left
                icub3d_Spell('help', 'Dispersion'),
                icub3d_Spell("use", "Healthstone"),
                icub3d_Spell("use", "Battle Potion of Intellect"),
                icub3d_Spell("use", "Goblin Glider Kit"),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('harm', 'Mind Control'),
                icub3d_Spell('harm', 'Shackle Undead'),
                icub3d_Spell('harm', 'Psychic Scream'),
                icub3d_Spell('help', 'Fade'),
				icub3d_Skip(),
				icub3d_Skip(),

				-- Bottom Right
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
                icub3d_Spell('use', 'Conjured Mana Bun'),
            }
        }
    }
}
