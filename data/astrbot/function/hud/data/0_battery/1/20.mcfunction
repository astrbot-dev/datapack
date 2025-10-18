# 目标层
execute if score #power astrbot.var matches 3 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.74","font":"default"},\
        {"text":"\ue001","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-84","font":"default"},\
    ]
execute if score #power astrbot.var matches 4.. run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.74","font":"default"},\
        {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-84","font":"default"},\
    ]