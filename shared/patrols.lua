PO = {}

PO.securitypatrol = {
    -- time in minutes to patrol property zone
    time = 3,

    [1] = {
        -- pay for locations
        pay = math.random(100, 150),
        -- name of location
        name = '2091 Lake Vinewood',
        -- location of task
        loc = vec3(-117.705, 984.550, 235.753),
    }
}

PO.businessdevice = {

    [1] = {
        loc = vec3(0,0,0)
    }
}

PO.homedevice = {

    [1] = {
        -- pay for locations
        pay = math.random(400, 500),
        -- name of location
        name = '2091 Lake Vinewood',
        -- location of task
        loc = vec3(-117.705, 984.550, 235.753),
        -- alarm locations on property
        alarm1 = vec4(-114.248, 998.749, 235.757, 20.527),
        alarm2 = vec4(-93.129, 942.445, 233.028, 167.331),
        alarm3 = vec4(-69.792, 988.777, 234.398, 147.616),
        alarm4 = vec4(-75.467, 1010.629, 234.397, 322.808),
        -- possible spawn locations of vagrants
        vagrants = {
            [1] = vec4(-87.177, 1023.522, 234.772, 276.964),
            [2] = vec4(-75.488, 943.276, 232.808, 211.303),
            [3] = vec4(-105.751, 1006.418, 235.759, 69.518)
        },

        backup = {
            -- vehicle to spawn for backup
            veh ='bsmesa',
            -- spawn location for security backup
            spawn = vec4(271.981, 950.258, 211.015, 98.025),
            -- destination location for security backup
            dest = vec4(-130.949, 991.911, 235.344, 355.705)
        }
    }
}