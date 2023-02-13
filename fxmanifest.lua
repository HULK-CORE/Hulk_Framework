fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'HULK'
description 'Bunch of Multiple Scripts by Hulk'
version '3.1.3'


client_scripts {
    'client/**.lua',
    'config.lua'
  }
  
  server_scripts {
    'server/**.lua',
    '@mysql-async/lib/MySQL.lua'
  }

shared_scripts {
    '@es_extended/imports.lua',
    'config.lua',
    '@ox_lib/init.lua',
    'shared/*.lua'
}

files{
    'locales/**.lua',
}

dependencies {
             '/assetpacks',
             'es_extended',
             'ox_lib'
}