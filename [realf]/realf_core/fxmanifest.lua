fx_version 'adamant'
game 'gta5'
lua54 'on'

client_scripts {
    'client/*'
}
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*'
}
shared_scripts {
    '@ox_lib/init.lua',
    'shared/*'
}