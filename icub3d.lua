--------------------------------------------------------------------
-- GLOBAL VARIABLES
--------------------------------------------------------------------
-- These are global variables that other scripts might use.
ICUB3D_LOADED = false
ICUB3D_INWORLD = false

--------------------------------------------------------------------
-- SLASH COMMANDS
--------------------------------------------------------------------
-- Saves 4 keystrokes with every reload! :)
SLASH_ICUB3DRELOAD1 = '/re'
SlashCmdList.ICUB3DRELOAD = ReloadUI

SLASH_ICUB3DLP1 = '/lp'
SlashCmdList.ICUB3DLP = function(_, _)
    C_PartyInfo.LeaveParty()
end

SLASH_ICUB3DSOUND1 = '/sound'
SlashCmdList.ICUB3DSOUND = function(msg, editBox)
    SetCVar('Sound_MasterVolume', msg)
end

SLASH_ICUB3DMUSIC1 = '/music'
SlashCmdList.ICUB3DMUSIC = function(msg, editBox)
    Sound_ToggleMusic()
end

--------------------------------------------------------------------
-- EVENT HANDLING CODE
--------------------------------------------------------------------
-- We need a frame to listen for events.
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")

-- We'll track all events we want to respond to in this table.
local icub3d_Events = {}

-- The rest of the addon can use this to register events that it wants to handle.
function ICUB3D_RegisterEvent(event, func)
    ICUB3D_Debug('register event: %s', { event })
    if icub3d_Events[event] == nil then
        icub3d_Events[event] = { func }

        -- We need to register it with the wow api.
        if event ~= 'ADDON_READY' then
            ICUB3D_Debug('wow register: %s', { event })
            frame:RegisterEvent(event)
        end
    else
        table.insert(icub3d_Events[event], func)
    end
end


-- A helper function that will call all the functions that are registered for an
-- event.
local handleEvent = function (event, arg1)
    local events = icub3d_Events[event]
    if events ~= nil then
        for _, func in pairs(events) do
            func(arg1)
        end
    end
end

-- This will be our main event handler. We use these bools to track
-- when we are ready.
frame:SetScript('OnEvent', function(self, event, arg1)
    ICUB3D_Debug('event: %s', { event })
    -- We have our own "event" ADDON_READY which is triggered when we are
    -- loaded and in the world. I don't recall why, but it seems to make
    -- things work nice.
    if event == 'ADDON_LOADED' and arg1 == 'icub3d' then
        ICUB3D_Debug("addon loaded")
        ICUB3D_LOADED = true
    elseif event == 'PLAYER_ENTERING_WORLD' then
        ICUB3D_Debug("entering world")
        ICUB3D_INWORLD = true
    end

    if ICUB3D_LOADED and ICUB3D_INWORLD then
        ICUB3D_Debug("addon ready")
        -- We also do it for events that are "ADDON_READY" at this point.
        handleEvent('ADDON_READY', arg1)

        -- At this point, we reset the variables so we don't trigger it again.
        ICUB3D_LOADED = false
        ICUB3D_INWORLD = false
    end

    -- Now we handle the event.
    handleEvent(event, arg1)
end)
