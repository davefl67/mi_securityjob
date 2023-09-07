SO = {}

-- player group for job
SO.groups = {'bobcatsec'}

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
        active = true,
        model = 's_m_m_highsec_01',
        scenario = 'WORLD_HUMAN_DRINKING_CASINO_TERRACE',
        loc = vec4(906.463, -2123.759, 31.230, 354.357)
    },
    veh = {
        active = true,
        model = 'u_m_m_jewelsec_01',
        scenario = 'WORLD_HUMAN_SMOKING_CLUBHOUSE',
        loc = vec4(892.450, -2108.867, 31.230, 127.311)
    }
}