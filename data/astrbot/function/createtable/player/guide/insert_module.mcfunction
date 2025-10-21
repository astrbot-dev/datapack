# hint players how to put the bot on the createtable
execute if entity @n[type=interaction,tag=astrbot.createtable.slot,distance=..5] run \
    function custom_hud:actionbar/0 {"text":{"translate":"tips.astrbot.createtable.insert_module","color":"yellow", with:[{keybind:"key.use"}]},"time":1}

return 1