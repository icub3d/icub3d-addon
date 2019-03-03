-- These are our global variables that are saved.
icub3d_MacroType = nil
icub3d_PvP1 = nil
icub3d_PvP2 = nil

-- This prevents icons from being animated onto the main action bar
IconIntroTracker.RegisterEvent = function() end
IconIntroTracker:UnregisterEvent('SPELL_PUSHED_TO_ACTIONBAR')

-- We need a frame to listen for events. 
local icub3d_Frame = CreateFrame("FRAME")
icub3d_Frame:RegisterEvent("PLAYER_ENTERING_WORLD")
icub3d_Frame:RegisterEvent("ADDON_LOADED")

-- This will be our main event handler. We use these bools to track
-- when we are ready.
local loaded = false
local inworld = false
icub3d_Frame:SetScript(
   "OnEvent",
   function(self, event, arg1)
	  if event == "PLAYER_TALENT_UPDATE" then
		 print("talents changed")
		 icub3d_TalentChanges()
		 return
	  elseif event == "ADDON_LOADED" and arg1 == "icub3d" then
		 print("addon loaded")
		 loaded = true
		 if loaded and inworld then
			icub3d_OnLoad()
		 end
	  elseif event == "PLAYER_ENTERING_WORLD" then
		 print("entering world")
		 inworld = true
		 if loaded and inworld then
			icub3d_OnLoad()
		 end
	  end
end)

function icub3d_OnLoad()
   loaded = false
   inworld = false
   print("loaded and in world")
   
   -- Load our defaults if they aren't set.
   if icub3d_MacroType == nil then
	  icub3d_MacroType = "pve"
	  icub3d_PvP1 = "none"
	  icub3d_PvP2 = "none"
   end

   -- Setup our macros and UI.
   icub3d_MacrosInit()
   icub3d_TalentChanges()
   icub3d_UI()

   -- Register talent changes.
   icub3d_Frame:RegisterEvent("PLAYER_TALENT_UPDATE")
end

function icub3d_TalentChanges()
   -- Make sure we have the right macros
   local spec = GetSpecialization()
   local _, class, _ = UnitClass("player")
   if icub3d_Spells[class] ~= nil then
	  if icub3d_Spells[class].specs[spec] ~= nil then
		 icub3d_UpdateMacros(icub3d_Spells[class].specs[spec], icub3d_MacroType,
							 {icub3d_PvP1, icub3d_PvP2})
	  end
   end
end

-- Saves 4 keystrokes with every reload! :)
SLASH_ICUB3DRELOAD1 = "/re"
function SlashCmdList.ICUB3DRELOAD(msg, editBox)
   ReloadUI()
end

-- Change specs
SLASH_CHANGESPEC1 = "/cs"
function SlashCmdList.CHANGESPEC(msg, editBox)
   icub3d_ChangeSpec(msg)
end

function icub3d_ChangeSpec(spec)
   local _, class, _ = UnitClass("player")
   local character = icub3d_Spells[class]
   if character == nil then
	  print("class not found: " .. class)
	  return
   end

   -- Find the spec that matches the given spec tag.
   for i, v in ipairs(character.specs) do
	  for j, tag in ipairs(v.tags) do
		 if tag == spec then
			SetSpecialization(i)
			-- The event handler will see this and change our macros
			-- and spells.
			return
		 end
	  end
   end
   
   print(string.format("spec '%s' not found for '%s'", spec, class))
end
