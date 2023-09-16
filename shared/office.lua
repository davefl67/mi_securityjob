SO = {}

-- player group for job
SO.group = 'bobcatsec'

-- blip for job location
SO.blip = {

    allow = true,

    loc = vec3(912.172, -2121.599, 31.233),

    sprite = 604,

    color = 3,

    scale = 0.7,

    name = 'Bobcat Security'
}

SO.office = {

    job = {

        model = 's_m_m_highsec_01',

        scenario = 'WORLD_HUMAN_DRINKING_CASINO_TERRACE',

        loc = vec4(906.463, -2123.759, 31.230, 354.357)
    },

    veh = {

        model = 'u_m_m_jewelsec_01',
        
        scenario = 'WORLD_HUMAN_SMOKING_CLUBHOUSE',

        loc = vec4(892.450, -2108.867, 31.230, 127.311)
    },

    spn = {

        loc = vec4(890.619, -2100.122, 30.251, 355.902),

        veh1 = { name = 'Security Mesa',        model = 'bsmesa' },

        veh2 = { name = 'Security Fugitive',    model = 'bsfugitive' },

        veh3 = { name = 'Security Stockade',    model = 'stockade2' },
    }
}