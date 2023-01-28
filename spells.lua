--------------------------------------------------------------------
-- GLOBAL VARIABLES
--------------------------------------------------------------------
-- icub3d_spells contains the spells that each character uses.
--
-- These are stored by class by the standardized string name. See:
-- https://wow.gamepedia.com/ClassId
--
-- Each class has it's own file that updates this global variable.
icub3d_Spells = {}

--------------------------------------------------------------------
-- SLASH COMMANDS
--------------------------------------------------------------------
-- Change specs
SLASH_CHANGESPEC1 = "/cs"
function SlashCmdList.CHANGESPEC(msg, editBox)
	icub3d_ChangeSpec(msg)
end

-- Change talents
SLASH_CHANGETALENTS1 = "/ct"
function SlashCmdList.CHANGETALENTS(msg, editBox)
	--	local currentSpec = GetSpecialization()
	--	local currentSpecName = currentSpec and select(2, GetSpecializationInfo(currentSpec)) or "None"
	--	local spec = string.lower(string.sub(currentSpecName, 1, 1))
	--	SlashCmdList["BTWLOADOUTS"]("activate " .. spec .. msg)
	icub3d_TalentChanges()
end

--------------------------------------------------------------------
-- EVENT REGISTRATION
--------------------------------------------------------------------
icub3d_RegisterEvent("ADDON_READY", function(arg1)
	icub3d_TalentChanges()
	icub3d_RegisterEvent("SPELLS_CHANGED", function(arg1)
		icub3d_Debug("spells changed")
		icub3d_TalentChanges()
	end)
end)

--------------------------------------------------------------------
-- SPELLS CODE
--------------------------------------------------------------------
function icub3d_TalentChanges()
	-- Make sure we have the right macros
	local spec = GetSpecialization()
	local _, class, _ = UnitClass("player")
	if icub3d_Spells[class] ~= nil then
		if icub3d_Spells[class].specs[spec] ~= nil then
			icub3d_UpdateSpells(icub3d_Spells[class].specs[spec])
		end
	end
end

function icub3d_ChangeSpec(spec)
	local _, class, _ = UnitClass("player")
	local character = icub3d_Spells[class]
	if character == nil then
		icub3d_Error("class not found: %s", { class })
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

	icub3d_Error("spec '%s' not found for '%s'", { spec, class })
end

-- A helper function creates a table that the system will understand
-- as a spell. The variadic arguments are the alternates to use if not
-- available, for example, a talent. They should be given in pairs wit
-- hthe type and name.
function icub3d_Spell(name, ...)
	local alternates = { ... }
	return {
		typ = 'spell',
		name = name,
		alternates = alternates
	}
end

function icub3d_Spell_Spec(...)
	local spells = { ... }
	return {
		typ = "spec",
		spells = spells,
	}
end

function icub3d_Talent(num)
	return {
		typ = 'talent',
		num = num
	}
end

function icub3d_PvPTalent(num)
	return { typ = 'pvp', num = num }
end

function icub3d_Ignore()
	return { typ = 'ignore' }
end

function icub3d_Skip()
	return { typ = 'skip' }
end

function icub3d_Macro(name)
	return { typ = 'macro', name = name }
end

function icub3d_GetCurrentAction(p)
	local curType, curId, _ = GetActionInfo(p)
	if curType == 'macro' then
		return { typ = curType, id = select(1, GetMacroInfo(curId)) }
	elseif curType == 'spell' then
		return { typ = curType, id = curId }
	else
		return nil
	end
end

function icub3d_UpdateSpells(spec)
	for x, s in ipairs(spec.actionbar) do
		-- Blizzard be trolling, LOLOLOLOLOL
		local p = x
		if p > 12 then
			p = p + 12
		end

		-- Get our current action item.
		local cur = icub3d_GetCurrentAction(p)

		-- Figure out what action we want to place.
		local new = icub3d_DetermineAction(spec, p, s)

		if cur == nil or cur.typ ~= new.typ or cur.id ~= new.id then
			if new.typ == 'macro' then
				PickupMacro(new.id)
				PlaceAction(p)
				ClearCursor()
			else
				PickupSpell(new.id)
				PlaceAction(p)
				ClearCursor()

			end
		end
	end
end

function icub3d_DetermineAction(spec, p, s)
	local empty = { typ = 'macro', id = 'im_empty' }

	if s.typ == 'skip' then
		return empty
	elseif s.typ == 'macro' then
		return { typ = 'macro', id = s.name }
	elseif s.typ == 'spec' then
		local spell = s.spells[specId]
		if GetSpellInfo(spell) ~= nil then
			local spellId = select(7, GetSpellInfo(spell))
			return { type = 'spell', id = spellId }
		else
			return empty
		end
	elseif s.typ == 'talent' then
		-- This is a talent slot.
		local count = 0
		local selected = nil
		for _, spell in ipairs(spec.talent) do
			-- We found a spell, increment the count.
			if GetSpellInfo(spell.name) ~= nil then
				count = count + 1
			end
			-- If we've found the number of pvptalents we were
			-- expecting, we found the right spell.
			if count == s.num then
				selected = spell
				break
			end
		end

		if selected == nil then
			return empty
		elseif selected.name == 'Demonic Circle' then
			-- We want to use one of our special macros.
			return { typ = 'macro', id = 'im_demonic_circle' }
		else
			local spellId = select(7, GetSpellInfo(selected.name))
			return { type = 'spell', id = spellId }
		end
	elseif s.typ == 'pvp' then
		-- This is a talent slot.
		local count = 0
		local selected = nil
		for _, spell in ipairs(spec.pvp.spells) do
			-- We found a spell, increment the count.
			if GetSpellInfo(spell.name) ~= nil then
				count = count + 1
			end
			-- If we've found the number of pvptalents we were
			-- expecting, we found the right spell.
			if count == s.num then
				selected = spell
				break
			end
		end

		if selected == nil then
			return empty
		elseif selected.name == 'Demonic Circle' then
			-- We want to use one of our special macros.
			return { typ = 'macro', id = 'im_demonic_circle' }
		else
			local spellId = select(7, GetSpellInfo(selected.name))
			return { type = 'spell', id = spellId }
		end
	elseif s.typ == 'spell' then
		local spellId = select(7, GetSpellInfo(s.name))
		if spellId == nil then
			for _, alt in ipairs(s.alternates) do
				if alt == 'skip' then
					return empty
				else
					local altId = select(7, GetSpellInfo(alt))
					if altId ~= nil then
						spellId = altId
						break
					end
				end
			end
			if spellId == nil then
				icub3d_Error("no spell or alternate found: %d %s", { p, s })
				return empty
			end
		end
		return { typ = 'spell', id = spellId }
	else
		icub3d_Error("unknown type: %s %s", { s.typ, s })
		return
	end
end
