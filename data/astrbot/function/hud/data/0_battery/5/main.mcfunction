# 范围
execute if score #power astrbot.var matches 0..10 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue000","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]
execute if score #power astrbot.var matches 1..20 run function astrbot:hud/data/0_battery/5/20
execute if score #power astrbot.var matches 21..40 run function astrbot:hud/data/0_battery/5/40

data modify storage astrobot:hud list append from storage astrobot:hud temp[]