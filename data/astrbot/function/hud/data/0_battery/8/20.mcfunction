# 目标层
execute if score #power astrbot.var matches 17 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.18","font":"default"},\
        {"text":"\ue001","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-28","font":"default"},\
    ]
execute if score #power astrbot.var matches 18.. run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.18","font":"default"},\
        {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-28","font":"default"},\
    ]