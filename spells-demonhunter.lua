icub3d_Spells['DEMONHUNTER'] = {
    specs = {
        -- The tags are useful for switching but these should be in in-game order.
        {
            tags = {'h', 'havoc'},
            pvp = {
                alternate = icub3d_Spell('help', 'Arcane Torrent'),
                spells = {
                    icub3d_Spell('harm', 'Mana Break'),
                    icub3d_Spell('harm', 'Mana Rift'),
                    icub3d_Spell('harm', 'Eye of Leotheras'),
                    icub3d_Spell('harm', 'Reverse Magic'),
                    icub3d_Spell('harm', 'Rain from Above')
                }
            },
            actionbar = {
                -- These should be in the order you want them on the action bar.
                -- Top Row
                icub3d_Spell('harm', "Demon's Bite", 1),
                icub3d_Spell('harm', 'Chaos Strike', 1),
                icub3d_Spell('harm', 'Immolation Aura', 1, 'harm', 'Chaos Strike'),
                icub3d_Spell('harm', 'Chaos Nova', 1),
                icub3d_Spell('harm', 'Throw Glaive', 1),
                icub3d_Spell('harm', 'Blade Dance', 1),
                icub3d_Spell('harm', "Demon's Bite", 2),
                icub3d_Spell('harm', 'Chaos Strike', 2),
                icub3d_Spell('harm', 'Immolation Aura', 1, 'harm', 'Chaos Strike'),
                icub3d_Spell('harm', 'Chaos Nova', 1),
                icub3d_Spell('harm', 'Throw Glaive', 2),
                icub3d_Spell('harm', 'Blade Dance', 1),

                -- Middle Left
                icub3d_Spell('harm', 'Dark Slash', 1, 'harm', 'Chaos Strike'),
                icub3d_Spell('harm', 'Dark Slash', 2, 'harm', 'Chaos Strike'),
                icub3d_Spell('harm', 'Imprison', 1),
                icub3d_Spell('harm', 'Imprison', 2),
                icub3d_Spell('harm', 'Fel Rush', 1),
                icub3d_Spell('harm', 'Fel Rush', 2),
                icub3d_Spell('harm', 'Torment', 1),
                icub3d_Spell('harm', 'Torment', 2),
                icub3d_Spell('harm', 'Fel Barrage', 1, 'harm', 'Torment'),
                icub3d_Spell('harm', 'Fel Barrage', 1, 'harm', 'Torment'),

                -- Middle Right
                icub3d_Spell('harm', 'Eye Beam', 1),
                icub3d_Spell('harm', 'Eye Beam', 1),
                icub3d_Spell('mouse', 'Metamorphosis', 1),
                icub3d_Spell('mouse', 'Metamorphosis', 1),
                icub3d_Spell('harm', 'Felblade', 1, 'mouse', 'Metamorphosis'),
                icub3d_Spell('harm', 'Felblade', 2, 'mouse', 'Metamorphosis'),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Spell('harm', 'Disrupt', 1),
                icub3d_Spell('harm', 'Disrupt', 2),
                icub3d_Spell('harm', 'Fel Eruption', 1, 'harm', 'Consume Magic'),
                icub3d_Spell('harm', 'Fel Eruption', 2, 'harm', 'Consume Magic'),
                icub3d_Spell('harm', 'Consume Magic', 1),
                icub3d_Spell('harm', 'Consume Magic', 2),

                -- Bottom Left
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 2),
                icub3d_PvPTalent(3, 1),
                icub3d_PvPTalent(3, 2),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('help', 'Blur'),
                icub3d_Spell('help', 'Darkness'),
                icub3d_Spell('help', 'Netherwalk', nil, 'help', 'Darkness'),
                icub3d_Spell('help', 'Vengeful Retreat'),
                
                -- Bottom Row (right)
                icub3d_Spell('use', 'Drums of Fury'),
                icub3d_Spell('use', 'F.R.I.E.D.', 1),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Macro('im_glide'),
                icub3d_Spell('use', 'Soft Foam Sword'),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_cloak'),
                icub3d_Spell('help', 'Spectral Sight')
            }
        },
        {
            tags = {'v', 'veng', 'vengeance'},
            pvp = {
                alternate = icub3d_Spell('harm', "Gladiator's Medallion"),
                spells = {
                    icub3d_Spell('harm', 'Reverse Magic'),
                    icub3d_Spell('harm', "Illidan's Grasp"),
                    icub3d_Spell('harm', 'Demonic Trample')
                }
            },
            actionbar = {
                -- These should be in the order you want them on the action bar.
                -- Top Row
                icub3d_Spell('harm', 'Shear', 1),
                icub3d_Spell('harm', 'Soul Cleave', 1),
                icub3d_Spell('help', 'Spirit Bomb', 1, 'harm', 'Fel Devastation', 'mouse', 'Infernal Strike'),
                icub3d_Spell('harm', 'Immolation Aura', 1),
                icub3d_Spell('harm', 'Throw Glaive', 1),
                icub3d_Spell('mouse', 'Sigil of Flame', 1),
                icub3d_Spell('harm', 'Shear', 2),
                icub3d_Spell('harm', 'Soul Cleave', 2),
                icub3d_Spell('help', 'Spirit Bomb', 2, 'harm', 'Fel Devastation', 'mouse', 'Infernal Strike'),
                icub3d_Spell('harm', 'Immolation Aura', 2),
                icub3d_Spell('harm', 'Throw Glaive', 2),
                icub3d_Spell('mouse', 'Sigil of Flame', 1),

                -- Middle Left
                icub3d_Spell('mouse', 'Sigil of Chains', 1, 'harm', 'Immolation Aura'),
                icub3d_Spell('mouse', 'Sigil of Chains', 1, 'harm', 'Immolation Aura'),
                icub3d_Spell('harm', 'Imprison', 1),
                icub3d_Spell('harm', 'Imprison', 2),
                icub3d_Spell('mouse', 'Infernal Strike', 1),
                icub3d_Spell('mouse', 'Infernal Strike', 2),
                icub3d_Spell('mouse', 'Sigil of Misery', 1),
                icub3d_Spell('mouse', 'Sigil of Misery', 2),
                icub3d_Spell('harm', 'Torment', 1),
                icub3d_Spell('harm', 'Torment', 2),
                icub3d_Skip(),
                icub3d_Skip(),

                -- Middle Right
                icub3d_Spell('mouse', 'Sigil of Silence', 1),
                icub3d_Spell('mouse', 'Sigil of Silence', 2),
                icub3d_Spell('mouse', 'Metamorphosis', 1),
                icub3d_Spell('mouse', 'Metamorphosis', 1),
                icub3d_Spell('harm', 'Felblade', 1, 'mouse', 'Metamorphosis'),
                icub3d_Spell('harm', 'Felblade', 2, 'mouse', 'Metamorphosis'),
                icub3d_Spell('harm', 'Disrupt', 1),
                icub3d_Spell('harm', 'Disrupt', 2),
                icub3d_Spell('harm', 'Fiery Brand', 1),
                icub3d_Spell('harm', 'Fiery Brand', 2),
                icub3d_Spell('harm', 'Consume Magic', 1),
                icub3d_Spell('harm', 'Consume Magic', 2),

                -- Bottom Left
                icub3d_PvPTalent(1, 1),
                icub3d_PvPTalent(1, 2),
                icub3d_PvPTalent(2, 1),
                icub3d_PvPTalent(2, 2),
                icub3d_PvPTalent(3, 1),
                icub3d_PvPTalent(3, 2),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('help', 'Soul Barrier', nil, 'help', 'Demon Spikes'),
                icub3d_Spell('help', 'Demon Spikes'),
                icub3d_Skip(),
                icub3d_Skip(),
                
                -- Bottom Row (right)
                icub3d_Spell('use', 'Drums of Fury'),
                icub3d_Spell('use', 'F.R.I.E.D.', 1),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Skip(),
                icub3d_Macro('im_glide'),
                icub3d_Spell('use', 'Soft Foam Sword'),
                icub3d_Macro('im_trinket'),
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_cloak'),
                icub3d_Spell('help', 'Spectral Sight')
            }
        }
    }
}
