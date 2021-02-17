-- This one is a bit more confusing for some reason. It's wierd to
-- have some common spells in less common places. So the main bar has
-- the main spells for a given spec and then the less common spells
-- are elsewhere.

function icub3d_join_spells(a, b, c, d, e, f, g, h, i)
   r = {}
   for k,v in pairs(a) do table.insert(r, v) end
   for k,v in pairs(b) do table.insert(r, v) end
   for k,v in pairs(c) do table.insert(r, v) end
   for k,v in pairs(d) do table.insert(r, v) end
   for k,v in pairs(e) do table.insert(r, v) end
   for k,v in pairs(f) do table.insert(r, v) end
   for k,v in pairs(g) do table.insert(r, v) end
   for k,v in pairs(h) do table.insert(r, v) end
   for k,v in pairs(i) do table.insert(r, v) end
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
   icub3d_Spell('help', 'Nature\'s Cure', 'help', 'Remove Corruption',
				'skip', 'skip'),
   icub3d_Talent(1),
   icub3d_Spell('use', 'Goblin Glider Kit'),
   icub3d_Talent(2),
   icub3d_Macro('im_trinket'),
   icub3d_Talent(3),
   icub3d_Spell('simple', 'Bear Form'),
}

-- Bottom Right (All)
icub3d_bottom_right = {
   icub3d_Spell('simple', 'Cat Form'),
   icub3d_Macro('im_travel'),
   icub3d_Spell('simple', 'Moonkin Form', 'skip', 'skip'),
   icub3d_Talent(4),
   icub3d_Talent(5),
   icub3d_Spell('harm', 'Soothe'),
   icub3d_Spell('harm', 'Hibernate'),
   icub3d_Macro('im_cloak_belt'),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
   icub3d_Skip(),
}

-- Skip (All)
icub3d_skip_all = {
   -- We have to skip these for druid, warrior, rogue
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
   icub3d_Skip(),
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
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
}

-- Balance Top Right Form
icub3d_balance_top_right = {
   icub3d_Macro('im_racial'),
   icub3d_Spell('help', 'Celestial Alignment'),
   icub3d_Macro('im_health_rev'),
   icub3d_Spell('help', 'Barkskin'),   
   icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
   icub3d_Spell('help', 'Rejuvenation', 'skip', 'skip'),
   icub3d_Skip(),
   icub3d_Spell('help', 'Wild Growth', 'skip', 'skip'),
   icub3d_Spell('help', 'Swiftmend', 'skip', 'skip'),
   icub3d_Spell('harm', 'Ursol\'s Vortex', 'skip', 'skip'),
   icub3d_Spell('harm', 'Typhoon', 'skip', 'skip'),
   icub3d_Spell('harm', 'Cyclone'),
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
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
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
   icub3d_Spell('help', 'Berserk', 'harm', 'Entangling Roots',
				'skip', 'skip'),
   icub3d_Spell('help', 'Incapacitating Roar', 'skip', 'skip'),
   icub3d_Spell('harm', 'Skull Bash', 'macro', 'im_root_beam', 'skip', 'skip'),
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
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
   icub3d_Skip(),
   icub3d_Spell('help', 'Ironbark', 'skip', 'skip'),
   icub3d_Spell('help', 'Efflorescence', 'skip', 'skip'),
   icub3d_Skip(),
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
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
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
}

-- Restoration Top Right Form
icub3d_restoration_top_right = {
   icub3d_Macro('im_racial'),
   icub3d_Spell('help', 'Celestial Alignment'),
   icub3d_Macro('im_health_rev'),
   icub3d_Spell('help', 'Barkskin'),   
   icub3d_Spell('harm', 'Moonfire', 'skip', 'skip'),
   icub3d_Spell('harm', 'Wrath', 'skip', 'skip'),
   icub3d_Spell('harm', 'Sunfire', 'skip', 'skip'),
   icub3d_Spell('harm', 'Starfall', 'skip', 'skip'),
   icub3d_Skip(),
   icub3d_Spell('harm', 'Ursol\'s Vortex', 'skip', 'skip'),
   icub3d_Spell('harm', 'Typhoon', 'skip', 'skip'),
   icub3d_Spell('harm', 'Cyclone'),
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
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
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
   icub3d_Spell('help', 'Berserk', 'help', 'Ironbark',
				'skip', 'skip'),
   icub3d_Spell('help', 'Incapacitating Roar', 'help', 'Efflorescence',
				'skip', 'skip'),
   icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
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
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
}

