RegisterNetEvent('misj:sever:spawn:vehicle')
AddEventHandler('misj:sever:spawn:vehicle', function(spwnv, model, coords)
    spwnv = CreateVehicle(model, coords.x, coords.y, coords.z, coords.w, true, false)
    SetVehicleDirtLevel(spwnv, 0.0)
end)

RegisterNetEvent('misj:sever:spawn:ped')
AddEventHandler('misj:sever:spawn:ped', function(ped, model, coords)
    ped = CreatePed(1, model, coords.x, coords.y, coords.z-1, coords.w, true, false)
end)

RegisterNetEvent('misj:sever:spawn:backup')
AddEventHandler('misj:sever:spawn:backup', function(secv, model, ped, coords)
    secv = CreateVehicle(model, coords.x, coords.y, coords.z, coords.w, true, false)
    CreatePedInsideVehicle(secv, ped, model, -1, true, true)
end)



lib.callback.register('misj:sever:spawn:secvehicle', function(source, vehicle, model, coords)
    local player = Ox.GetPlayer(source)
    vehicle = Ox.CreateVehicle(
        { model = model, owner = player.charid, group = SO.group }, coords)
end)

lib.callback.register('misj:sever:spawn:secvehicle', function(source, vehicle, model, coords)
    local player = Ox.GetPlayer(source)
    vehicle = Ox.CreateVehicle(
        { model = model, group = SO.group }, coords)
end)

lib.callback.register('misj:sever:spawn:regvehicle', function(source, vehicle, model, coords)
    vehicle = Ox.CreateVehicle(
        { model = model }, coords)
end)

lib.callback.register('misj:sever:spawn:ped', function(source, ped, model, coords)
    ped = CreatePed(1, model, coords.x, coords.y, coords.z-1, coords.w, true, false)
end)