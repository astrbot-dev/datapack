execute if score @s astrbot.player_power matches 21..40 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue042","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score @s astrbot.player_power matches 41..60 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue005","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score @s astrbot.player_power matches 61..80 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue015","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
execute if score @s astrbot.player_power matches 81..100 run \
    data modify storage custom_hud:io temp set value \
    [\
        {"translate":"space.92","font":"default"},\
        {"text":"\ue025","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
        {"translate":"space.-102","font":"default"},\
    ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]