-- Feral Top Right
icub3d_feral_top_right = {
   icub3d_Macro('im_racial'),
   icub3d_Spell('help', 'Celestial Alignment'),
   icub3d_Macro('im_health_rev'),
   icub3d_Spell('help', 'Barkskin'),   
   icub3d_Spell('harm', 'Moonfire', 'skip', 'skip'),
   icub3d_Spell('harm', 'Wrath', 'skip', 'skip'),
   icub3d_Spell('harm', 'Sunfire', 'skip', 'skip'),
   icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
   icub3d_Spell('harm', 'Starfall', 'skip', 'skip'),
   icub3d_Spell('harm', 'Ursol\'s Vortex', 'skip', 'skip'),
   icub3d_Spell('harm', 'Typhoon', 'skip', 'skip'),
   icub3d_Spell('harm', 'Cyclone'),
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
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
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
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
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
   icub3d_Spell('help', 'Tiger\'s Fury', 'skip', 'skip'),
   icub3d_Spell('harm', 'Skull Bash', 'skip', 'skip'),
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
}

-- Guardian Top Right
icub3d_guardian_top_right = {
   icub3d_Macro('im_racial'),
   icub3d_Spell('help', 'Celestial Alignment'),
   icub3d_Macro('im_health_rev'),
   icub3d_Spell('help', 'Barkskin'),   
   icub3d_Spell('harm', 'Moonfire', 'skip', 'skip'),
   icub3d_Spell('harm', 'Wrath', 'skip', 'skip'),
   icub3d_Spell('harm', 'Sunfire', 'skip', 'skip'),
   icub3d_Spell('help', 'Regrowth', 'skip', 'skip'),
   icub3d_Spell('harm', 'Starfall', 'skip', 'skip'),
   icub3d_Spell('harm', 'Ursol\'s Vortex', 'skip', 'skip'),
   icub3d_Spell('harm', 'Typhoon', 'skip', 'skip'),
   icub3d_Spell('harm', 'Cyclone'),
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
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
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
   icub3d_Spell('help', 'Convoke the Spirits'),
   icub3d_Spell('help', 'Soulshape'),
}

icub3d_Druid_Talents = { -- resto has 8 if we use all
   -- all --
   icub3d_Spell('help', 'Renewal'),
   icub3d_Spell('simple', 'Wild Charge'),
   icub3d_Spell('harm', 'Mighty Bash'),
   icub3d_Spell('harm', 'Mass Entanglement'),
   icub3d_Spell('help', 'Heart of the Wild'),

   -- balance --
   icub3d_Spell('help', 'Warrior of Elune'),
   icub3d_Spell('mouse', 'Force of Nature'),
   icub3d_Spell('harm', 'Stellar Flare'),
   icub3d_Spell('harm', 'Fury of Elune'), 
   icub3d_Spell('harm', 'New Moon'),
   
   -- feral --
   icub3d_Spell('help', 'Savage Roar'),
   icub3d_Spell('harm', 'Primal Wrath'),
   icub3d_Spell('harm', 'Feral Frenzy'),

   -- guardian --
   icub3d_Spell('help', 'Bristling Fur'),
   icub3d_Spell('harm', 'Pulverize'),

   -- restoration -- 
   icub3d_Spell('help', 'Nourish'), 
   icub3d_Spell('help', 'Cenarion Ward'),
   icub3d_Spell('help', 'Incarnation: Tree of Life'),
   icub3d_Spell('help', 'Overgrowth'),
   icub3d_Spell('help', 'Flourish'),

   -- pvp --
   icub3d_Spell('help', 'Thorns'),
   icub3d_Spell('harm', 'Faerie Swarm'),
   icub3d_Spell('harm', 'Rip and Tear'),
   icub3d_Spell('help', 'Demoralizing Roar'),
   icub3d_Spell('help', 'Overrun'),
   icub3d_Spell('help', 'Roar of the Protector'),
   icub3d_Spell('help', 'Mark of the Wild'),
   
}

