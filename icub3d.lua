-- |TInterface\\Icons\\INV_Misc_Coin_01:16|t 

-- These are our global variables that are saved.
icub3d_MacroType = nil
icub3d_PvP1 = nil
icub3d_PvP2 = nil
icub3d_Search = {}

--------------------------------------------------------------------
-- Slash commands 
--------------------------------------------------------------------
SLASH_ICUB3DMACROS1 = "/im"
function SlashCmdList.ICUB3DMACROS(msg, editBox)
   if msg == "create" then
	  icub3d_CreateMacros()
   elseif msg == "delete" then
	  icub3d_DeleteMacros()
   else
	  icub3d_Error("unknown icub3d-macro command: %s", {msg});
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

-- list all our gold
SLASH_ICUB3DGOLD1 = "/gold"
function SlashCmdList.ICUB3DGOLD(msg, editBox)
   icub3d_Search_ListMoney()
end

-- search for items.
SLASH_ICUB3DSEARCH1 = "/search"
function SlashCmdList.ICUB3DSEARCH(msg, editBox)
   icub3d_Search_Search(msg)
end

-- rebauilsearch.
SLASH_ICUB3DSEARCHREBUILD1 = "/search-rebuild"
function SlashCmdList.ICUB3DSEARCHREBUILD(msg, editBox)
   icub3d_Search = {}
   icub3d_Search_UpdateMoney()
   icub3d_Search_UpdateBags()
end

SLASH_ICUB3DSOUND1 = "/sound"
function SlashCmdList.ICUB3DSOUND(msg, editBox)
   SetCVar("Sound_MasterVolume", msg)
end


--------------------------------------------------------------------
-- Main Frame
--------------------------------------------------------------------
-- We need a frame to listen for events. 
local icub3d_Frame = CreateFrame("FRAME")
icub3d_Frame:RegisterEvent("PLAYER_ENTERING_WORLD")
icub3d_Frame:RegisterEvent("ADDON_LOADED")
icub3d_Frame:RegisterEvent("BAG_UPDATE")
icub3d_Frame:RegisterEvent("BANKFRAME_OPENED")
icub3d_Frame:RegisterEvent("PLAYERREAGENTBANKSLOTS_CHANGED")
icub3d_Frame:RegisterEvent("PLAYERBANKSLOTS_CHANGED")
icub3d_Frame:RegisterEvent("PLAYER_MONEY")

-- This will be our main event handler. We use these bools to track
-- when we are ready.
local loaded = false
local inworld = false
icub3d_Frame:SetScript(
   "OnEvent",
   function(self, event, arg1)
	  if event == "PLAYER_TALENT_UPDATE" then
		 icub3d_Debug("talents changed")
		 icub3d_TalentChanges()
		 return
	  elseif event == "ADDON_LOADED" and arg1 == "icub3d" then
		 icub3d_Debug("addon loaded")	
		 loaded = true
		 if loaded and inworld then
			icub3d_OnLoad()
		 end
	  elseif event == "PLAYER_ENTERING_WORLD" then
		 icub3d_Debug("entering world")
		 inworld = true
		 if loaded and inworld then
			icub3d_OnLoad()
		 end
	  elseif event == "PLAYER_MONEY" then
		 icub3d_Debug("player money")
		 icub3d_Search_UpdateMoney()
	  elseif event == "BAG_UPDATE" and not loaded then
		 -- The "not loaded" is funny. We don't want to run it when we
		 -- first get in the game. But we want to run it any other
		 -- time. The bag updates that are emitted when we first enter
		 -- the game won't trigger this block because of the way
		 -- OnLoad handles the loaded variable.
		 icub3d_Debug("bag update: " .. arg1)
		 icub3d_Search_UpdateBag(arg1)
	  elseif event == "BANKFRAME_OPENED" and not loaded then
		 icub3d_Debug("bank opened")
		 icub3d_Search_BankFrameOpened()
	  elseif event == "PLAYERREAGENTBANKSLOTS_CHANGED" then
		 icub3d_Debug("reagent bank changed: " .. arg1)
		 icub3d_Search_UpdateBag(REAGENTBANK_CONTAINER)
	  elseif event == "PLAYERBANKSLOTS_CHANGED" then
		 icub3d_Debug("bank changed: " .. arg1)
		 icub3d_Search_UpdateBag(BANK_CONTAINER)
	  end
end)

function icub3d_OnLoad()
   loaded = false
   inworld = false
   icub3d_Debug("loaded and in world")

   icub3d_Search_UpdateMoney()
   icub3d_Search_UpdateBags()
   
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

function icub3d_ChangeSpec(spec)
   local _, class, _ = UnitClass("player")
   local character = icub3d_Spells[class]
   if character == nil then
	  icub3d_Error("class not found: %s", {class})
	  return
   end

   icub3d_UpdateSearch()
   
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
   
   icub3d_Error("spec '%s' not found for '%s'", {spec, class})
end
