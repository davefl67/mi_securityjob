-- [blip setting]
local function stationblip()
    local sb = nil
    local pb = SO.blip
    local crds = SO.blip.loc
    sb = AddBlipForCoord(crds.x, crds.y, crds.z)
    SetBlipSprite(sb, pb.sprite)
    SetBlipDisplay(sb, 4)
    SetBlipColour(sb, pb.color)
    SetBlipScale(sb, pb.scale)
    SetBlipAsShortRange(sb, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(pb.name)
    EndTextCommandSetBlipName(sb)
end

CreateThread(function()
    if SO.blip.allow then
        stationblip()
        Citizen.Wait(1000)
    end
    if true then
        TriggerEvent('misj:load:workped', -1)
        TriggerEvent('misj:load:vehped', -1)
        Wait(1000)
    end

end)
