fx_version 'adamant'

author 'ItzCelyrian'
game 'gta5'
description 'ESX Basic Needs - But just configurable'
version '1.0.0'

shared_script '@es_extended/imports.lua'

server_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'server/main.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'client/main.lua'
}

dependencies {
    'es_extended',
    'esx_status'
}
