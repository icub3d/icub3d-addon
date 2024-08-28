--------------------------------------------------------------------
-- GLOBAL VARIABLES
--------------------------------------------------------------------
-- icub3d_spells contains the spells that each character uses.
--
-- These are stored by class by the standardized string name. See:
-- https://wow.gamepedia.com/ClassId
--
-- Each class has it's own file that updates this global variable.
ICUB3D_Spells = {}

--------------------------------------------------------------------
-- SLASH COMMANDS
--------------------------------------------------------------------
-- Change specs
SLASH_CHANGESPEC1 = "/cs"
function SlashCmdList.CHANGESPEC(msg, _)
	ICUB3D_ChangeSpec(msg)
end

-- Change talents
SLASH_CHANGETALENTS1 = "/ct"
function SlashCmdList.CHANGETALENTS(msg, _)
	ICUB3D_TalentChanges()
end

--------------------------------------------------------------------
-- EVENT REGISTRATION
--------------------------------------------------------------------
ICUB3D_RegisterEvent("ADDON_READY", function(_)
	ICUB3D_RegisterEvent("SPELLS_CHANGED", function(_)
		-- Don't update spells while in combat
		if UnitAffectingCombat("player") then
			return
		end
		ICUB3D_Debug("spells changed")
		ICUB3D_TalentChanges()
	end)
end)

--------------------------------------------------------------------
-- SPELLS CODE
--------------------------------------------------------------------
function ICUB3D_TalentChanges()
	-- Make sure we have the right macros
	local spec = GetSpecialization()
	local _, class, _ = UnitClass("player")
	if ICUB3D_Spells[class] ~= nil then
		if ICUB3D_Spells[class].specs[spec] ~= nil then
			ICUB3d_UpdateSpells(ICUB3D_Spells[class].specs[spec])
		end
	end
end

function ICUB3D_ChangeSpec(spec)
	local _, class, _ = UnitClass("player")
	local character = ICUB3D_Spells[class]
	if character == nil then
		ICUB3D_Error("class not found: %s", { class })
		return
	end

	local words = {}
	for word in spec:gmatch("%w+") do table.insert(words, word) end
	local len = table.getn(words)
	if len > 1 then
		spec = words[1]
	end

	-- Find the spec that matches the given spec tag.
	for i, v in ipairs(character.specs) do
		for j, tag in ipairs(v.tags) do
			if tag == spec then
				SetSpecialization(i)
				return
			end
		end
	end

	ICUB3D_Error("spec '%s' not found for '%s'", { spec, class })
end

-- A helper function creates a table that the system will understand
-- as a spell. The variadic arguments are the alternates to use if not
-- available, for example, a talent. They should be given in pairs wit
-- hthe type and name.
function ICUB3D_Spell(name, ...)
	local alternates = { ... }
	return {
		typ = 'spell',
		name = name,
		alternates = alternates
	}
end

function ICUB3D_SpellSpec(...)
	local spells = { ... }
	return {
		typ = "spec",
		spells = spells,
	}
end

function ICUB3D_Talent(num)
	return {
		typ = 'talent',
		num = num
	}
end

function ICUB3D_PvPTalent(num)
	return { typ = 'pvp', num = num }
end

function ICUB3D_Ignore()
	return { typ = 'ignore' }
end

function ICUB3D_Skip()
	return { typ = 'skip' }
end

function ICUB3D_Macro(name)
	return { typ = 'macro', name = name }
end

function ICUB3D_GetCurrentAction(p)
	if not HasAction(p) then
		return nil
	end

	local curType, curId, _ = GetActionInfo(p)
	if curType == 'macro' then
		return { typ = curType, id = select(1, GetMacroInfo(curId)) }
	elseif curType == 'spell' then
		local info = C_Spell.GetSpellInfo(curId)
		return { typ = curType, id = info.spellID }
	end
end

