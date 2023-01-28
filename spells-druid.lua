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
    icub3d_Spell('Ursol\'s Vortex'),
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
    icub3d_Spell('Regrowth'),
    icub3d_Spell('Rejuvenation'),
    icub3d_Spell('Lifebloom', 'Starfire'),
    icub3d_Spell('Swiftmend'),
    icub3d_Spell('Wild Growth'),
    icub3d_Spell('Nature\'s Swiftness', 'Wrath'),
    icub3d_Spell('Cenarion Ward', 'Nourish', 'Starsurge'),
    icub3d_Spell('Ironbark', 'Sunfire'),
    icub3d_Spell('Efflorescence'),
    icub3d_Spell('Renewal'),
    icub3d_Spell('Convoke the Spirits(Shadowlands)'),
    icub3d_Spell('Adaptive Swarm')
}
-- Bear Form
icub3d_bear = {
    icub3d_Spell('Mangle'),
    icub3d_Spell('Maul'),
    icub3d_Spell('Thrash'),
    icub3d_Spell('Swipe'),
    icub3d_Spell('Ironfur'),
    icub3d_Spell('Growl'),
    icub3d_Spell('Frenzied Regeneration'),
    icub3d_Spell('Bristling Fur'),
    icub3d_Spell('Pulverize'),
    icub3d_Spell('Skull Bash'),
    icub3d_Spell('Convoke the Spirits(Shadowlands)'),
    icub3d_Spell('Rage of the Sleeper')
}

-- Cat/Prowl Form
icub3d_cat = {
    icub3d_Spell('Shred'),
    icub3d_Spell('Rake'),
    icub3d_Spell('Thrash'),
    icub3d_Spell('Swipe'),
    icub3d_Spell('Ferocious Bite'),
    icub3d_Spell('Maim'),
    icub3d_Spell('Rip'),
    icub3d_Skip(),
    icub3d_Spell('Tiger\'s Fury'),
    icub3d_Spell('Skull Bash'),
    icub3d_Spell('Convoke the Spirits(Shadowlands)'),
    icub3d_Spell("Adaptive Swarm")
}

-- Moonkin Form
icub3d_moonkin = {
    icub3d_Spell('Wrath'),
    icub3d_Spell('Starfire'),
    icub3d_Spell('Starsurge'),
    icub3d_Spell('Starfall'),
    icub3d_Spell('Stellar Flare'),
    icub3d_Spell('Wild Mushroom'),
    icub3d_Spell('New Moon', 'Fury of Elune'),
    icub3d_Spell('Moonfire'),
    icub3d_Spell('Sunfire'),
    icub3d_Macro('im_root_beam'),
    icub3d_Spell('Convoke the Spirits(Shadowlands)'),
    icub3d_Spell('Astral Commmunion'),
}

-- Top Right
icub3d_top_right = {
    icub3d_Spell_Spec('Celestial Alignment', 'Berserk', 'Berserk', 'Incarnation: Tree of Life'),
    icub3d_Spell_Spec('Regrowth', 'Brutal Slash', 'Demoralizing Roar', 'Flourish'),
    icub3d_Spell_Spec('Rejuvenation', 'Feral Frenzy', 'Grove Protection', 'Overgrowth'),
    icub3d_Spell_Spec('Swiftmend', 'Primal Wrath', 'Emerald Slumber', 'Invigorate'),
    icub3d_Spell('Moonfire'),
    icub3d_Spell('Sunfire'),
    icub3d_Spell('Lunar Beam', 'Wrath'),
    icub3d_Spell_Spec('Regrowth', 'Regrowth', 'Regrowth', 'Starfire'),
    icub3d_Spell('Thorns', 'Overrun'),
    icub3d_Macro('im_health_rev'),
    icub3d_Spell('Barkskin'),
    icub3d_Spell('Force of Nature', 'Warrior of Elune', 'Survival Instincts', 'help',
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
    icub3d_Spell('Soothe'),
    icub3d_Macro('im_glider_foam'),
    icub3d_Macro('im_flap'),
    icub3d_Spell('Mark of the Wild'),
    icub3d_Spell('Revive'),
    icub3d_Spell('Revitalize'),
    icub3d_Spell('Charm Woodland Creature'),
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
