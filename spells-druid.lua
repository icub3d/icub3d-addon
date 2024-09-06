local classTalents = {
    ICUB3D_Spell('Stampeding Roar'),
    ICUB3D_Spell('Innervate'),
    ICUB3D_Spell('Heart of the Wild'),
    ICUB3D_Spell('Remove Corruption'),
    ICUB3D_Spell('Nature\'s Vigil'),
    ICUB3D_Spell('Renewal'),
    ICUB3D_Spell('Ursol\'s Vortex'),
    ICUB3D_Spell('Incapacitating Roar'),
    ICUB3D_Spell('Mighty Bash'),
    ICUB3D_Spell('Cyclone'),
    ICUB3D_Spell('Typhoon'),
    ICUB3D_Spell('Hibernate'),
}

local normal = {
    ICUB3D_Spell('Wild Growth'),
    ICUB3D_Spell('Cenarion Ward', 'Nourish'),
    ICUB3D_Spell('Nature\'s Swiftness'),
    ICUB3D_Spell('Ironbark'),
    ICUB3D_Skip(),
    ICUB3D_Spell('Swiftmend'),
    ICUB3D_Spell('Efflorescence'),
    ICUB3D_Spell('Grove Guardians'),
    ICUB3D_Spell('Shred'),
    ICUB3D_Spell('Rake'),
    ICUB3D_Spell('Rejuvenation'),
    ICUB3D_Spell('Lifebloom'),
}

local bear = {
    ICUB3D_Spell('Frenzied Regeneration'),
    ICUB3D_Spell('Pulverize', 'Lunar Beam'),
    ICUB3D_Skip(),
    ICUB3D_Spell('Growl'),
    ICUB3D_Spell('Mangle'),
    ICUB3D_Spell('Swipe'),
    ICUB3D_Spell('Thrash'),
    ICUB3D_Spell('Maul'),
    ICUB3D_Skip(),
    ICUB3D_Skip(),
    ICUB3D_Spell('Ironfur'),
    ICUB3D_Spell('Bristling Fur', 'Raze'),
}

local cat = {
    ICUB3D_Spell('Maim'),
    ICUB3D_Spell('Ferocious Bite'),
    ICUB3D_Spell('Rip'),
    ICUB3D_Spell('Shred'),
    ICUB3D_Spell('Rake'),
    ICUB3D_Spell('Thrash'),
    ICUB3D_Spell('Swipe'),
    ICUB3D_Spell('Primal Wrath'),
    ICUB3D_Skip(),
    ICUB3D_Skip(),
    ICUB3D_Spell('Tiger\'s Fury'),
    ICUB3D_Spell("Adaptive Swarm")
}

local moonkin = {
    ICUB3D_Spell('New Moon', 'Fury of Elune'),
    ICUB3D_Macro('im_root_beam'),
    ICUB3D_Spell('Stellar Flare'),
    ICUB3D_Skip(),
    ICUB3D_Spell('Wrath'),
    ICUB3D_Spell('Starsurge'),
    ICUB3D_Spell('Starfire'),
    ICUB3D_Spell('Starfall'),
    ICUB3D_Skip(),
    ICUB3D_Skip(),
    ICUB3D_Spell('Astral Commmunion'),
    ICUB3D_Spell('Wild Mushroom'),
}

local topRight = {
    ICUB3D_SpellSpec('Celestial Alignment', 'Berserk', 'Berserk', 'Incarnation: Tree of Life'),
    ICUB3D_Spell('Brutal Slash', 'Demoralizing Roar', 'Flourish'),
    ICUB3D_Spell('Feral Frenzy', 'Grove Protection', 'Overgrowth'),
    ICUB3D_Spell('Emerald Slumber', 'Invigorate'),
    ICUB3D_Spell('Convoke the Spirits'),
    ICUB3D_Spell('Sunfire'),
    ICUB3D_Spell('Wrath'),
    ICUB3D_Spell('Starfire'),
    ICUB3D_Spell('Thorns', 'Overrun', 'Starsurge'),
    ICUB3D_Skip(),
    ICUB3D_Spell('Rage of the Sleeper'),
    ICUB3D_Spell('Force of Nature', 'Warrior of Elune', 'Survival Instincts', 'Tranquility'),
}

local bottomLeft = {
    ICUB3D_Spell('Regrowth'),
    ICUB3D_Spell('Moonfire'),
    ICUB3D_Macro('im_skull_bash'),
    ICUB3D_Spell('Wild Charge'),
    ICUB3D_Spell('Soothe'),
    ICUB3D_Spell('Dash'),
    ICUB3D_Talent(1),
    ICUB3D_Talent(2),
    ICUB3D_Talent(3),
    ICUB3D_Talent(4),
    ICUB3D_Talent(5),
    ICUB3D_Talent(6),
}

local bottomRight = {
    ICUB3D_Talent(7),
    ICUB3D_Skip(),
    ICUB3D_Spell('Entangling Roots'),
    ICUB3D_Spell('Rebirth'),
    ICUB3D_Macro('im_racial'),
    ICUB3D_Macro('im_trinket'),
    ICUB3D_Macro('im_health'),
    ICUB3D_Macro('im_healthstone'),
    ICUB3D_Macro('im_flap'),
    ICUB3D_Spell('Mark of the Wild'),
    ICUB3D_Spell('Revive'),
    ICUB3D_Spell('Revitalize'),
}

local forms = {
    ICUB3D_Spell('Bear Form'),
    ICUB3D_Spell('Cat Form'),
    ICUB3D_Spell('Travel Form'),
    ICUB3D_Spell('Moonkin Form'),
    ICUB3D_Spell('Barkskin'),
    ICUB3D_Macro('im_prowl'),
    ICUB3D_Skip(),
    ICUB3D_Skip(),
    ICUB3D_Skip(),
    ICUB3D_Skip(),
    ICUB3D_Skip(),
    ICUB3D_Skip(),
}

local spells = ICUB3D_joinSpells(
    {
        normal,
        ICUB3D_SkipAll,
        bottomRight,
        forms,
        bottomLeft,
        topRight,
        cat,
        cat,
        bear,
        moonkin,
        ICUB3D_Dragon,
    }
)

ICUB3D_Spells['DRUID'] = {
    specs = {
        {
            tags = {
                'b',
                'bal',
                'balance'
            },
            talent = classTalents,
            actionbar = spells,
        },
        {
            tags = {
                'f',
                'feral'
            },
            talent = classTalents,
            actionbar = spells,
        },
        {
            tags = {
                'g',
                'guard',
                'guardian'
            },
            talent = classTalents,
            actionbar = spells,
        },
        {
            tags = {
                'r',
                'resto',
                'restoration'
            },
            talent = classTalents,
            actionbar = spells,
        },
    },
}
