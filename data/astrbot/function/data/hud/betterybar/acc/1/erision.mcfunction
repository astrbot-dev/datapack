execute if score #x astrbot.var matches 1 if score #random.0 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.82","font":"default"},\
            {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-92","font":"default"},\
        ]
execute if score #x astrbot.var matches 1 if score #random.0 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.82","font":"default"},\
            {"text":"\ue111","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-92","font":"default"},\
        ]
execute if score #x astrbot.var matches 2.. if score #random.0 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.82","font":"default"},\
            {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-92","font":"default"},\
        ]
execute if score #x astrbot.var matches 2.. if score #random.0 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.82","font":"default"},\
            {"text":"\ue121","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-92","font":"default"},\
        ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]

execute if score #x astrbot.var matches 3 if score #random.1 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.74","font":"default"},\
            {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-84","font":"default"},\
        ]
execute if score #x astrbot.var matches 3 if score #random.1 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.74","font":"default"},\
            {"text":"\ue111","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-84","font":"default"},\
        ]
execute if score #x astrbot.var matches 4.. if score #random.1 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.74","font":"default"},\
            {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-84","font":"default"},\
        ]
execute if score #x astrbot.var matches 4.. if score #random.1 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.74","font":"default"},\
            {"text":"\ue121","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-84","font":"default"},\
        ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]

execute if score #x astrbot.var matches 5 if score #random.2 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.66","font":"default"},\
            {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-76","font":"default"},\
        ]
execute if score #x astrbot.var matches 5 if score #random.2 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.66","font":"default"},\
            {"text":"\ue111","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-76","font":"default"},\
        ]
execute if score #x astrbot.var matches 6.. if score #random.2 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.66","font":"default"},\
            {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-76","font":"default"},\
        ]
execute if score #x astrbot.var matches 6.. if score #random.2 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.66","font":"default"},\
            {"text":"\ue121","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-76","font":"default"},\
        ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]

execute if score #x astrbot.var matches 7 if score #random.3 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.58","font":"default"},\
            {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-68","font":"default"},\
        ]
execute if score #x astrbot.var matches 7 if score #random.3 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.58","font":"default"},\
            {"text":"\ue111","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-68","font":"default"},\
        ]
execute if score #x astrbot.var matches 8.. if score #random.3 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.58","font":"default"},\
            {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-68","font":"default"},\
        ]
execute if score #x astrbot.var matches 8.. if score #random.3 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.58","font":"default"},\
            {"text":"\ue121","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-68","font":"default"},\
        ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]

execute if score #x astrbot.var matches 9 if score #random.4 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.50","font":"default"},\
            {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-60","font":"default"},\
        ]
execute if score #x astrbot.var matches 9 if score #random.4 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.50","font":"default"},\
            {"text":"\ue111","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-60","font":"default"},\
        ]
execute if score #x astrbot.var matches 10.. if score #random.4 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.50","font":"default"},\
            {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-60","font":"default"},\
        ]
execute if score #x astrbot.var matches 10.. if score #random.4 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.50","font":"default"},\
            {"text":"\ue121","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-60","font":"default"},\
        ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]

execute if score #x astrbot.var matches 11 if score #random.5 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.42","font":"default"},\
            {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-52","font":"default"},\
        ]
execute if score #x astrbot.var matches 11 if score #random.5 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.42","font":"default"},\
            {"text":"\ue111","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-52","font":"default"},\
        ]
execute if score #x astrbot.var matches 12.. if score #random.5 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.42","font":"default"},\
            {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-52","font":"default"},\
        ]
execute if score #x astrbot.var matches 12.. if score #random.5 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.42","font":"default"},\
            {"text":"\ue121","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-52","font":"default"},\
        ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]

execute if score #x astrbot.var matches 13 if score #random.6 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.34","font":"default"},\
            {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-44","font":"default"},\
        ]
execute if score #x astrbot.var matches 13 if score #random.6 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.34","font":"default"},\
            {"text":"\ue111","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-44","font":"default"},\
        ]
execute if score #x astrbot.var matches 14.. if score #random.6 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.34","font":"default"},\
            {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-44","font":"default"},\
        ]
execute if score #x astrbot.var matches 14.. if score #random.6 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.34","font":"default"},\
            {"text":"\ue121","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-44","font":"default"},\
        ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]

execute if score #x astrbot.var matches 15 if score #random.7 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.26","font":"default"},\
            {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-36","font":"default"},\
        ]
execute if score #x astrbot.var matches 15 if score #random.7 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.26","font":"default"},\
            {"text":"\ue111","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-36","font":"default"},\
        ]
execute if score #x astrbot.var matches 16.. if score #random.7 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.26","font":"default"},\
            {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-36","font":"default"},\
        ]
execute if score #x astrbot.var matches 16.. if score #random.7 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.26","font":"default"},\
            {"text":"\ue121","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-36","font":"default"},\
        ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]

execute if score #x astrbot.var matches 17 if score #random.8 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.18","font":"default"},\
            {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-28","font":"default"},\
        ]
execute if score #x astrbot.var matches 17 if score #random.8 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.18","font":"default"},\
            {"text":"\ue111","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-28","font":"default"},\
        ]
execute if score #x astrbot.var matches 18.. if score #random.8 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.18","font":"default"},\
            {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-28","font":"default"},\
        ]
execute if score #x astrbot.var matches 18.. if score #random.8 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.18","font":"default"},\
            {"text":"\ue121","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-28","font":"default"},\
        ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]

execute if score #x astrbot.var matches 19 if score #random.9 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.10","font":"default"},\
            {"text":"\ue011","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-20","font":"default"},\
        ]
execute if score #x astrbot.var matches 19 if score #random.9 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.10","font":"default"},\
            {"text":"\ue111","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-20","font":"default"},\
        ]
execute if score #x astrbot.var matches 20.. if score #random.9 astrbot.var matches 0 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.10","font":"default"},\
            {"text":"\ue021","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-20","font":"default"},\
        ]
execute if score #x astrbot.var matches 20.. if score #random.9 astrbot.var matches 1 run \
    data modify storage custom_hud:io temp set value \
        [\
            {"translate":"space.10","font":"default"},\
            {"text":"\ue121","font":"astrbot:betterybar","shadow_color":[0,0,0,0]},\
            {"translate":"space.-20","font":"default"},\
        ]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]