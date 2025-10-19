# 目标层
execute if score #x astrbot.var matches 11 if score #random.5 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue040","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]
execute if score #x astrbot.var matches 12.. if score #random.5 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue041","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]

execute if score #x astrbot.var matches 11 if score #random.5 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue140","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]
execute if score #x astrbot.var matches 12.. if score #random.5 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.42","font":"default"},\
        {"text":"\ue141","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-52","font":"default"},\
    ]