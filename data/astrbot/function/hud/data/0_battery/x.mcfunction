execute if score #power astrbot.var matches 0 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue020","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score #power astrbot.var matches 1..20 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score #power astrbot.var matches 21..40 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue022","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score #power astrbot.var matches 41..60 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue023","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score #power astrbot.var matches 61..80 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue024","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score #power astrbot.var matches 81..100 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue025","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score #power astrbot.var matches 101..120 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue026","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score #power astrbot.var matches 121..140 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue027","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score #power astrbot.var matches 141..160 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue028","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score #power astrbot.var matches 161..180 run \
    data modify storage astrobot:hud temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue029","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ] 
data modify storage astrobot:hud list append from storage astrobot:hud temp[]