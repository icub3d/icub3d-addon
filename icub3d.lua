--------------------------------------------------------------------
-- GLOBAL VARIABLES
--------------------------------------------------------------------
-- These are global variables that other scripts might use.
icub3d_LOADED = false
icub3d_INWORLD = false

--------------------------------------------------------------------
-- SLASH COMMANDS
--------------------------------------------------------------------
-- Saves 4 keystrokes with every reload! :)
SLASH_ICUB3DRELOAD1 = '/re'
function SlashCmdList.ICUB3DRELOAD(msg, editBox)
    ReloadUI()
end

SLASH_ICUB3DSOUND1 = '/sound'
function SlashCmdList.ICUB3DSOUND(msg, editBox)
    SetCVar('Sound_MasterVolume', msg)
end

SLASH_ICUB3DLP1 = '/lp'
function SlashCmdList.ICUB3DLP(msg, editBox)
    LeaveParty()
end

--------------------------------------------------------------------
-- EVENT HANDLING CODE
--------------------------------------------------------------------
-- We need a frame to listen for events.
icub3d_Frame = CreateFrame('FRAME')
icub3d_Frame:RegisterEvent("ADDON_LOADED")
icub3d_Frame:RegisterEvent("PLAYER_ENTERING_WORLD")
local icub3d_Events = {}

function icub3d_RegisterEvent(event, func)
    icub3d_Debug('register event: %s', {event})
    if icub3d_Events[event] == nil then
        icub3d_Events[event] = {func}

        -- We need to register it with the wow api.
        if event ~= 'ADDON_READY' then
            icub3d_Debug('wow register: %s', {event})
            icub3d_Frame:RegisterEvent(event)
        end
    else
        table.insert(icub3d_Events[event], func)
    end
end

-- This will be our main event handler. We use these bools to track
-- when we are ready.
icub3d_Frame:SetScript('OnEvent', function (self, event, arg1)
    icub3d_Debug('event: %s', {event})
    -- We have our own "event" ADDON_READY which is triggered when we are
    -- loaded and in the world. I don't recall why, but it seems to make
    -- things work nice.
    if event == 'ADDON_LOADED' and arg1 == 'icub3d' then
        icub3d_Debug("addon loaded")
        icub3d_LOADED = true
    elseif event == 'PLAYER_ENTERING_WORLD' then
        icub3d_Debug("entering world")
        icub3d_INWORLD = true
    end

    if icub3d_LOADED and icub3d_INWORLD then
        icub3d_Debug("addon ready")
        -- We also do it for events that are "ADDON_READY" at this point.
        local events = icub3d_Events['ADDON_READY']
        if events ~= nil then
            for i, func in pairs(events) do
                func(arg1)
            end
        end

        -- At this point, we reset the variables so we don't trigger it again.
        icub3d_LOADED = false
        icub3d_INWORLD = false
    end

    local events = icub3d_Events[event]
    if events ~= nil then
        for i, func in pairs(events) do
            func(arg1)
        end
    end


end)
