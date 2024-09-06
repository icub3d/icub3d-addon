--------------------------------------------------------------------
-- EVENT REGISTRATION
--------------------------------------------------------------------
ICUB3D_RegisterEvent(
	'ADDON_READY',
	function(arg1)
		-- Remove the macro name from the buttons
		local bars = {
			"ActionButton",
			"MultiBarRightButton",
			"MultiBarLeftButton",
			"MultiBarBottomLeftButton",
			"MultiBar5Button",
			"MultiBarBottomRightButton",
		}
		for _, name in ipairs(bars) do
			for x = 1, 12 do
				_G[name .. x .. 'Name']:SetAlpha(0)
				local hotkey = _G[name .. x .. 'HotKey']:GetText()
				if hotkey == "Mouse Wheel Up" then
					_G[name .. x .. 'HotKey']:SetText("wU")
				elseif hotkey == "Mouse Wheel Down" then
					_G[name .. x .. 'HotKey']:SetText("wD")
				elseif hotkey == "Mouse Button 4" then
					_G[name .. x .. 'HotKey']:SetText("m4")
				elseif hotkey == "Mouse Button 5" then
					_G[name .. x .. 'HotKey']:SetText("m5")
				elseif hotkey == "s-Mouse Wheel Up" then
					_G[name .. x .. 'HotKey']:SetText("WU")
				elseif hotkey == "s-Mouse Wheel Down" then
					_G[name .. x .. 'HotKey']:SetText("WD")
				elseif hotkey == "s-Mouse Button 4" then
					_G[name .. x .. 'HotKey']:SetText("M4")
				elseif hotkey == "s-Mouse Button 5" then
					_G[name .. x .. 'HotKey']:SetText("M5")
				end
				_G[name .. x .. 'HotKey']:SetFont("Fonts\\Frizqt__.TTF", 16, "THICK, OUTLINE")
			end
		end

		-- Hide stance bar
		RegisterStateDriver(StanceBar, "visibility", "hide")
		RegisterStateDriver(BagsBar, "visibility", "hide")
	end
)
