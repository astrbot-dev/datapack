# 目标层
execute if score #x astrbot.var matches 15 if score #random.7 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.26","font":"default"},\
        {"text":"\ue023","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-36","font":"default"},\
    ]
execute if score #x astrbot.var matches 16.. if score #random.7 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.26","font":"default"},\
        {"text":"\ue024","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-36","font":"default"},\
    ]

execute if score #x astrbot.var matches 15 if score #random.7 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.26","font":"default"},\
        {"text":"\ue123","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-36","font":"default"},\
    ]
execute if score #x astrbot.var matches 16.. if score #random.7 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.26","font":"default"},\
        {"text":"\ue124","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-36","font":"default"},\
    ]