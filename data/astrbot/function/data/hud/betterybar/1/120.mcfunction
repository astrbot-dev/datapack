# 目标层
execute if score #x astrbot.var matches 3 if score #random.1 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.74","font":"default"},\
        {"text":"\ue033","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-84","font":"default"},\
    ]
execute if score #x astrbot.var matches 4.. if score #random.1 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.74","font":"default"},\
        {"text":"\ue034","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-84","font":"default"},\
    ]

execute if score #x astrbot.var matches 3 if score #random.1 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.74","font":"default"},\
        {"text":"\ue133","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-84","font":"default"},\
    ]
execute if score #x astrbot.var matches 4.. if score #random.1 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.74","font":"default"},\
        {"text":"\ue134","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-84","font":"default"},\
    ]