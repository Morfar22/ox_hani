version '1.0.0'
author 'jxmessc0tt'
description ''
repository ''

fx_version 'cerulean'

game { 'gta5' }

server_scripts {
    'config.lua',
    'server/elements.lua',
    'server/main.lua',
    'server/discord.js',
}

lua54 'yes'

escrow_ignore {
    'config.lua',
}
dependency '/assetpacks'