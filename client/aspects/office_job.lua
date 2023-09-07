local isactive = SO.office.job.active
local uni

local prep = function(ped)
    TaskStartScenarioInPlace(ped, SO.office.job.scenario, 0, true)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
end

local loadcheckin = function()
    if not isactive then return end
    if isactive then
        local model = lib.requestModel(SO.office.job.model, 300)
        local coords = SO.office.job.loc
        uni = CreatePed(1, model, coords.x, coords.y, coords.z-1, coords.w, true, false)
        prep(uni)

        local checked = false
            local options = {
                {
                    name = 'sec_getjob',
                    label = 'Request work',
                    icon = 'fa-solid fa-user-clock',
                    groups = SO.group,
                    canInteract = function(_, distance)
                        return distance < 1.5
                    end,
                    onSelect = function()
                        -- get a job
                    end
                },
            }
            exports.ox_target:addLocalEntity(uni, options)
    end
end

RegisterNetEvent('misj:load:workped')
AddEventHandler('misj:load:workped', function()
    loadcheckin()
end)