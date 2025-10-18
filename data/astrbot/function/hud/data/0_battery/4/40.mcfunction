# 衬底层
data modify storage astrobot:hud temp set value \
[\
    {"translate":"space.50","font":"default"},\
    {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
    {"translate":"space.-60","font":"default"},\
]
data modify storage astrobot:hud list append from storage astrobot:hud temp[]
# 目标层
execute if score #power astrbot.var matches 29 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.50","font":"default"},\
        {"text":"\ue002","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-60","font":"default"},\
    ]
execute if score #power astrbot.var matches 30.. run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.50","font":"default"},\
        {"text":"\ue012","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-60","font":"default"},\
    ]