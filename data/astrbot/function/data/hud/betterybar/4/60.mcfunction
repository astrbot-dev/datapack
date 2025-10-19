# 目标层
execute if score #x astrbot.var matches 9 if score #random.4 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.50","font":"default"},\
        {"text":"\ue003","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-60","font":"default"},\
    ]
execute if score #x astrbot.var matches 10.. if score #random.4 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.50","font":"default"},\
        {"text":"\ue004","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-60","font":"default"},\
    ]

execute if score #x astrbot.var matches 9 if score #random.4 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.50","font":"default"},\
        {"text":"\ue103","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-60","font":"default"},\
    ]
execute if score #x astrbot.var matches 10.. if score #random.4 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.50","font":"default"},\
        {"text":"\ue104","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-60","font":"default"},\
    ]