resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

game 'gta5'

description 'Street Races'

version 'legacy'

client_scripts {
    'src/RMenu.lua',
    'src/menu/RageUI.lua',
    'src/menu/Menu.lua',
    'src/menu/MenuController.lua',
    'src/components/*.lua',
    'src/menu/elements/*.lua',
    'src/menu/items/*.lua',
    'src/menu/panels/*.lua',
    'src/menu/panels/*.lua',
    'src/menu/windows/*.lua',
}

dependencies {
	'es_extended',
	'spawnmanager'
}

shared_scripts {
    '@es_extended/imports.lua',
}

server_scripts {
    'config.lua',
    'port_sv.lua',
    'races_sv.lua',
}

client_scripts {
    'config.lua',
    'races_cl.lua',
    'locale.lua',
}
