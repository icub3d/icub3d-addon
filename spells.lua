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
   icub3d_ChangeTalents(msg)
end

--------------------------------------------------------------------
-- EVENT REGISTRATION
--------------------------------------------------------------------
icub3d_RegisterEvent("ADDON_READY", function(arg1)
	icub3d_TalentChanges()
	icub3d_RegisterEvent("PLAYER_TALENT_UPDATE", function(arg1)
		icub3d_Debug("talents changed")
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
		  icub3d_UpdateMacros(icub3d_Spells[class].specs[spec], icub3d_MACROTYPE)
	   end
	end
 end

function icub3d_ChangeTalents(name)
	local _, class, _ = UnitClass("player")
	local character = icub3d_Spells[class]
	if character == nil then
	   icub3d_Error("class not found: %s", {class})
	   return
	 end
 
	 spec = character.specs[GetSpecialization()]
	if spec == nil then
		 icub3d_Error("spec not found: %s", {class})
		 return
	 end	
	 local talents = spec.talents[name]
	 if talents == nil then
		 icub3d_Error("talent '%s' not found for spec", {name})
		 return
	 end
 
	 for k, tal in pairs(talents) do
		 LearnTalent(GetTalentInfo(k, tal, 1))
	 end
 end
 
 function icub3d_ChangeSpec(spec)
	local _, class, _ = UnitClass("player")
	local character = icub3d_Spells[class]
	if character == nil then
	   icub3d_Error("class not found: %s", {class})
	   return
	end
 
	 local words = {}
	 for word in spec:gmatch("%w+") do table.insert(words, word) end
	 local len = table.getn(words)
	 local talents = ""
	 if len > 1 then
		 spec = words[1]
		 talents = words[2]
	 end
	 
	-- Find the spec that matches the given spec tag.
	for i, v in ipairs(character.specs) do
	   for j, tag in ipairs(v.tags) do
		  if tag == spec then
			 SetSpecialization(i)
			 -- The event handler will see this and change our macros
			 -- and spells.
 			 if talents ~= "" then
				 icub3d_ChangeTalents(talents)
			 end
 
			 return
		  end
	   end
	end
	
	icub3d_Error("spec '%s' not found for '%s'", {spec, class})
 end
 
-- A helper function creates a table that the system will understand
-- as a spell. The variadic arguments are the alternates to use if not
-- available, for example, a talent. They should be given in pairs wit
-- hthe type and name.
function icub3d_Spell(typ, name, ...)
    local arg = {...}
    local alternates = {}
    for x = 1, select('#', ...) - 1, 2 do
        alternates[math.floor((x + 1) / 2)] = {typ = arg[x], name = arg[x + 1]}
    end
    return {
        typ = typ,
        name = name,
        alternates = alternates
    }
end

function icub3d_PvPTalent(num)
    return {typ = 'pvp', num = num}
end

function icub3d_Skip()
    return {typ = 'skip'}
end

function icub3d_Macro(name)
    return {typ = 'macro', name = name}
end
