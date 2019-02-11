local frame=CreateFrame("Frame")
frame:SetScript("OnEvent",icub3d_Events)
frame:RegisterEvent("PLAYER_ENTERING_WORLD");
frame:RegisterEvent("ADDON_LOADED");

icub3d_MacroType = nil;
icub3d_PvP1 = nil;
icub3d_PvP2 = nil;

local loaded = false;
local inworld = false;
function icub3d_Events(event, arg1)
   if event == "ADDON_LOADED" and arg1 == "icub3d" then
	  loaded = true;
   elseif event == "PLAYER_ENTERING_WORLD" then
	  inworld = true;
   end

   if loaded and inworld then
	  -- We now have our saved variables and are entering the world,
	  -- so we can do our stuff.
	  if icub3d_MacroType == nil then
		 icub3d_MacroType = "pve";
		 icub3d_PvP1 = "none";
		 icub3d_PvP2 = "none";
	  end
	  icub3d_UI();
   end
end

-- Saves 4 keystrokes with every reload! :)
SLASH_ICUB3DRELOAD1 = "/re";
function SlashCmdList.ICUB3DRELOAD(msg, editBox)
   ReloadUI();
end

-- Change specs
SLASH_CHANGESPEC1 = "/cs";
function SlashCmdList.CHANGESPEC(msg, editBox)
   icub3d_ChangeSpec(msg);
end

function icub3d_ChangeSpec(spec)
   local _, class, _ = UnitClass("player");
   local character = icub3d_spells[class];
   if character == nil then
	  print("class not found: " .. class);
	  return
   end

   -- Find the spec that matches the given spec tag.
   for i, v in ipairs(character.specs) do
	  for j, tag in ipairs(v.tags) do
		 if tag == spec then
			icub3d_placemacros(v.actionbar, icub3d_MacroType, {icub3d_PvP1, icub3d_PvP2});
			return
		 end
	  end
   end
   print(string.format("spec '%s' not found for '%s'", spec, class))
end
