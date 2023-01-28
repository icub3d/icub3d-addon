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
    icub3d_Spell('Heart of the Wild'),
    icub3d_Spell('Remove Corruption'),
    icub3d_Spell('Nature\'s Cure'),
    icub3d_Spell('Innervate'),
    icub3d_Spell('Nature\'s Vigil'),
    icub3d_Spell('Renewal'),
    icub3d_Spell('mouse', 'Ursol\'s Vortex'),
    icub3d_Spell('Mass Entanglement'),
    icub3d_Spell('Incapacitating Roar'),
    icub3d_Spell('Mighty Bash'),
    icub3d_Spell('Cyclone'),
    icub3d_Spell('Typhoon'),
    icub3d_Spell('Starfire'),
}

------------------------------------------------------------------------
-- Main Bars
------------------------------------------------------------------------
-- Normal Form
icub3d_normal = {
    icub3d_Spell('Regrowth', 'skip'),
    icub3d_Spell('Rejuvenation', 'skip'),
    icub3d_Spell('Lifebloom', 'Starfire', 'skip'),
    icub3d_Spell('Swiftmend', 'skip'),
    icub3d_Spell('Wild Growth', 'skip'),
    icub3d_Spell('Nature\'s Swiftness', 'Wrath', 'skip'),
    icub3d_Spell('Cenarion Ward', 'Nourish', 'Starsurge', 'skip'),
    icub3d_Spell('Ironbark', 'Sunfire', 'skip'),
    icub3d_Spell('Efflorescence', 'skip'),
    icub3d_Spell('Renewal', 'skip'),
    icub3d_Spell('Convoke the Spirits(Shadowlands)', 'skip'),
    icub3d_Spell('Adaptive Swarm', 'skip')
}
-- Bear Form
icub3d_bear = {
    icub3d_Spell('Mangle', 'skip'),
    icub3d_Spell('Maul', 'skip'),
    icub3d_Spell('Thrash', 'skip'),
    icub3d_Spell('Swipe', 'skip'),
    icub3d_Spell('Ironfur', 'skip'),
    icub3d_Spell('Growl', 'skip'),
    icub3d_Spell('Frenzied Regeneration', 'skip'),
    icub3d_Spell('Bristling Fur', 'skip'),
    icub3d_Spell('Pulverize', 'skip'),
    icub3d_Spell('Skull Bash', 'skip'),
    icub3d_Spell('Convoke the Spirits(Shadowlands)', 'skip'),
    icub3d_Spell('Rage of the Sleeper', 'skip')
}

-- Cat/Prowl Form
icub3d_cat = {
    icub3d_Spell('Shred', 'skip'),
    icub3d_Spell('Rake', 'skip'),
    icub3d_Spell('Thrash', 'skip'),
    icub3d_Spell('Swipe', 'skip'),
    icub3d_Spell('Ferocious Bite', 'skip'),
    icub3d_Spell('Maim', 'skip'),
    icub3d_Spell('Rip', 'skip'),
    icub3d_Skip(),
    icub3d_Spell('Tiger\'s Fury', 'skip'),
    icub3d_Spell('Skull Bash', 'skip'),
    icub3d_Spell('Convoke the Spirits(Shadowlands)', 'skip'),
    icub3d_Spell("Adaptive Swarm", 'skip')
}

-- Moonkin Form
icub3d_moonkin = {
    icub3d_Spell('Wrath', 'skip'),
    icub3d_Spell('Starfire', 'skip'),
    icub3d_Spell('Starsurge', 'skip'),
    icub3d_Spell('Starfall', 'skip'),
    icub3d_Spell('Stellar Flare', 'skip'),
    icub3d_Spell('Wild Mushroom', 'skip'),
    icub3d_Spell('New Moon', 'Fury of Elune', 'skip'),
    icub3d_Spell('Moonfire', 'skip'),
    icub3d_Spell('Sunfire', 'skip'),
    icub3d_Macro('im_root_beam'),
    icub3d_Spell('Convoke the Spirits(Shadowlands)', 'skip'),
    icub3d_Spell('Astral Commmunion', 'skip'),
}

-- Top Right
icub3d_top_right = {
    icub3d_Spell_Spec('Celestial Alignment', 'Berserk', 'Berserk', 'help',
        'Incarnation: Tree of Life'),
    icub3d_Spell_Spec('Regrowth', 'Brutal Slash', 'Demoralizing Roar', 'Flourish'),
    icub3d_Spell_Spec('Rejuvenation', 'Feral Frenzy', 'mouse', 'Grove Protection', 'Overgrowth'),
    icub3d_Spell_Spec('Swiftmend', 'Primal Wrath', 'Emerald Slumber', 'Invigorate'),
    icub3d_Spell('Moonfire'),
    icub3d_Spell('Sunfire'),
    icub3d_Spell('Lunar Beam', 'Wrath'),
    icub3d_Spell_Spec('Regrowth', 'Regrowth', 'Regrowth', 'Starfire'),
    icub3d_Spell('Thorns', 'Overrun', 'skip'),
    icub3d_Macro('im_health_rev'),
    icub3d_Spell('Barkskin', 'skip'),
    icub3d_Spell('mouse', 'Force of Nature', 'Warrior of Elune', 'Survival Instincts', 'help',
        'Survival Instincts', 'Tranquility'),
}

-- Bottom Left (All)
icub3d_bottom_left = {
    icub3d_Spell('Dash'),
    icub3d_Spell('Prowl'),
    icub3d_Spell('Rebirth'),
    icub3d_Macro('im_charge_roar'),
    icub3d_Talent(1),
    icub3d_Talent(2),
    icub3d_Talent(3),
    icub3d_Talent(4),
    icub3d_Talent(5),
    icub3d_Talent(6),
    icub3d_Talent(7),
    icub3d_Spell('Bear Form'),
}

-- Bottom Right (All)
icub3d_bottom_right = {
    icub3d_Spell('Cat Form'),
    icub3d_Macro('im_travel'),
    icub3d_Macro('im_racial'),
    icub3d_Macro('im_trinket'),
    icub3d_Macro('im_entangling_hibernate'),
    icub3d_Spell('Soothe', 'skip'),
    icub3d_Macro('im_glider_foam'),
    icub3d_Macro('im_flap'),
    icub3d_Spell('Mark of the Wild', 'skip'),
    icub3d_Spell('Revive', 'skip'),
    icub3d_Spell('Revitalize', 'skip'),
    icub3d_Spell('Charm Woodland Creature', 'skip'),
}

icub3d_dragon = {
    icub3d_Spell('Whirling Surge'),
    icub3d_Spell('Surge Forward'),
    icub3d_Spell('Skyward Ascent'),
    icub3d_Spell('Bronze Timelock'),
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
