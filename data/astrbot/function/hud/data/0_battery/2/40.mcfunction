# 衬底层
data modify storage astrobot:hud temp set value \
[\
    {"translate":"space.66","font":"default"},\
    {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
    {"translate":"space.-76","font":"default"},\
]
data modify storage astrobot:hud list append from storage astrobot:hud temp[]
# 目标层
execute if score #power astrbot.var matches 25 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.66","font":"default"},\
        {"text":"\ue002","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-76","font":"default"},\
    ]
execute if score #power astrbot.var matches 26.. run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.66","font":"default"},\
        {"text":"\ue012","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-76","font":"default"},\
    ]