# 范围
execute if score #power astrbot.var matches 0..12 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.34","font":"default"},\
        {"text":"\ue000","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-44","font":"default"},\
    ]
execute if score #power astrbot.var matches 1..20 run function astrbot:hud/data/0_battery/6/20
execute if score #power astrbot.var matches 21..40 run function astrbot:hud/data/0_battery/6/40

data modify storage astrobot:hud list append from storage astrobot:hud temp[]