icub3d_Spells['DRUID'] = {
    specs = {
        {
            tags = {'b', 'bal', 'balance'},
			talents = {
			   ['pvp'] = {1, 2, 2, 2, 2, 2, 2},
			   ['quest'] = {3, 1, 3, 3, 3, 2, 2},
			   ['dungeon'] = {1, 3, 3, 1, 1, 1, 1},
			   ['multi'] = {1, 3, 3, 1, 1, 1, 1},
			   ['single'] = {1, 3, 3, 3, 2, 3, 1},
			   ['raid'] = {1, 3, 3, 3, 2 ,3, 1},
			},
			talent = icub3d_Druid_Talents,
            actionbar = icub3d_join_spells(
			   icub3d_balance_moonkin,
			   icub3d_balance_top_right,
			   icub3d_bottom_left,
			   icub3d_bottom_right,
			   icub3d_skip_all,
			   icub3d_balance_cat_prowl,
			   icub3d_balance_cat_prowl,
			   icub3d_balance_bear,
			   icub3d_balance_moonkin
			),
		},
        {
            tags = {'f', 'feral'},
			talents = {
			   ['raid'] = {2, 3, 1, 1, 1, 2, 2},
			   ['dungeon'] = {1, 3, 1, 1, 1, 3, 2},
			   ['quest'] = {1, 3, 1, 1, 1, 3, 2},
			   ['pvp'] = {2, 3, 2, 1, 1, 2, 3},
			},
			talent = icub3d_Druid_Talents,
            actionbar = icub3d_join_spells(
			   icub3d_feral_normal,
			   icub3d_feral_top_right,
			   icub3d_bottom_left,
			   icub3d_bottom_right,
			   icub3d_skip_all,
			   icub3d_feral_cat_prowl,
			   icub3d_feral_cat_prowl,
			   icub3d_feral_bear,
			   icub3d_feral_normal
			),
        },
        {
            tags = {'g', 'guard', 'guardian'},
			talents = {
			   ['quest'] = {1, 3, 2, 1, 2, 2, 1},
			   ['dungeon'] = {2, 3, 3, 3, 3, 1, 1},
			   ['raid-def-st'] = {3, 2, 3, 3, 3, 1, 3},
			   ['raid-def-mt'] = {2, 2, 3, 3, 3, 1, 1},
			   ['raid-off-st'] = {1, 3, 2, 3, 2, 2, 1},
			   ['raid-off-mt'] = {1, 3, 1, 3, 2, 2, 1},
			   ['catweave'] = {1, 3, 2, 3, 2, 2, 1},
			},
			talent = icub3d_Druid_Talents,
            actionbar = icub3d_join_spells(
			   icub3d_guardian_normal,
			   icub3d_guardian_top_right,
			   icub3d_bottom_left,
			   icub3d_bottom_right,
			   icub3d_skip_all,
			   icub3d_guardian_cat_prowl,
			   icub3d_guardian_cat_prowl,
			   icub3d_guardian_bear,
			   icub3d_guardian_normal
			),
        },
        {
            tags = {'r', 'resto', 'restoration'},
			talent = icub3d_Druid_Talents,
            actionbar = icub3d_join_spells(
			   icub3d_restoration_normal,
			   icub3d_restoration_top_right,
			   icub3d_bottom_left,
			   icub3d_bottom_right,
			   icub3d_skip_all,
			   icub3d_restoration_cat_prowl,
			   icub3d_restoration_cat_prowl,
			   icub3d_restoration_bear,
			   icub3d_restoration_moonkin
			),
			talents = {
			   ['quest'] = {1, 3, 1, 3, 2, 2, 1},
			   ['dungeon'] = {3, 3, 1, 3, 2, 2, 1},
			   ['raid'] = {3, 2, 3, 3, 3, 2, 3,},
			   ['pvp'] = {3, 1, 1, 3, 2, 2, 1},
			   ['tor'] = {3, 2, 1, 1, 2, 3, 1},
			},
        },
    }
}
