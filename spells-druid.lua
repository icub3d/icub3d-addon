-- This one is a bit more confusing for some reason. It's wierd to
-- have some common spells in less common places. So the main bar has
-- the main spells for a given spec and then the less common spells
-- are elsewhere.
function icub3d_join_spells(groups)
    r = {}
    for k, g in pairs(groups) do
        for k, v in pairs(g) do
            table.insert(r, v)
        end
    end
    return r
end

------------------------------------------------------------------------
-- Shared Spells
------------------------------------------------------------------------
icub3d_Druid_Talents = {
    icub3d_Spell('help', 'Heart of the Wild'),
    icub3d_Spell('help', 'Remove Corruption'),
    icub3d_Spell('help', 'Nature\'s Cure'),
    icub3d_Spell('help', 'Innervate'),
    icub3d_Spell('help', 'Nature\'s Vigil'),
    icub3d_Spell('help', 'Renewal'),
    icub3d_Spell('mouse', 'Ursol\'s Vortex'),
    icub3d_Spell('harm', 'Mass Entanglement'),
    icub3d_Spell('harm', 'Incapacitating Roar'),
    icub3d_Spell('harm', 'Mighty Bash'),
    icub3d_Spell('harm', 'Cyclone'),
    icub3d_Spell('harm', 'Typhoon'),
    icub3d_Spell('harm', 'Starfire'),
}

