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
			   -- Top Left
                icub3d_Spell('harm', "Demon's Bite"),
                icub3d_Spell('harm', 'Chaos Strike'),
                icub3d_Spell('harm', 'Immolation Aura', 'harm', 'Chaos Strike'),
                icub3d_Spell('harm', 'Chaos Nova'),
                icub3d_Spell('harm', 'Throw Glaive'),
                icub3d_Spell('harm', 'Blade Dance'),
                icub3d_Spell('harm', 'Dark Slash', 'harm', 'Chaos Strike'),
                icub3d_Spell('harm', 'Imprison'),
                icub3d_Spell('harm', 'Fel Rush'),
                icub3d_Spell('harm', 'Torment'),
                icub3d_Spell('harm', 'Fel Barrage', 'harm', 'Torment'),

                -- Top Right
                icub3d_Spell('harm', 'Eye Beam'),
                icub3d_Spell('mouse', 'Metamorphosis'),
                icub3d_Spell('harm', 'Felblade', 'mouse', 'Metamorphosis'),
                icub3d_Spell('harm', 'Disrupt'),
                icub3d_Spell('harm', 'Fel Eruption', 'harm', 'Consume Magic'),
                icub3d_Spell('harm', 'Consume Magic'),
                icub3d_PvPTalent(1),
                icub3d_PvPTalent(2),
                icub3d_PvPTalent(3),
                icub3d_Spell('help', 'Netherwalk', 'help', 'Darkness'),
                icub3d_Spell('help', 'Vengeful Retreat'),
                icub3d_Spell('help', 'Blur'),

				-- Bottom Left
                icub3d_Spell('help', 'Darkness'),
                icub3d_Spell('use', 'Healthstone'),
                icub3d_Spell('use', 'F.R.I.E.D.'),
                icub3d_Macro('im_glide'),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('use', 'Soft Foam Sword'),
				icub3d_Skip(),
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_cloak'),
                icub3d_Spell('help', 'Spectral Sight'),
				icub3d_Skip(),

				-- Bottom Right
				icub3d_Skip(),
                icub3d_Macro('im_trinket'),
				icub3d_Skip(),
				icub3d_Skip(),
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
			   -- Top Left
                icub3d_Spell('harm', 'Shear'),
                icub3d_Spell('harm', 'Soul Cleave'),
                icub3d_Spell('help', 'Spirit Bomb', 'harm', 'Fel Devastation', 'mouse', 'Infernal Strike'),
                icub3d_Spell('harm', 'Immolation Aura'),
                icub3d_Spell('harm', 'Throw Glaive'),
                icub3d_Spell('mouse', 'Sigil of Flame'),
                icub3d_Spell('mouse', 'Sigil of Chains', 'harm', 'Immolation Aura'),
                icub3d_Spell('harm', 'Imprison'),
                icub3d_Spell('mouse', 'Infernal Strike'),
                icub3d_Spell('mouse', 'Sigil of Misery'),
                icub3d_Spell('harm', 'Torment'),
                icub3d_Skip(),

				-- Top Right
                icub3d_Spell('mouse', 'Sigil of Silence'),
                icub3d_Spell('mouse', 'Metamorphosis'),
                icub3d_Spell('harm', 'Felblade', 'mouse', 'Metamorphosis'),
                icub3d_Spell('harm', 'Disrupt'),
                icub3d_Spell('harm', 'Fiery Brand'),
                icub3d_Spell('harm', 'Consume Magic'),
                icub3d_PvPTalent(1),
                icub3d_PvPTalent(2),
                icub3d_PvPTalent(3),
                icub3d_Spell('help', 'Soul Barrier', nil, 'help', 'Demon Spikes'),
                icub3d_Spell('help', 'Demon Spikes'),
                icub3d_Skip(),
                
                -- Bottom Left
				icub3d_Skip(),
                icub3d_Spell('use', 'Healthstone'),
                icub3d_Spell('use', 'F.R.I.E.D.'),
                icub3d_Macro('im_glide'),
                icub3d_Macro('im_racial'),
                icub3d_Macro('im_medallion'),
                icub3d_Spell('use', 'Soft Foam Sword'),
				icub3d_Skip(),
                icub3d_Macro('im_belt'),
                icub3d_Macro('im_cloak'),
                icub3d_Spell('help', 'Spectral Sight'),
				icub3d_Skip(),

				-- Bottom Right
				icub3d_Skip(),
                icub3d_Macro('im_trinket'),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
				icub3d_Skip(),
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
