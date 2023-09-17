-- FX Information
fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

-- Resource Information
name 'mi_job_security'
author 'MI_Agimir'
version '1.0.0'
repository 'https://github.com/MIAgimir/mi_job_security'
description 'that security job you wanted'

-- Manifest
shared_scripts {
	'@ox_lib/init.lua',
    'bridge/*.lua',
    'shared/office.lua',
    'shared/patrols.lua',
	'shared/config.lua'
}

client_scripts {
    '@ox_core/imports/client.lua',
    'client/aspects/*.lua',
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@ox_core/imports/server.lua',
    'server/events.lua',
    'server/version.lua'
}

dependencies {
    'ox_inventory',
    'ox_lib',
    'ox_target'
}