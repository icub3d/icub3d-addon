local talents = {
    ICUB3D_Spell('Raze'),
    ICUB3D_Spell('Heart of the Wild'),
    ICUB3D_Spell('Remove Corruption'),
    ICUB3D_Spell('Nature\'s Cure'),
    ICUB3D_Spell('Innervate'),
    ICUB3D_Spell('Nature\'s Vigil'),
    ICUB3D_Spell('Renewal'),
    ICUB3D_Spell('Ursol\'s Vortex'),
    ICUB3D_Spell('Mass Entanglement'),
    ICUB3D_Spell('Incapacitating Roar'),
    ICUB3D_Spell('Mighty Bash'),
    ICUB3D_Spell('Cyclone'),
    ICUB3D_Spell('Typhoon'),
    ICUB3D_Spell('Starfire'),
}

local normal = {
    ICUB3D_Spell('Regrowth'),
    ICUB3D_Spell('Rejuvenation'),
    ICUB3D_Spell('Lifebloom', 'Starfire'),
    ICUB3D_Spell('Swiftmend'),
    ICUB3D_Spell('Wild Growth'),
    ICUB3D_Spell('Nature\'s Swiftness', 'Wrath'),
    ICUB3D_Spell('Cenarion Ward', 'Nourish', 'Starsurge'),
    ICUB3D_Spell('Ironbark', 'Sunfire'),
    ICUB3D_Spell('Efflorescence'),
    ICUB3D_Spell('Renewal'),
    ICUB3D_Spell('Convoke the Spirits', 'Incarnation: Tree of Life'),
    ICUB3D_Spell('Adaptive Swarm')
}

local bear = {
    ICUB3D_Spell('Mangle'),
    ICUB3D_Spell('Maul'),
    ICUB3D_Spell('Thrash'),
    ICUB3D_Spell('Swipe'),
    ICUB3D_Spell('Ironfur'),
    ICUB3D_Spell('Growl'),
    ICUB3D_Spell('Frenzied Regeneration'),
    ICUB3D_Spell('Bristling Fur', 'Raze'),
    ICUB3D_Spell('Pulverize'),
    ICUB3D_Spell('Skull Bash'),
    ICUB3D_Spell('Convoke the Spirits'),
    ICUB3D_Spell('Rage of the Sleeper')
}

local cat = {
    ICUB3D_Spell('Shred'),
    ICUB3D_Spell('Rake'),
    ICUB3D_Spell('Thrash'),
    ICUB3D_Spell('Swipe'),
    ICUB3D_Spell('Ferocious Bite'),
    ICUB3D_Spell('Maim'),
    ICUB3D_Spell('Rip'),
    ICUB3D_Skip(),
    ICUB3D_Spell('Tiger\'s Fury'),
    ICUB3D_Spell('Skull Bash'),
    ICUB3D_Spell('Convoke the Spirits'),
    ICUB3D_Spell("Adaptive Swarm")
}

local moonkin = {
    ICUB3D_Spell('Wrath'),
    ICUB3D_Spell('Starfire'),
    ICUB3D_Spell('Starsurge'),
    ICUB3D_Spell('Starfall'),
    ICUB3D_Spell('Stellar Flare'),
    ICUB3D_Spell('Wild Mushroom'),
    ICUB3D_Spell('New Moon', 'Fury of Elune'),
    ICUB3D_Spell('Moonfire'),
    ICUB3D_Spell('Sunfire'),
    ICUB3D_Macro('im_root_beam'),
    ICUB3D_Spell('Convoke the Spirits'),
    ICUB3D_Spell('Astral Commmunion'),
}

local topRight = {
    ICUB3D_SpellSpec('Celestial Alignment', 'Berserk', 'Berserk', 'Grove Guardians'),
    ICUB3D_SpellSpec('Regrowth', 'Brutal Slash', 'Demoralizing Roar', 'Flourish'),
    ICUB3D_SpellSpec('Rejuvenation', 'Feral Frenzy', 'Grove Protection', 'Overgrowth'),
    ICUB3D_SpellSpec('Swiftmend', 'Primal Wrath', 'Emerald Slumber', 'Invigorate'),
    ICUB3D_Spell('Moonfire'),
    ICUB3D_Spell('Sunfire'),
    ICUB3D_Spell('Lunar Beam', 'Wrath'),
    ICUB3D_SpellSpec('Regrowth', 'Regrowth', 'Regrowth', 'Starfire'),
    ICUB3D_Spell('Thorns', 'Overrun'),
    ICUB3D_Macro('im_health_rev'),
    ICUB3D_Spell('Barkskin'),
    ICUB3D_Spell('Force of Nature', 'Warrior of Elune', 'Survival Instincts',
        'Survival Instincts', 'Tranquility'),
}

local bottomLeft = {
    ICUB3D_Spell('Dash'),
    ICUB3D_Spell('Prowl'),
    ICUB3D_Spell('Rebirth'),
    ICUB3D_Macro('im_charge_roar'),
    ICUB3D_Talent(1),
    ICUB3D_Talent(2),
    ICUB3D_Talent(3),
    ICUB3D_Talent(4),
    ICUB3D_Talent(5),
    ICUB3D_Talent(6),
    ICUB3D_Talent(7),
    ICUB3D_Spell('Bear Form'),
}

local bottomRight = {
    ICUB3D_Spell('Cat Form'),
    ICUB3D_Macro('im_travel'),
    ICUB3D_Macro('im_racial'),
    ICUB3D_Macro('im_trinket'),
    ICUB3D_Macro('im_entangling_hibernate'),
    ICUB3D_Macro('im_soothe'),
    ICUB3D_Macro('im_glider_foam'),
    ICUB3D_Macro('im_flap'),
    ICUB3D_Spell('Mark of the Wild'),
    ICUB3D_Spell('Revive'),
    ICUB3D_Spell('Revitalize', 'Switch Flight Style'),
    ICUB3D_Spell('Charm Woodland Creature'),
}

local spells = ICUB3D_joinSpells(
    {
        normal,
        topRight,
        bottomLeft,
        bottomRight,
        ICUB3D_SkipAll,
        cat,
        cat,
        bear,
        moonkin,
        ICUB3D_Dragon
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
            talent = talents,
            actionbar = spells,
        },
        {
            tags = {
                'f',
                'feral'
            },
            talent = talents,
            actionbar = spells,
        },
        {
            tags = {
                'g',
                'guard',
                'guardian'
            },
            talent = talents,
            actionbar = spells,
        },
        {
            tags = {
                'r',
                'resto',
                'restoration'
            },
            talent = talents,
            actionbar = spells,
        },
    },
}
