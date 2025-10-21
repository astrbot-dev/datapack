advancement revoke @s only astrbot:createtable/guide
# 改装台指引文本
execute if entity @n[type=minecraft:marker,tag=astrbot.createtable,distance=..5] run \
    function custom_hud:actionbar/0 {"text":{"translate":"tips.astrbot.createtable.guide","color":"yellow",with:[{keybind:"key.use"}]},"time":20}