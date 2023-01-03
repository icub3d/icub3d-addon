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
-- Bottom Left (All)
icub3d_bottom_left = {
    icub3d_Spell('help', 'Dash'),
    icub3d_Spell('help', 'Prowl'),
    icub3d_Spell('help', 'Rebirth'),
    icub3d_Spell('help', 'Stampeding Roar', 'skip', 'skip'),
    icub3d_Spell('help', 'Innervate', 'skip', 'skip'),
    icub3d_Spell('help', 'Nature\'s Cure', 'help', 'Remove Corruption', 'harm', 'Adaptive Swarm', 'skip', 'skip'),
    icub3d_Talent(1),
    icub3d_Spell('use', 'Goblin Glider Kit'),
    icub3d_Talent(2),
    icub3d_Macro('im_trinket'),
    icub3d_Talent(3),
    icub3d_Spell('simple', 'Bear Form')
}

-- Bottom Right (All)
icub3d_bottom_right = {
    icub3d_Spell('simple', 'Cat Form'),
    icub3d_Macro('im_travel'),
    icub3d_Spell('simple', 'Moonkin Form', 'skip', 'skip'),
    icub3d_Talent(4),
    icub3d_Talent(5),
    icub3d_Spell('harm', 'Soothe'),
    icub3d_Spell('harm', 'Hibernate', 'skip', 'skip'),
    icub3d_Macro('im_cloak_belt'),
    icub3d_Skip(),
    icub3d_Skip(),
    icub3d_Skip(),
    icub3d_Skip()
}

