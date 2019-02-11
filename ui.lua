-- ui.lua contains code that modifies the default UI.

-- Hide shadowform
RegisterStateDriver(StanceBarFrame, "visibility", "hide");

-- Remove the bottom art
MainMenuBarArtFrame.LeftEndCap:Hide();
MainMenuBarArtFrame.RightEndCap:Hide();
MainMenuBarArtFrame.PageNumber:Hide();
RegisterStateDriver(ActionBarUpButton, "visibility", "hide");
RegisterStateDriver(ActionBarDownButton, "visibility", "hide");
RegisterStateDriver(MainMenuBarArtFrameBackground, "visibility", "hide");

-- Hide bags
RegisterStateDriver(MicroButtonAndBagsBar, "visibility", "hide");

-- This function is called when we enter a world.
function icub3d_UI()
   -- Micro buttons
   CharacterMicroButton:ClearAllPoints();
   CharacterMicroButton:SetPoint("BOTTOMLEFT",-560,-25);
   
   -- Unit frames
   PlayerFrame:ClearAllPoints();
   PlayerFrame:SetPoint("CENTER",UIParent,-200,-125);
   PlayerFrame:SetUserPlaced(true);
   TargetFrame:ClearAllPoints();
   TargetFrame:SetPoint("CENTER",UIParent,200,-125);
   TargetFrame:SetUserPlaced(true);
   FocusFrame:ClearAllPoints();
   FocusFrame:SetPoint("CENTER",UIParent,300,0);
   FocusFrame:SetUserPlaced(true);

   -- We run this code on load to setup macro and spec information
   icub3d_RacialMacro();
   local spec = GetSpecialization();
   local _, class, _ = UnitClass("player");
   if icub3d_Spells[class] ~= nil then
	  if icub3d_Spells[class].specs[spec] ~= nil then
		 icub3d_PlaceMacros(icub3d_Spells[class].specs[spec].actionbar, "pve", {"none","none"});
	  end
   end

   -- Action bars
   icub3d_MoveActionBar("ActionButton", "CENTER", UIParent, -229, -420);
   icub3d_MoveActionBar("MultiBarRightButton", "CENTER", UIParent, -480, -462);
   icub3d_MoveActionBar("MultiBarLeftButton", "CENTER", UIParent, 23, -462);
   icub3d_MoveActionBar("MultiBarBottomRightButton", "CENTER", UIParent, -480, -504);
   icub3d_MoveActionBar("MultiBarBottomLeftButton", "CENTER", UIParent, 23, -504);

   -- Objective Tracker
   -- ObjectiveTrackerFrame:ClearAllPoints();
   -- ObjectiveTrackerFrame:SetPoint("RIGHT", UIParent, 0, 0);
end

-- A helper function that moves the entire action bar to the given
-- point horizontally.
function icub3d_MoveActionBar(name, point, frame, x, y)
   local button = _G[name .. "1"];
   button:ClearAllPoints();
   button:SetPoint(point, frame, x, y)
   for i = 2, 12 do
	  button = _G[name .. i];
	  button:ClearAllPoints();
	  button:SetPoint("LEFT", name .. i - 1, "RIGHT", 6, 0)
   end
end