------------------------------------------------------------------------
-- Main Bars
------------------------------------------------------------------------
-- Normal Form
icub3d_normal = {
    icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('help', 'Lifebloom', 'harm', 'Starfire', 'skip', 'skip'),
    icub3d_Spell('help', 'Swiftmend', 'skip', 'skip'),
    icub3d_Spell('help', 'Wild Growth', 'skip', 'skip'),
    icub3d_Spell('help', 'Nature\'s Swiftness', 'harm', 'Wrath', 'skip', 'skip'),
    icub3d_Spell('help', 'Cenarion Ward', 'help', 'Nourish', 'harm', 'Starsurge', 'skip', 'skip'),
    icub3d_Spell('help', 'Ironbark', 'harm', 'Sunfire', 'skip', 'skip'),
    icub3d_Spell('help', 'Efflorescence', 'skip', 'skip'),
    icub3d_Spell('help', 'Renewal', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('simple', 'Adaptive Swarm', 'skip', 'skip')
}
-- Bear Form
icub3d_bear = {
    icub3d_Spell('harm', 'Mangle', 'skip', 'skip'),
    icub3d_Spell('harm', 'Maul', 'skip', 'skip'),
    icub3d_Spell('both', 'Thrash', 'skip', 'skip'),
    icub3d_Spell('both', 'Swipe', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ironfur', 'skip', 'skip'),
    icub3d_Spell('harm', 'Growl', 'skip', 'skip'),
    icub3d_Spell('help', 'Frenzied Regeneration', 'skip', 'skip'),
    icub3d_Spell('help', 'Bristling Fur', 'skip', 'skip'),
    icub3d_Spell('harm', 'Pulverize', 'skip', 'skip'),
    icub3d_Spell('harm', 'Skull Bash', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('help', 'Rage of the Sleeper', 'skip', 'skip')
}

-- Cat/Prowl Form
icub3d_cat = {
    icub3d_Spell('harm', 'Shred', 'skip', 'skip'),
    icub3d_Spell('harm', 'Rake', 'skip', 'skip'),
    icub3d_Spell('both', 'Thrash', 'skip', 'skip'),
    icub3d_Spell('both', 'Swipe', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ferocious Bite', 'skip', 'skip'),
    icub3d_Spell('harm', 'Maim', 'skip', 'skip'),
    icub3d_Spell('harm', 'Rip', 'help', 'skip', 'skip'),
    icub3d_Skip(),
    icub3d_Spell('help', 'Tiger\'s Fury', 'skip', 'skip'),
    icub3d_Spell('harm', 'Skull Bash', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('simple', "Adaptive Swarm", 'skip', 'skip')
}

-- Moonkin Form
icub3d_moonkin = {
    icub3d_Spell('harm', 'Wrath', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starsurge', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starfall', 'skip', 'skip'),
    icub3d_Spell('harm', 'Stellar Flare', 'skip', 'skip'),
    icub3d_Spell('harm', 'Wild Mushroom', 'skip', 'skip'),
    icub3d_Spell('harm', 'New Moon', 'harm', 'Fury of Elune', 'skip', 'skip'),
    icub3d_Spell('harm', 'Moonfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Sunfire', 'skip', 'skip'),
    icub3d_Macro('im_root_beam'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('mouse', 'Force of Nature', 'skip', 'skip')
}

-- Top Right
icub3d_top_right = {
    icub3d_Spell_Spec('help', 'Celestial Alignment', 'help', 'Berserk', 'help', 'Berserk', 'help', 'Incarnation: Tree of Life'),
    icub3d_Spell_Spec('help', 'Regrowth', 'harm', 'Brutal Slash', 'harm', 'Demoralizing Roar', 'help', 'Flourish'),
    icub3d_Spell_Spec('help', 'Rejuvenation', 'harm', 'Feral Frenzy', 'mouse', 'Grove Protection', 'help', 'Overgrowth'),
    icub3d_Spell_Spec('help', 'Swiftmend', 'harm', 'Primal Wrath', 'help', 'Emerald Slumber', 'help', 'Invigorate'),
    icub3d_Spell('harm', 'Moonfire'),    
    icub3d_Spell('harm', 'Sunfire'),    
    icub3d_Spell('harm', 'Wrath'),    
    icub3d_Spell('harm', 'Starsurge'),    
    icub3d_Spell('help', 'Thorns', 'harm', 'Overrun', 'skip', 'skip'),
    icub3d_Macro('im_health_rev'),
    icub3d_Spell('help', 'Barkskin', 'skip', 'skip'),
    icub3d_Spell_Spec('help', 'Warrior of Elune', 'help', 'Survival Instincts', 'help', 'Survival Instincts', 'help', 'Tranquility'),
}

-- Bottom Left (All)
icub3d_bottom_left = {
    icub3d_Spell('help', 'Dash'),
    icub3d_Spell('help', 'Prowl'),
    icub3d_Spell('help', 'Rebirth'),
    icub3d_Macro('im_charge_roar'),
    icub3d_Talent(1),
    icub3d_Talent(2),
    icub3d_Talent(3),
    icub3d_Talent(4),
    icub3d_Talent(5),
    icub3d_Talent(6),
    icub3d_Talent(7),
    icub3d_Spell('help', 'Bear Form'),
}

-- Bottom Right (All)
icub3d_bottom_right = {
    icub3d_Spell('simple', 'Cat Form'),
    icub3d_Macro('im_travel'),
    icub3d_Macro('im_racial'),
    icub3d_Macro('im_trinket'),
    icub3d_Macro('im_entangling_hibernate'),
    icub3d_Spell('harm', 'Soothe', 'skip', 'skip'),
    icub3d_Macro('im_glider_foam'),
    icub3d_Macro('im_flap'),
    icub3d_Spell('help', 'Mark of the Wild', 'skip', 'skip'),
    icub3d_Spell('help', 'Revive', 'skip', 'skip'),
    icub3d_Spell('help', 'Revitalize', 'skip', 'skip'),
    icub3d_Spell('simple', 'Charm Woodland Creature', 'skip', 'skip'),
}

icub3d_dragon = {
    icub3d_Spell('simple', 'Whirling Surge'),
    icub3d_Spell('simple', 'Surge Forward'),

    icub3d_Spell('simple', 'Skyward Ascent'),
    icub3d_Spell('simple', 'Bronze Timelock'),
    icub3d_Skip(),
    icub3d_Skip(),
    icub3d_Skip(),
    icub3d_Skip(),
    icub3d_Skip(),
    icub3d_Skip(),
    icub3d_Skip(),
    icub3d_Skip()
}

-- Skip (All)
icub3d_skip_all = { -- We have to skip these for druid, warrior, rogue
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
    icub3d_Skip(),
    icub3d_Skip()
}

icub3d_Druid_Spells = icub3d_join_spells(
    {
        icub3d_normal,
        icub3d_top_right,
        icub3d_bottom_left,
        icub3d_bottom_right,
        icub3d_skip_all,
        icub3d_cat,
        icub3d_cat,
        icub3d_bear,
        icub3d_moonkin,
        icub3d_dragon
    }
  )

icub3d_Spells['DRUID'] = {
    specs = {
        {
            tags = {
                'b',
                'bal',
                'balance'
            },
            talent = icub3d_Druid_Talents,
            actionbar = icub3d_Druid_Spells,
        },
        {
            tags = {
                'f',
                'feral'
            },
            talent = icub3d_Druid_Talents,
            actionbar = icub3d_Druid_Spells,
        },
        {
            tags = {
                'g',
                'guard',
                'guardian'
            },
            talent = icub3d_Druid_Talents,
            actionbar = icub3d_Druid_Spells,
        },
        {
            tags = {
                'r',
                'resto',
                'restoration'
            },
            talent = icub3d_Druid_Talents,
            actionbar = icub3d_Druid_Spells,
        },
    },
}
