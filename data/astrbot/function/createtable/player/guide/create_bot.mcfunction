# hint players how to put the bot on the createtable
execute if entity @n[type=minecraft:interaction,tag=astrbot.createtable.interaction, tag=astrbot.createtable.interaction.has_bot,distance=..5] run \
    function custom_hud:actionbar/0 {"text":{"translate":"tips.astrbot.createtable.create_bot", "color":"yellow", with:[{keybind: "key.sneak"},{keybind:"key.use"}]},"time":1}

return 1