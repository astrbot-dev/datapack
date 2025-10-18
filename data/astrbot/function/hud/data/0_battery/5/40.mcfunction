# 衬底层
data modify storage astrobot:hud temp set value \
[\
    {"translate":"space.42","font":"default"},\
    {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
    {"translate":"space.-52","font":"default"},\
]
data modify storage astrobot:hud list append from storage astrobot:hud temp[]
# 目标层
execute if score #power astrbot.var matches 31 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue002","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]
execute if score #power astrbot.var matches 32.. run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue012","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]