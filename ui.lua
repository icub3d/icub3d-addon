--------------------------------------------------------------------
-- SLASH COMMANDS
--------------------------------------------------------------------
-- Change specs
SLASH_CHANGERAIDPROFILE1 = "/cr"
function SlashCmdList.CHANGERAIDPROFILE(msg, editBox)
    if msg == "" then
        msg = "Primary"
    end
    if GetActiveRaidProfile() ~= msg and RaidProfileExists(msg) then
        CompactUnitFrameProfiles_ActivateRaidProfile(msg)
    elseif not RaidProfileExists(msg) then
        icub3d_Error("raid profile '%s' does not exist", {msg})
    end
end

--------------------------------------------------------------------
-- EVENT REGISTRATION
--------------------------------------------------------------------
icub3d_RegisterEvent(
    'ADDON_READY',
    function(arg1)
        -- Hide shadowform
        RegisterStateDriver(StanceBarFrame, 'visibility', 'hide')

        -- Remove the bottom art
        MainMenuBarArtFrame.LeftEndCap:Hide()
        MainMenuBarArtFrame.RightEndCap:Hide()
        MainMenuBarArtFrame.PageNumber:Hide()
        RegisterStateDriver(ActionBarUpButton, 'visibility', 'hide')
        RegisterStateDriver(ActionBarDownButton, 'visibility', 'hide')
        RegisterStateDriver(MainMenuBarArtFrameBackground, 'visibility', 'hide')

        -- Hide bags
        RegisterStateDriver(MicroButtonAndBagsBar, 'visibility', 'hide')
        RegisterStateDriver(PetActionBarFrame, 'visibility', 'hide')

        -- Micro buttons
        CharacterMicroButton:ClearAllPoints()
        CharacterMicroButton:SetPoint('BOTTOMLEFT', -560, -25)

        -- TalkingHeadFrame
        -- hooksecurefunc("TalkingHeadFrame_PlayCurrent", function()
        --     TalkingHeadFrame:ClearAllPoints()
        --     TalkingHeadFrame:SetPoint("CENTER", UIParent, 0, 500)
        --     TalkingHeadFrame:ClearAllPoints()
        -- end)

        -- Unit frames
        PlayerFrame:ClearAllPoints()
        PlayerFrame:SetPoint('CENTER', UIParent, -250, -75)
        PlayerFrame:SetUserPlaced(true)
        TargetFrame:ClearAllPoints()
        TargetFrame:SetPoint('CENTER', UIParent, 250, -75)
        TargetFrame:SetUserPlaced(true)
        FocusFrame:ClearAllPoints()
        FocusFrame:SetPoint('CENTER', UIParent, 350, 50)
        FocusFrame:SetUserPlaced(true)

        -- Action bars
        icub3d_MoveMainActionBar('CENTER', UIParent, -229, -420)
        --icub3d_MoveActionBar('ActionButton', 'CENTER', UIParent, -229, -420)
        icub3d_MoveActionBar('MultiBarRightButton', 'CENTER', UIParent, -480, -462)
        icub3d_MoveActionBar('MultiBarLeftButton', 'CENTER', UIParent, 23, -462)
        icub3d_MoveActionBar('MultiBarBottomRightButton', 'CENTER', UIParent, -480, -504)
        icub3d_MoveActionBar('MultiBarBottomLeftButton', 'CENTER', UIParent, 23, -504)

        -- Extra Action Button
        ExtraActionButton1:ClearAllPoints()
        ExtraActionButton1:SetPoint('CENTER', UIParent, 0, -125)

        -- Remove the macro name from the buttons
        local bars = {
            'ActionButton',
            'MultiBarRightButton',
            'MultiBarLeftButton',
            'MultiBarBottomRightButton',
            'MultiBarBottomLeftButton'
        }
        for _, name in ipairs(bars) do
            for x = 1, 12 do
                _G[name .. x .. 'Name']:SetAlpha(0)
            end
        end
    end
)

-- A helper function that moves the entire action bar to the given
-- point horizontally.
function icub3d_MoveActionBar(name, point, frame, x, y)
    local button = _G[name .. '1']
    button:ClearAllPoints()
    button:SetPoint(point, frame, x, y)
    for i = 2, 12 do
        button = _G[name .. i]
        button:ClearAllPoints()
        button:SetPoint('LEFT', name .. i - 1, 'RIGHT', 6, 0)
    end
end

-- This is a funky way of dealing with how keybinds work in vehicles. We need to
-- take the second half and interleave it with the first half. This means our
-- keybinds need to agree with this interleaving. This row is the only row that
-- does it all normal, then all shift modifier.
function icub3d_MoveMainActionBar(point, frame, x, y)
    local name = "ActionButton"
    local button = _G[name .. '1']
    button:ClearAllPoints()
    button:SetPoint(point, frame, x, y)

    local plus = true
    local funky = 1
    local map = {1, 7, 2, 8, 3, 9, 4, 10, 5, 11, 6, 12}
    for i = 2, 12 do
        button = _G[name .. map[i]]
        button:ClearAllPoints()
        button:SetPoint('LEFT', name .. map[i-1], 'RIGHT', 6, 0)
    end
end