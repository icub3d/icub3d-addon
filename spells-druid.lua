icub3d_Spells['DRUID'] = {
    specs = {
        {
            tags = {'b', 'bal', 'balance'},
            pvp = {
                alternate = icub3d_Spell('harm', 'Moonfire'),
                spells = {
                    icub3d_Spell('harm', 'Faerie Swarm'),
                    icub3d_Spell('harm', 'Cyclone'),
                    icub3d_Spell('help', 'Thorns')
                }
            },
            actionbar = {
                -- Top Row
                icub3d_Spell('harm', 'Lunar Strike', 1),
                icub3d_Spell('harm', 'Lunar Strike', 2),
                icub3d_Spell('harm', 'Solar Wrath', 1),
                icub3d_Spell('harm', 'Solar Wrath', 2),
                icub3d_Spell('harm', 'Sunfire', 1),
                icub3d_Spell('harm', 'Sunfire', 2),
                icub3d_Spell('harm', 'Starfall', 1),
                icub3d_Spell('harm', 'Starfall', 2),
                icub3d_Spell('harm', 'Starsurge', 1),
                icub3d_Spell('harm', 'Starsurge', 2),
                icub3d_Spell('harm', 'New Moon', 1, 'harm', 'Fury of Elune'),
                icub3d_Spell('harm', 'New Moon', 2, 'harm', 'Fury of Elune'),
                -- Middle Left
                icub3d_Spell('help', 'Remove Corruption', 1),
                icub3d_Spell('help', 'Remove Corruption', 2),
                icub3d_Spell('harm', 'Typhoon', 1, 'harm', 'Mass Entanglement', 'harm', 'Mighty Bash'),
                icub3d_Spell('harm', 'Typhoon', 2, 'harm', 'Mass Entanglement', 'harm', 'Mighty Bash'),
                icub3d_Spell('harm', 'Entangling Roots', 1),
                icub3d_Spell('harm', 'Entangling Roots', 2),
                icub3d_Spell('mouse', 'Wild Charge', 1, 'help', 'Renewal', 'help', 'Tiger Dash'),
                icub3d_Spell('mouse', 'Wild Charge', 2, 'help', 'Renewal', 'help', 'Tiger Dash'),
                icub3d_Spell('help', 'Innervate', 1),
                icub3d_Spell('help', 'Innervate', 2),
                icub3d_Spell('harm', 'Hibernate', 1),
                icub3d_Spell('harm', 'Soothe', 1),
                -- Middle Right
                icub3d_Spell('harm', 'Stellar Flare', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Stellar Flare', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Moonfire', 1),
                icub3d_Spell('harm', 'Moonfire', 2),
                icub3d_Spell('help', 'Wild Growth', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Wild Growth', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Swiftmend', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Swiftmend', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Rejuvenation', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Rejuvenation', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Regrowth', 1),
                icub3d_Spell('help', 'Regrowth', 2),
                -- Bottom Left
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 2),
                icub3d_PvPTalent(3, 1),
                icub3d_PvPTalent(3, 2),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('help', 'Force of Nature', 2),
                icub3d_Spell('help', 'Dash', 1),
                icub3d_Spell('help', 'Prowl', 1),
                icub3d_Macro('im_cloak'),
                -- Bottom Right
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_trinket'),
                icub3d_Spell('help', 'Rebirth', 2),
                icub3d_Spell('help', 'Solar Beam', 2),
                icub3d_Spell('help', 'Celestial Alignment', 2),
                icub3d_Spell('help', 'Barkskin', 1),
                icub3d_Spell('help', 'Flap', 2),
                icub3d_Spell('mouse', 'Bear Form', 2),
                icub3d_Spell('mouse', 'Cat Form', 2),
                icub3d_Spell('mouse', 'Travel Form', 2),
                icub3d_Spell('mouse', 'Stag Form', 2),
                icub3d_Spell('mouse', 'Moonkin Form', 2),
                -- Cat Form
                icub3d_Spell('harm', 'Shred', 1),
                icub3d_Spell('harm', 'Shred', 2),
                icub3d_Spell('harm', 'Rake', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rake', 2, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Ferocious Bite', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Ferocious Bite', 2, 'harm', 'Shred'),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('mouse', 'Thrash', 2, 'mouse', 'Swipe', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 2, 'harm', 'Shred'),
                -- Prowl Form
                icub3d_Spell('harm', 'Lunar Strike', 1),
                icub3d_Spell('harm', 'Lunar Strike', 2),
                icub3d_Spell('harm', 'Solar Wrath', 1),
                icub3d_Spell('harm', 'Solar Wrath', 2),
                icub3d_Spell('harm', 'Sunfire', 1),
                icub3d_Spell('harm', 'Sunfire', 2),
                icub3d_Spell('harm', 'Starfall', 1),
                icub3d_Spell('harm', 'Starfall', 2),
                icub3d_Spell('harm', 'Starsurge', 1),
                icub3d_Spell('harm', 'Starsurge', 2),
                icub3d_Spell('harm', 'New Moon', 1),
                icub3d_Spell('harm', 'New Moon', 2),
                -- Bear Form
                icub3d_Spell('harm', 'Mangle', 1),
                icub3d_Spell('harm', 'Mangle', 2),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('help', 'Frenzied Regeneration', 1, 'harm', 'Mangle'),
                icub3d_Spell('help', 'Ironfur', 2, 'harm', 'Mangle'),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Growl'),
                icub3d_Spell('mouse', 'Thrash', 2, 'mouse', 'Swipe', 'mouse', 'harm', 'Growl'),
                icub3d_Spell('harm', 'Growl', 1),
                icub3d_Spell('harm', 'Growl', 2),
                -- Moonkin Form
                icub3d_Spell('harm', 'Lunar Strike', 1),
                icub3d_Spell('harm', 'Lunar Strike', 2),
                icub3d_Spell('harm', 'Solar Wrath', 1),
                icub3d_Spell('harm', 'Solar Wrath', 2),
                icub3d_Spell('harm', 'Sunfire', 1),
                icub3d_Spell('harm', 'Sunfire', 2),
                icub3d_Spell('harm', 'Starfall', 1),
                icub3d_Spell('harm', 'Starfall', 2),
                icub3d_Spell('harm', 'Starsurge', 1),
                icub3d_Spell('harm', 'Starsurge', 2),
                icub3d_Spell('harm', 'New Moon', 1),
                icub3d_Spell('harm', 'New Moon', 2)
            }
        },
        {
            tags = {'f', 'feral'},
            pvp = {
                alternate = icub3d_Spell('harm', 'Moonfire'),
                spells = {
                    icub3d_Spell('harm', 'Rip and Tear'),
                    icub3d_Spell('harm', 'Cyclone'),
                    icub3d_Spell('help', 'Thorns')
                }
            },
            actionbar = {
                -- Top Row
                icub3d_Spell('harm', 'Lunar Strike', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Lunar Strike', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Solar Wrath', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Solar Wrath', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Sunfire', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Sunfire', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Moonfire', 1),
                icub3d_Spell('harm', 'Moonfire', 2),
                icub3d_Spell('harm', 'Starsurge', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Starsurge', 2, 'harm', 'Moonfire'),
                icub3d_Skip(),
                icub3d_Skip(),
                -- Middle Left
                icub3d_Spell('help', 'Remove Corruption', 1),
                icub3d_Spell('help', 'Remove Corruption', 2),
                icub3d_Spell('harm', 'Typhoon', 1, 'harm', 'Mass Entanglement', 'harm', 'Mighty Bash'),
                icub3d_Spell('harm', 'Typhoon', 2, 'harm', 'Mass Entanglement', 'harm', 'Mighty Bash'),
                icub3d_Spell('harm', 'Entangling Roots', 1),
                icub3d_Spell('harm', 'Entangling Roots', 2),
                icub3d_Spell('mouse', 'Wild Charge', 1, 'help', 'Renewal', 'help', 'Tiger Dash'),
                icub3d_Spell('mouse', 'Wild Charge', 2, 'help', 'Renewal', 'help', 'Tiger Dash'),
                icub3d_Spell('harm', 'Feral Frenzy', 1, 'harm', 'Rake'),
                icub3d_Spell('harm', 'Feral Frenzy', 2, 'harm', 'Rake'),
                icub3d_Spell('harm', 'Hibernate', 1),
                icub3d_Spell('harm', 'Soothe', 1),
                -- Middle Right
                icub3d_Spell('harm', 'Skull Bash', 1),
                icub3d_Spell('harm', 'Skull Bash', 2),
                icub3d_Spell('harm', 'Primal Wrath', 1, 'harm', 'Thrash'),
                icub3d_Spell('harm', 'Primal Wrath', 2, 'harm', 'Swipe'),
                icub3d_Spell('help', 'Wild Growth', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Wild Growth', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Swiftmend', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Swiftmend', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Rejuvenation', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Rejuvenation', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Regrowth', 1),
                icub3d_Spell('help', 'Regrowth', 2),
                -- Bottom Left
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 2),
                icub3d_PvPTalent(3, 1),
                icub3d_PvPTalent(3, 2),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('help', 'Survival Instincts', 1),
                icub3d_Spell('help', 'Dash', 1),
                icub3d_Spell('help', 'Prowl', 1),
                icub3d_Macro('im_cloak'),
                -- Bottom Right
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_trinket'),
                icub3d_Spell('help', 'Rebirth', 2),
                icub3d_Spell('help', "Tiger's Fury", 2),
                icub3d_Spell('help', 'Stampeding Roar', 2),
                icub3d_Spell('help', 'Berserk', 2),
                icub3d_Spell('help', 'Savage Roar', 2, 'help', 'Berserk'),
                icub3d_Spell('mouse', 'Bear Form', 2),
                icub3d_Spell('mouse', 'Cat Form', 2),
                icub3d_Spell('mouse', 'Travel Form', 2),
                icub3d_Spell('mouse', 'Stag Form', 2),
                icub3d_Spell('mouse', 'Moonkin Form', 2, 'help', 'Stag Form'),
                -- Cat Form
                icub3d_Spell('harm', 'Shred', 1),
                icub3d_Spell('harm', 'Shred', 2),
                icub3d_Spell('harm', 'Rake', 1),
                icub3d_Spell('harm', 'Rake', 2),
                icub3d_Spell('harm', 'Ferocious Bite', 1),
                icub3d_Spell('harm', 'Ferocious Bite', 2),
                icub3d_Spell('harm', 'Maim', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Maim', 2, 'harm', 'Shred'),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('mouse', 'Swipe', 2, 'mouse', 'Thrash', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 2, 'harm', 'Shred'),
                -- Prowl Form
                icub3d_Spell('harm', 'Shred', 1),
                icub3d_Spell('harm', 'Shred', 2),
                icub3d_Spell('harm', 'Rake', 1),
                icub3d_Spell('harm', 'Rake', 2),
                icub3d_Spell('harm', 'Ferocious Bite', 1),
                icub3d_Spell('harm', 'Ferocious Bite', 2),
                icub3d_Spell('harm', 'Maim', 1),
                icub3d_Spell('harm', 'Maim', 2),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('mouse', 'Swipe', 2, 'mouse', 'Thrash', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 1),
                icub3d_Spell('harm', 'Rip', 2),
                -- Bear Form
                icub3d_Spell('harm', 'Mangle', 1),
                icub3d_Spell('harm', 'Mangle', 2),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('help', 'Frenzied Regeneration', 1, 'harm', 'Mangle'),
                icub3d_Spell('help', 'Ironfur', 2, 'harm', 'Mangle'),
                icub3d_Spell('harm', 'Moonfire', 1),
                icub3d_Spell('harm', 'Moonfire', 2),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Growl'),
                icub3d_Spell('mouse', 'Thrash', 2, 'mouse', 'Swipe', 'mouse', 'harm', 'Growl'),
                icub3d_Spell('harm', 'Growl', 1),
                icub3d_Spell('harm', 'Growl', 2),
                -- Moonkin Form
                icub3d_Spell('harm', 'Lunar Strike', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Lunar Strike', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Solar Wrath', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Solar Wrath', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Sunfire', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Sunfire', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Moonfire', 1),
                icub3d_Spell('harm', 'Moonfire', 2),
                icub3d_Spell('harm', 'Starsurge', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Starsurge', 2, 'harm', 'Moonfire'),
                icub3d_Skip(),
                icub3d_Skip()
            }
        },
        {
            tags = {'g', 'guard', 'guardian'},
            pvp = {
                alternate = icub3d_Spell('harm', 'Moonfire'),
                spells = {
                    icub3d_Spell('harm', 'Demoralizing Roar'),
                    icub3d_Spell('harm', 'Overrun')
                }
            },
            actionbar = {
                -- Top Row
                icub3d_Spell('harm', 'Lunar Strike', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Lunar Strike', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Solar Wrath', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Solar Wrath', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Sunfire', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Sunfire', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Moonfire', 1),
                icub3d_Spell('harm', 'Moonfire', 2),
                icub3d_Spell('harm', 'Starsurge', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Starsurge', 2, 'harm', 'Moonfire'),
                icub3d_Skip(),
                icub3d_Skip(),
                -- Middle Left
                icub3d_Spell('help', 'Remove Corruption', 1),
                icub3d_Spell('help', 'Remove Corruption', 2),
                icub3d_Spell('harm', 'Typhoon', 1, 'harm', 'Mass Entanglement', 'harm', 'Mighty Bash'),
                icub3d_Spell('harm', 'Typhoon', 2, 'harm', 'Mass Entanglement', 'harm', 'Mighty Bash'),
                icub3d_Spell('harm', 'Entangling Roots', 1),
                icub3d_Spell('harm', 'Entangling Roots', 2),
                icub3d_Spell('mouse', 'Wild Charge', 1, 'mouse', "Ursol's Vortex", 'help', 'Tiger Dash'),
                icub3d_Spell('mouse', 'Wild Charge', 2, 'mouse', "Ursol's Vortex", 'help', 'Tiger Dash'),
                icub3d_Spell('harm', 'Pulverize', 1, 'harm', 'Lunar Beam', 'harm', 'Maul'),
                icub3d_Spell(
                    'help',
                    'Incarnation: Guardian of Ursoc',
                    2,
                    'harm',
                    'Pulverize',
                    'harm',
                    'Lunar Beam',
                    'harm',
                    'Maul'
                ),
                icub3d_Spell('harm', 'Hibernate', 1),
                icub3d_Spell('harm', 'Soothe', 1),
                -- Middle Right
                icub3d_Spell('harm', 'Skull Bash', 1),
                icub3d_Spell('harm', 'Skull Bash', 2),
                icub3d_Spell('harm', 'Primal Wrath', 1, 'harm', 'Thrash'),
                icub3d_Spell('harm', 'Primal Wrath', 2, 'harm', 'Swipe'),
                icub3d_Spell('help', 'Wild Growth', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Wild Growth', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Swiftmend', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Swiftmend', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Rejuvenation', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Rejuvenation', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Regrowth', 1),
                icub3d_Spell('help', 'Regrowth', 2),
                -- Bottom Left
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 2),
                icub3d_PvPTalent(3, 1),
                icub3d_PvPTalent(3, 2),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('help', 'Survival Instincts', 1),
                icub3d_Spell('help', 'Dash', 1),
                icub3d_Spell('help', 'Prowl', 1),
                icub3d_Macro('im_cloak'),
                -- Bottom Right
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_trinket'),
                icub3d_Spell('help', 'Rebirth', 2),
                icub3d_Spell('help', 'Bristling Fur', 2, 'harm', 'Stampeding Roar'),
                icub3d_Spell('help', 'Stampeding Roar', 2),
                icub3d_Spell('help', 'Barkskin', 2),
                icub3d_Spell('help', 'Incapacitating Roar', 2),
                icub3d_Spell('mouse', 'Bear Form', 2),
                icub3d_Spell('mouse', 'Cat Form', 2),
                icub3d_Spell('mouse', 'Travel Form', 2),
                icub3d_Spell('mouse', 'Stag Form', 2),
                icub3d_Spell('mouse', 'Moonkin Form', 2, 'help', 'Stag Form'),
                -- Cat Form
                icub3d_Spell('harm', 'Shred', 1),
                icub3d_Spell('harm', 'Shred', 2),
                icub3d_Spell('harm', 'Rake', 1),
                icub3d_Spell('harm', 'Rake', 2),
                icub3d_Spell('harm', 'Ferocious Bite', 1),
                icub3d_Spell('harm', 'Ferocious Bite', 2),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('mouse', 'Swipe', 2, 'mouse', 'Thrash', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 1),
                icub3d_Spell('harm', 'Rip', 2),
                -- Prowl Form
                icub3d_Spell('harm', 'Shred', 1),
                icub3d_Spell('harm', 'Shred', 2),
                icub3d_Spell('harm', 'Rake', 1),
                icub3d_Spell('harm', 'Rake', 2),
                icub3d_Spell('harm', 'Ferocious Bite', 1),
                icub3d_Spell('harm', 'Ferocious Bite', 2),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('mouse', 'Swipe', 2, 'mouse', 'Thrash', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 1),
                icub3d_Spell('harm', 'Rip', 2),
                -- Bear Form
                icub3d_Spell('harm', 'Mangle', 1),
                icub3d_Spell('harm', 'Mangle', 2),
                icub3d_Spell('harm', 'Maul', 1),
                icub3d_Spell('harm', 'Maul', 2),
                icub3d_Spell('help', 'Frenzied Regeneration', 1, 'harm', 'Mangle'),
                icub3d_Spell('help', 'Ironfur', 2, 'harm', 'Mangle'),
                icub3d_Spell('harm', 'Moonfire', 1),
                icub3d_Spell('harm', 'Moonfire', 2),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Growl'),
                icub3d_Spell('mouse', 'Swipe', 2, 'mouse', 'Thrash', 'mouse', 'harm', 'Growl'),
                icub3d_Spell('harm', 'Growl', 1),
                icub3d_Spell('harm', 'Growl', 2),
                -- Moonkin Form
                icub3d_Spell('harm', 'Lunar Strike', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Lunar Strike', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Solar Wrath', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Solar Wrath', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Sunfire', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Sunfire', 2, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Moonfire', 1),
                icub3d_Spell('harm', 'Moonfire', 2),
                icub3d_Spell('harm', 'Starsurge', 1, 'harm', 'Moonfire'),
                icub3d_Spell('harm', 'Starsurge', 2, 'harm', 'Moonfire'),
                icub3d_Skip(),
                icub3d_Skip()
            }
        },
        {
            tags = {'r', 'resto', 'restoration'},
            pvp = {
                alternate = icub3d_Spell('harm', 'Moonfire'),
                spells = {
                    icub3d_Spell('harm', 'Nourish'),
                    icub3d_Spell('harm', 'Cyclone'),
                    icub3d_Spell('help', 'Thorns'),
                    icub3d_Spell('help', 'Mark of the Wild'),
                    icub3d_Spell('help', 'Overgrowth')
                }
            },
            actionbar = {
                -- Top Row
                icub3d_Spell('help', 'Wild Growth', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Wild Growth', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Swiftmend', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Swiftmend', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Rejuvenation', 1, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Rejuvenation', 2, 'help', 'Regrowth'),
                icub3d_Spell('help', 'Regrowth', 1),
                icub3d_Spell('help', 'Regrowth', 2),
                icub3d_Spell('help', 'Lifebloom', 1),
                icub3d_Spell('help', 'Lifebloom', 2),
                icub3d_Spell('help', 'Cenarion Ward', 1, 'help', 'Lifebloom'),
                icub3d_Spell('help', 'Cenarion Ward', 2, 'help', 'Lifebloom'),
                -- Middle Left
                icub3d_Spell('help', "Nature's Cure", 1),
                icub3d_Spell('help', "Nature's Cure", 2),
                icub3d_Spell('harm', 'Typhoon', 1, 'harm', 'Mass Entanglement', 'harm', 'Mighty Bash'),
                icub3d_Spell('harm', 'Typhoon', 2, 'harm', 'Mass Entanglement', 'harm', 'Mighty Bash'),
                icub3d_Spell('harm', 'Entangling Roots', 1),
                icub3d_Spell('harm', 'Entangling Roots', 2),
                icub3d_Spell('mouse', 'Wild Charge', 1, 'help', 'Renewal', 'help', 'Tiger Dash'),
                icub3d_Spell('mouse', 'Wild Charge', 2, 'help', 'Renewal', 'help', 'Tiger Dash'),
                icub3d_Spell('help', 'Innervate', 1),
                icub3d_Spell('help', 'Innervate', 2),
                icub3d_Spell('harm', 'Hibernate', 1),
                icub3d_Spell('harm', 'Soothe', 1),
                -- Middle Right
                icub3d_Spell('mouse', 'Efflorescence', 1),
                icub3d_Spell('mouse', 'Efflorescence', 2),
                icub3d_Spell('mouse', "Ursol's Vortex", 1),
                icub3d_Spell('mouse', "Ursol's Vortex", 2),
                icub3d_Spell('harm', 'Lunar Strike', 1),
                icub3d_Spell('harm', 'Lunar Strike', 2),
                icub3d_Spell('harm', 'Solar Wrath', 1),
                icub3d_Spell('harm', 'Solar Wrath', 2),
                icub3d_Spell('harm', 'Sunfire', 1),
                icub3d_Spell('harm', 'Sunfire', 2),
                icub3d_Spell('harm', 'Starsurge', 1),
                icub3d_Spell('harm', 'Starsurge', 2),
                -- Bottom Left
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 2),
                icub3d_PvPTalent(3, 1),
                icub3d_PvPTalent(3, 2),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('help', 'Tranquility', 2),
                icub3d_Spell('help', 'Dash', 1),
                icub3d_Spell('help', 'Prowl', 1),
                icub3d_Macro('im_cloak'),
                -- Bottom Right
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_trinket'),
                icub3d_Spell('help', 'Rebirth', 2),
                icub3d_Spell('help', 'Flourish', 2, 'help', 'Barkskin'),
                icub3d_Spell('help', 'Incarnation: Tree of Life', 2, 'help', 'Flourish', 'help', 'Barkskin'),
                icub3d_Spell('help', 'Barkskin', 1),
                icub3d_Spell('help', 'Ironbark', 2),
                icub3d_Spell('mouse', 'Bear Form', 2),
                icub3d_Spell('mouse', 'Cat Form', 2),
                icub3d_Spell('mouse', 'Travel Form', 2),
                icub3d_Spell('mouse', 'Stag Form', 2),
                icub3d_Spell('mouse', 'Moonkin Form', 2),
                -- Cat Form
                icub3d_Spell('harm', 'Shred', 1),
                icub3d_Spell('harm', 'Shred', 2),
                icub3d_Spell('harm', 'Rake', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rake', 2, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Ferocious Bite', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Ferocious Bite', 2, 'harm', 'Shred'),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('mouse', 'Thrash', 2, 'mouse', 'Swipe', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 2, 'harm', 'Shred'),
                -- Prowl Form
                icub3d_Spell('harm', 'Shred', 1),
                icub3d_Spell('harm', 'Shred', 2),
                icub3d_Spell('harm', 'Rake', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rake', 2, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Ferocious Bite', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Ferocious Bite', 2, 'harm', 'Shred'),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('mouse', 'Thrash', 2, 'mouse', 'Swipe', 'mouse', 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 1, 'harm', 'Shred'),
                icub3d_Spell('harm', 'Rip', 2, 'harm', 'Shred'),
                -- Bear Form
                icub3d_Spell('harm', 'Mangle', 1),
                icub3d_Spell('harm', 'Mangle', 2),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('help', 'Frenzied Regeneration', 1, 'harm', 'Mangle'),
                icub3d_Spell('help', 'Ironfur', 2, 'harm', 'Mangle'),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('mouse', 'Thrash', 1, 'mouse', 'Swipe', 'mouse', 'harm', 'Growl'),
                icub3d_Spell('mouse', 'Thrash', 2, 'mouse', 'Swipe', 'mouse', 'harm', 'Growl'),
                icub3d_Spell('harm', 'Growl', 1),
                icub3d_Spell('harm', 'Growl', 2),
                -- Moonkin Form
                icub3d_Spell('harm', 'Lunar Strike', 1),
                icub3d_Spell('harm', 'Lunar Strike', 2),
                icub3d_Spell('harm', 'Solar Wrath', 1),
                icub3d_Spell('harm', 'Solar Wrath', 2),
                icub3d_Spell('harm', 'Sunfire', 1),
                icub3d_Spell('harm', 'Sunfire', 2),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('harm', 'Starsurge', 1),
                icub3d_Spell('harm', 'Starsurge', 2),
                icub3d_Skip(),
                icub3d_Skip()
            }
        }
    }
}