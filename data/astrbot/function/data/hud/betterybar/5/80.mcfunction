# 目标层
execute if score #x astrbot.var matches 11 if score #random.5 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue013","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]
execute if score #x astrbot.var matches 12.. if score #random.5 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue014","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]

execute if score #x astrbot.var matches 11 if score #random.5 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue113","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]
execute if score #x astrbot.var matches 12.. if score #random.5 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue114","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]