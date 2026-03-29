-- =========================
-- SETTINGS
-- =========================
local recoilTable = {
    [`WEAPON_PISTOL`] = 0.07,
    [`WEAPON_COMBATPISTOL`] = 0.08,
    [`WEAPON_APPISTOL`] = 0.09,
    [`WEAPON_SMG`] = 0.1,
    [`WEAPON_ASSAULTRIFLE`] = 0.12,
    [`WEAPON_CARBINERIFLE`] = 0.14,
    [`WEAPON_PUMPSHOTGUN`] = 0.18
}

local isLowReady = false

-- =========================
-- REALISTIC RECOIL (SAFE)
-- =========================
CreateThread(function()
    while true do
        Wait(0)

        local ped = PlayerPedId()

        if IsPedShooting(ped) then
            local _, weapon = GetCurrentPedWeapon(ped, true)
            local recoil = recoilTable[weapon] or 0.1

            -- vetëm pak shake (real feel)
            ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", recoil)
        end
    end
end)

-- =========================
-- VEHICLE AIM = FIRST PERSON
-- =========================
CreateThread(function()
    while true do
        Wait(0)

        local ped = PlayerPedId()

        if IsPedInAnyVehicle(ped, false) then
            if IsPlayerFreeAiming(PlayerId()) then
                SetFollowVehicleCamViewMode(4)
            else
                SetFollowVehicleCamViewMode(0)
            end
        end
    end
end)

-- =========================
-- LOW READY (RUN)
-- =========================
CreateThread(function()
    while true do
        Wait(120)

        local ped = PlayerPedId()

        if not IsPedInAnyVehicle(ped, false) then
            local running = IsPedRunning(ped) or IsPedSprinting(ped)

            if running and not isLowReady then
                SetPedUsingActionMode(ped, false, -1, "DEFAULT_ACTION")
                isLowReady = true

            elseif not running and isLowReady then
                SetPedUsingActionMode(ped, true, -1, "DEFAULT_ACTION")
                isLowReady = false
            end
        end
    end
end)

-- =========================
-- AIM CAMERA (LIGHT ZOOM)
-- =========================
CreateThread(function()
    while true do
        Wait(0)

        local ped = PlayerPedId()

        if not IsPedInAnyVehicle(ped, false) then
            if IsPlayerFreeAiming(PlayerId()) then
                SetFollowPedCamViewMode(1) -- pak zoom
            else
                SetFollowPedCamViewMode(0)
            end
        end
    end
end)

-- =========================
-- VERY LIGHT AIM SWAY
-- =========================
CreateThread(function()
    while true do
        Wait(200)

        local ped = PlayerPedId()

        if not IsPedInAnyVehicle(ped, false) then
            if IsPlayerFreeAiming(PlayerId()) then
                ShakeGameplayCam("HAND_SHAKE", 0.01)
            end
        end
    end
end)