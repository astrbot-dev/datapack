# 目标层
execute if score #x astrbot.var matches 17 if score #random.8 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.18","font":"default"},\
        {"text":"\ue003","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-28","font":"default"},\
    ]
execute if score #x astrbot.var matches 18.. if score #random.8 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.18","font":"default"},\
        {"text":"\ue004","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-28","font":"default"},\
    ]

execute if score #x astrbot.var matches 17 if score #random.8 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.18","font":"default"},\
        {"text":"\ue103","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-28","font":"default"},\
    ]
execute if score #x astrbot.var matches 18.. if score #random.8 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.18","font":"default"},\
        {"text":"\ue104","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-28","font":"default"},\
    ]