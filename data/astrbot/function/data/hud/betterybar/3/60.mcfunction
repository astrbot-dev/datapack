# 目标层
execute if score #x astrbot.var matches 7 if score #random.3 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.58","font":"default"},\
        {"text":"\ue003","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-68","font":"default"},\
    ]
execute if score #x astrbot.var matches 8.. if score #random.3 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.58","font":"default"},\
        {"text":"\ue004","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-68","font":"default"},\
    ]

execute if score #x astrbot.var matches 7 if score #random.3 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.58","font":"default"},\
        {"text":"\ue103","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-68","font":"default"},\
    ]
execute if score #x astrbot.var matches 8.. if score #random.3 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.58","font":"default"},\
        {"text":"\ue104","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-68","font":"default"},\
    ]