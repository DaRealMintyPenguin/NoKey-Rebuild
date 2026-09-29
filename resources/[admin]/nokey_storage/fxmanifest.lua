fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'nokey_storage'
author 'NoKeyRP'
description 'PIN protected compensation lockers for Qbox + ox_inventory with integrated BzZz Shop Locker V2 props and vehicle compensation vouchers.'
version '1.4.0'

ui_page 'web/index.html'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

files {
    'web/index.html',
    'web/style.css',
    'web/app.js',
    'web/assets/logo.png',
    'stream/*.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/*.ytyp'

dependencies {
    'ox_lib',
    'oxmysql',
    'ox_inventory',
    'qbx_core',
    'jg-advancedgarages',
    'jg-dealerships'
}