function ICUB3d_UpdateSpells(spec)
	for x, s in ipairs(spec.actionbar) do
		-- Blizzard be trolling, LOLOLOLOLOL
		local p = x
		if p > 12 then
			p = p + 12
		end

		-- Get our current action item.
		local cur = ICUB3D_GetCurrentAction(p)

		-- Figure out what action we want to place.
		local new = ICUB3D_DetermineAction(spec, p, s)

		-- If we need to make a change, do it.
		if new ~= nil and (cur == nil or cur.typ ~= new.typ or (cur.typ == new.typ and cur.id ~= new.id)) then
			if new.typ == 'macro' then
				PickupMacro(new.id)
				PlaceAction(p)
				ClearCursor()
			else
				C_Spell.PickupSpell(new.id)
				PlaceAction(p)
				ClearCursor()
			end
		end
	end
end

function ICUB3D_DetermineAction(spec, _, s)
	local empty = { typ = 'macro', id = 'im_empty' }
	local specId = GetSpecialization()
	if s.typ == 'skip' then
		return empty
	elseif s.typ == 'macro' then
		return { typ = 'macro', id = s.name }
	elseif s.typ == 'spec' then
		local spell = s.spells[specId]
		if spell:sub(1, 3) == 'im_' then
			return { typ = 'macro', id = spell }
		end
		if spell == 'Dream Breath' then
			return { typ = 'spell', id = 355936 }
		elseif spell == 'Spiritbloom' then
			return { typ = 'spell', id = 367226 }
		end
		local info = C_Spell.GetSpellInfo(spell)
		if info ~= nil then
			return { type = 'spell', id = info.spellID }
		else
			return empty
		end
	elseif s.typ == 'talent' then
		return pickN(spec.talent, s.num)
	elseif s.typ == 'pvp' then
		return pickN(spec.pvp.spells, s.num)
	elseif s.typ == 'spell' then
		local info = C_Spell.GetSpellInfo(s.name)
		if info == nil then
			for _, alt in ipairs(s.alternates) do
				if alt == 'skip' then
					return empty
				else
					local a = C_Spell.GetSpellInfo(alt)
					if a ~= nil then
						info = a
						break
					end
				end
			end
			if info == nil then
				return empty
			end
		end
		return { typ = 'spell', id = info.spellID }
	else
		ICUB3D_Error("unknown type: %s %s", { s.typ, s })
		return
	end
end

-- pickN is a helper function for talent and pvp slots that picks the
-- nth spell from the list of spells.
function pickN(spells, n)
	local count = 0
	local selected = nil
	for _, spell in ipairs(spells) do
		local name = C_Spell.GetSpellInfo(spell.name)
		if name ~= nil then
			count = count + 1
		end
		if count == n then
			selected = name
			break
		end
	end

	if selected == nil then
		return { typ= 'macro', id = 'im_empty' }
	elseif selected == 'Demonic Circle' then
		-- We want to use one of our special macros.
		return { typ = 'macro', id = 'im_demonic_circle' }
	else
		return { typ = 'spell', id = selected.spellID }
	end
end

--------------------------------------------------------------------
-- Common Functions
--------------------------------------------------------------------
function ICUB3D_joinSpells(groups)
	local r = {}
	for _, g in pairs(groups) do
		for _, v in pairs(g) do
			table.insert(r, v)
		end
	end
	return r
end

local engage = {
	["DRUID"] = ICUB3D_Spell('Moonfire'),
	["MONK"] = ICUB3D_Spell('Rushing Jade Wind'),
	["DEATHKNIGHT"] = ICUB3D_Spell('Heart Strike'),
}

local engageSpell = function()
	local class = select(2, UnitClass("player"))
	if engage[class] ~= nil then
		return engage[class]
	end
	return ICUB3D_Skip()
end

-- TODO (switch flight style in opie)
-- TODO (save opie configs)
-- TODO (add other class spells for engage)
ICUB3D_Dragon = {
	ICUB3D_Spell('Surge Forward'),
	ICUB3D_Spell('Whirling Surge'),
	ICUB3D_Spell('Skyward Ascent'),
	ICUB3D_Spell('Aerial Halt'),
	ICUB3D_Spell('Second Wind'),
	ICUB3D_Spell('Bronze Timelock'),
	engageSpell(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip()
}

-- Skip (All)
ICUB3D_SkipAll = { -- We have to skip these for druid, warrior, rogue
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip(),
	ICUB3D_Skip()
}