icub3d_dragon = {
    icub3d_Spell('simple', 'Whirling Surge'),
    icub3d_Spell('simple', 'Surge Forward'),

    icub3d_Spell('simple', 'Skyward Ascent'),
    icub3d_Spell('simple', 'Bronze Timelock'),
    icub3d_Spell('help', 'Rejuvenation', 'skip', 'skip'),
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

------------------------------------------------------------------------
-- Balance Specific 
------------------------------------------------------------------------
-- Balance Moonkin Form
icub3d_balance_moonkin = {
    icub3d_Spell('harm', 'Moonfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Wrath', 'skip', 'skip'),
    icub3d_Spell('harm', 'Sunfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starsurge', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starfall', 'skip', 'skip'),
    icub3d_Skip(),
    icub3d_Spell('harm', 'Entangling Roots'),
    icub3d_Skip(),
    icub3d_Macro('im_root_beam'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

-- Balance Top Right Form
icub3d_balance_top_right = {
    icub3d_Macro('im_racial'),
    icub3d_Spell('help', 'Celestial Alignment', 'skip', 'skip'),
    icub3d_Macro('im_health_rev'),
    icub3d_Spell('help', 'Barkskin'),
    icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('help', 'Thorns', 'skip', 'skip'),
    icub3d_Spell('harm', 'Faerie Swarm', 'help', 'Wild Growth', 'harm', 'Wild Mushroom', 'skip', 'skip'),
    icub3d_Spell('help', 'Swiftmend', 'skip', 'skip'),

    icub3d_Spell('harm', 'Ursol\'s Vortex', 'skip', 'skip'),
    icub3d_Spell('harm', 'Typhoon', 'harm', 'Entangling Roots', 'skip', 'skip'),
    icub3d_Spell('harm', 'Cyclone')
}

-- Balance Cat/Prowl Form
icub3d_balance_cat_prowl = {
    icub3d_Spell('harm', 'Shred', 'harm', 'Moonfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Rake', 'harm', 'Wrath', 'skip', 'skip'),
    icub3d_Spell('both', 'Thrash', 'harm', 'Sunfire', 'skip', 'skip'),
    icub3d_Spell('both', 'Swipe', 'harm', 'harm', 'Starfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ferocious Bite', 'Starsurge', 'skip', 'skip'),
    icub3d_Spell('harm', 'Maim', 'harm', 'harm', 'Starfall', 'skip', 'skip'),
    icub3d_Spell('harm', 'Rip', 'skip', 'skip'),
    icub3d_Spell('help', 'Berserk', 'harm', 'Entangling Roots', 'skip', 'skip'),
    icub3d_Spell('help', 'Tiger\'s Fury', 'skip', 'skip'),
    icub3d_Spell('harm', 'Skull Bash', 'macro', 'im_root_beam', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

-- Balance Bear Form
icub3d_balance_bear = {
    icub3d_Spell('harm', 'Mangle', 'harm', 'Moonfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Maul', 'harm', 'Wrath', 'skip', 'skip'),
    icub3d_Spell('both', 'Thrash', 'harm', 'Sunfire', 'skip', 'skip'),
    icub3d_Spell('both', 'Swipe', 'harm', 'Starfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ironfur', 'harm', 'Starsurge', 'skip', 'skip'),
    icub3d_Spell('harm', 'Growl', 'harm', 'Starfall', 'skip', 'skip'),
    icub3d_Spell('harm', 'Frenzied Regeneration', 'skip', 'skip'),
    icub3d_Spell('help', 'Berserk', 'harm', 'Entangling Roots', 'skip', 'skip'),
    icub3d_Spell('help', 'Incapacitating Roar', 'skip', 'skip'),
    icub3d_Spell('harm', 'Skull Bash', 'macro', 'im_root_beam', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

------------------------------------------------------------------------
-- Restoration Specific 
------------------------------------------------------------------------
-- Restoration Moonkin Form
icub3d_restoration_normal = {
    icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('help', 'Lifebloom', 'skip', 'skip'),
    icub3d_Spell('help', 'Swiftmend', 'skip', 'skip'),
    icub3d_Spell('help', 'Wild Growth', 'skip', 'skip'),
    icub3d_Spell('help', 'Nature\'s Swiftness', 'skip', 'skip'),
    icub3d_Spell('help', 'Cenarion Ward', 'help', 'Nourish', 'skip', 'skip'),
    icub3d_Spell('help', 'Ironbark', 'skip', 'skip'),
    icub3d_Spell('help', 'Efflorescence', 'skip', 'skip'),
    icub3d_Spell('help', 'Renewal', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

icub3d_restoration_moonkin = {
    icub3d_Spell('harm', 'Moonfire', 'help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Wrath', 'help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('harm', 'Sunfire', 'help', 'Lifebloom', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starfire', 'help', 'Switftmend', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starsurge', 'help', 'Wild Growth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starfall', 'skip', 'skip'),
    icub3d_Spell('help', 'Ironbark', 'skip', 'skip'),
    icub3d_Spell('harm', 'Entangling Roots', 'help', 'Efflorescence', 'skip', 'skip'),
    icub3d_Spell('help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

-- Restoration Top Right Form
icub3d_restoration_top_right = {
    icub3d_Macro('im_racial'),
    icub3d_Spell('help', 'Tranquility'),
    icub3d_Macro('im_health_rev'),
    icub3d_Spell('help', 'Barkskin'),
    icub3d_Spell('harm', 'Moonfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Wrath', 'skip', 'skip'),
    icub3d_Spell('harm', 'Sunfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starfall', 'help', 'Overgrowth', 'help', 'Incarnation: Tree of Life', 'skip', 'skip'),
    icub3d_Spell('help', 'Thorns', 'help', 'Flourish', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ursol\'s Vortex', 'skip', 'skip'),
    icub3d_Spell('harm', 'Typhoon', 'harm', 'Entangling Roots', 'skip', 'skip'),
    icub3d_Spell('harm', 'Cyclone')
}

-- Restoration Cat/Prowl Form
icub3d_restoration_cat_prowl = {
    icub3d_Spell('harm', 'Shred', 'help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Rake', 'help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('both', 'Thrash', 'help', 'Lifebloom', 'skip', 'skip'),
    icub3d_Spell('both', 'Swipe', 'help', 'Swiftmend', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ferocious Bite', 'help', 'Wild Growth', 'skip', 'skip'),

    icub3d_Spell('harm', 'Maim', 'help', 'Nature\'s Swiftness', 'skip', 'skip'),
    icub3d_Spell('harm', 'Rip', 'help', 'skip', 'skip'),
    icub3d_Spell('help', 'Berserk', 'help', 'Ironbark', 'skip', 'skip'),
    icub3d_Spell('help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

-- Restoration Bear Form
icub3d_restoration_bear = {
    icub3d_Spell('harm', 'Mangle', 'help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Maul', 'help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('both', 'Thrash', 'help', 'Lifebloom', 'skip', 'skip'),
    icub3d_Spell('both', 'Swipe', 'help', 'Swiftmend', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ironfur', 'help', 'Wild Growth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Growl', 'help', 'Nature\'s Swiftness', 'skip', 'skip'),
    icub3d_Spell('harm', 'Frenzied Regeneration', 'skip', 'skip'),
    icub3d_Spell('help', 'Berserk', 'help', 'Ironbark', 'skip', 'skip'),
    icub3d_Spell('help', 'Incapacitating Roar', 'help', 'Efflorescence', 'skip', 'skip'),
    icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

------------------------------------------------------------------------
-- Feral Specific 
------------------------------------------------------------------------
-- Feral Cat/Prowl Form
icub3d_feral_cat_prowl = {
    icub3d_Spell('harm', 'Shred', 'help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Rake', 'help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('both', 'Thrash', 'help', 'Lifebloom', 'skip', 'skip'),
    icub3d_Spell('both', 'Swipe', 'help', 'Swiftmend', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ferocious Bite', 'help', 'Wild Growth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Maim', 'skip', 'skip'),
    icub3d_Spell('harm', 'Rip', 'help', 'skip', 'skip'),
    icub3d_Spell('help', 'Berserk', 'skip', 'skip'),
    icub3d_Spell('help', 'Tiger\'s Fury', 'skip', 'skip'),
    icub3d_Spell('harm', 'Skull Bash', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

-- Feral Top Right
icub3d_feral_top_right = {
    icub3d_Macro('im_racial'),
    icub3d_Spell('help', 'Celestial Alignment', 'skip', 'skip'),
    icub3d_Macro('im_health_rev'),
    icub3d_Spell('help', 'Barkskin'),
    icub3d_Spell('harm', 'Moonfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Wrath', 'skip', 'skip'),
    icub3d_Spell('harm', 'Sunfire', 'skip', 'skip'),
    icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starfall', 'help', 'Survival Instincts', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ursol\'s Vortex', 'skip', 'skip'),
    icub3d_Spell('harm', 'Typhoon', 'harm', 'Entangling Roots', 'skip', 'skip'),
    icub3d_Spell('harm', 'Cyclone')
}

-- Feral Bear Form
icub3d_feral_bear = {
    icub3d_Spell('harm', 'Mangle', 'help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Maul', 'help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('both', 'Thrash', 'help', 'Lifebloom', 'skip', 'skip'),
    icub3d_Spell('both', 'Swipe', 'help', 'Swiftmend', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ironfur', 'help', 'Wild Growth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Growl', 'skip', 'skip'),
    icub3d_Spell('harm', 'Frenzied Regeneration', 'skip', 'skip'),
    icub3d_Spell('help', 'Berserk', 'skip', 'skip'),
    icub3d_Spell('help', 'Incapacitating Roar', 'skip', 'skip'),
    icub3d_Spell('harm', 'Skull Bash', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

-- Feral normal/moonkin Form
icub3d_feral_normal = {
    icub3d_Spell('harm', 'Moonfire', 'help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Wrath', 'help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('harm', 'Sunfire', 'help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starfire', 'help', 'Swiftmend', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starsurge', 'help', 'Wild Growth', 'skip', 'skip'),
    icub3d_Spell('skip', 'skip'),
    icub3d_Spell('skip', 'skip'),
    icub3d_Spell('harm', 'Entangling Roots', 'skip', 'skip'),
    icub3d_Spell('help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

------------------------------------------------------------------------
-- Guardian Specific 
------------------------------------------------------------------------
-- Feral Cat/Prowl Form
icub3d_guardian_cat_prowl = {
    icub3d_Spell('harm', 'Shred', 'help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Rake', 'help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('both', 'Thrash', 'help', 'Lifebloom', 'skip', 'skip'),
    icub3d_Spell('both', 'Swipe', 'help', 'Swiftmend', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ferocious Bite', 'help', 'Wild Growth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Maim', 'skip', 'skip'),
    icub3d_Spell('harm', 'Rip', 'help', 'skip', 'skip'),
    icub3d_Spell('help', 'Berserk', 'skip', 'skip'),
    icub3d_Spell('help', 'Tiger\'s Fury', 'help', 'Incapacitating Roar', 'skip', 'skip'),
    icub3d_Spell('harm', 'Skull Bash', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

-- Guardian Top Right
icub3d_guardian_top_right = {
    icub3d_Macro('im_racial'),
    icub3d_Spell('help', 'Celestial Alignment', 'skip', 'skip'),
    icub3d_Macro('im_health_rev'),
    icub3d_Spell('help', 'Barkskin'),
    icub3d_Spell('harm', 'Moonfire', 'skip', 'skip'),
    icub3d_Spell('harm', 'Wrath', 'skip', 'skip'),
    icub3d_Spell('harm', 'Sunfire', 'skip', 'skip'),
    icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starfall', 'help', 'Survival Instincts', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ursol\'s Vortex', 'skip', 'skip'),
    icub3d_Spell('harm', 'Typhoon', 'harm', 'Entangling Roots', 'skip', 'skip'),
    icub3d_Spell('harm', 'Cyclone', 'skip', 'skip')

}

-- Guardian Bear Form
icub3d_guardian_bear = {
    icub3d_Spell('harm', 'Mangle', 'help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Maul', 'help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('both', 'Thrash', 'help', 'Lifebloom', 'skip', 'skip'),
    icub3d_Spell('both', 'Swipe', 'help', 'Swiftmend', 'skip', 'skip'),
    icub3d_Spell('harm', 'Ironfur', 'help', 'Wild Growth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Growl', 'skip', 'skip'),
    icub3d_Spell('harm', 'Frenzied Regeneration', 'skip', 'skip'),
    icub3d_Spell('help', 'Berserk', 'skip', 'skip'),
    icub3d_Spell('help', 'Incapacitating Roar', 'skip', 'skip'),
    icub3d_Spell('harm', 'Skull Bash', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'help', 'Rage of the Sleeper', 'skip', 'skip'),
    icub3d_Spell('help', "Nature's Vigil", 'help', 'Rage of the Sleeper', 'skip', 'skip')
}

-- Guardian normal/moonkin Form
icub3d_guardian_normal = {
    icub3d_Spell('harm', 'Moonfire', 'help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('harm', 'Wrath', 'help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('harm', 'Sunfire', 'help', 'Rejuvenation', 'skip', 'skip'),

    icub3d_Spell('harm', 'Starfire', 'help', 'Swiftmend', 'skip', 'skip'),
    icub3d_Spell('harm', 'Starsurge', 'help', 'Wild Growth', 'skip', 'skip'),
    icub3d_Spell('skip', 'skip'),
    icub3d_Spell('skip', 'skip'),
    icub3d_Spell('harm', 'Entangling Roots', 'skip', 'skip'),
    icub3d_Spell('help', 'Rejuvenation', 'skip', 'skip'),
    icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
    icub3d_Spell('help', 'Convoke the Spirits(Shadowlands)', 'skip', 'skip'),
    icub3d_Spell('help', "Nature's Vigil", 'skip', 'skip')
}

icub3d_Druid_Talents = { -- resto has 8 if we use all
    -- all --
    icub3d_Spell('harm', 'Adaptive Swarm(Shadowlands)'),
    icub3d_Spell('help', 'Renewal'),
    icub3d_Spell('simple', 'Wild Charge'),
    icub3d_Spell('harm', 'Mighty Bash'),
    icub3d_Spell('harm', 'Mass Entanglement'),
    icub3d_Spell('help', 'Heart of the Wild'),
    icub3d_Spell('help', 'Nature\'s Vigil'), -- balance --
    icub3d_Spell('help', 'Warrior of Elune'),
    icub3d_Spell('mouse', 'Force of Nature'),
    icub3d_Spell('harm', 'Stellar Flare'),
    icub3d_Spell('harm', 'Fury of Elune'),
    icub3d_Spell('harm', 'New Moon'),

    -- feral --
    icub3d_Spell('help', 'Savage Roar'),
    icub3d_Spell('harm', 'Primal Wrath'),
    icub3d_Spell('harm', 'Feral Frenzy'), -- guardian --
    icub3d_Spell('help', 'Bristling Fur'),
    icub3d_Spell('harm', 'Pulverize'), -- restoration -- 
    icub3d_Spell('help', 'Nourish'),
    icub3d_Spell('help', 'Cenarion Ward'),
    icub3d_Spell('help', 'Incarnation: Tree of Life'),
    icub3d_Spell('help', 'Overgrowth'),
    icub3d_Spell('help', 'Flourish'), -- pvp --

    icub3d_Spell('help', 'Thorns'),
    icub3d_Spell('harm', 'Faerie Swarm'),
    icub3d_Spell('harm', 'Rip and Tear'),
    icub3d_Spell('help', 'Demoralizing Roar'),
    icub3d_Spell('help', 'Overrun'),
    icub3d_Spell('help', 'Roar of the Protector'),
    icub3d_Spell('help', 'Mark of the Wild')
}

icub3d_Spells['DRUID'] = {
    specs = {
        {
            tags = {
                'b',
                'bal',
                'balance'
            },
            talents = {},
            talent = icub3d_Druid_Talents,
            actionbar = icub3d_join_spells(
              {
                  icub3d_balance_moonkin,
                  icub3d_balance_top_right,
                  icub3d_bottom_left,
                  icub3d_bottom_right,
                  icub3d_skip_all,
                  icub3d_balance_cat_prowl,
                  icub3d_balance_cat_prowl,
                  icub3d_balance_bear,
                  icub3d_balance_moonkin,
                  icub3d_dragon
              }
            )
        },
        {
            tags = {
                'f',
                'feral'
            },

            talents = {},
            talent = icub3d_Druid_Talents,
            actionbar = icub3d_join_spells(
              {
                  icub3d_feral_normal,
                  icub3d_feral_top_right,
                  icub3d_bottom_left,
                  icub3d_bottom_right,
                  icub3d_skip_all,
                  icub3d_feral_cat_prowl,
                  icub3d_feral_cat_prowl,
                  icub3d_feral_bear,
                  icub3d_feral_normal,
                  icub3d_dragon
              }
            )
        },
        {
            tags = {
                'g',
                'guard',
                'guardian'
            },

            talents = {},
            talent = icub3d_Druid_Talents,
            actionbar = icub3d_join_spells(
              {
                  icub3d_guardian_normal,
                  icub3d_guardian_top_right,
                  icub3d_bottom_left,
                  icub3d_bottom_right,
                  icub3d_skip_all,
                  icub3d_guardian_cat_prowl,
                  icub3d_guardian_cat_prowl,
                  icub3d_guardian_bear,
                  icub3d_guardian_normal,
                  icub3d_dragon
              }
            )
        },
        {
            tags = {
                'r',
                'resto',
                'restoration'
            },
            talent = icub3d_Druid_Talents,
            actionbar = icub3d_join_spells(
              {
                  icub3d_restoration_normal,
                  icub3d_restoration_top_right,
                  icub3d_bottom_left,
                  icub3d_bottom_right,
                  icub3d_skip_all,
                  icub3d_restoration_cat_prowl,
                  icub3d_restoration_cat_prowl,
                  icub3d_restoration_bear,
                  icub3d_restoration_moonkin,
                  icub3d_dragon
              }
            ),
            talents = {}
        }
    }
}
