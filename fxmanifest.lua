fx_version 'cerulean'
game 'gta5'

author 'KingZa'
description 'za_notify - NPC Dialogue Subtitle and Notifications'
version '1.0.0'

ui_page 'html/index.html'

client_scripts {
    'client/main.lua'
}

files {
    'html/index.html',
    'html/script.js',
    'html/style.css',
    'html/sound.mp3'
}

exports {
    'ShowSubtitle'
}