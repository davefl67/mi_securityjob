lib.callback.register('misj:sever:spawn:secvehicle', function(source, vehicle, model, coords)
    local player = Ox.GetPlayer(source)
    vehicle = Ox.CreateVehicle(
        { model = model, owner = player.charid, group = SO.group }, coords)
end)

lib.callback.register('misj:sever:spawn:bkpvehicle', function(source, vehicle, model, coords)
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